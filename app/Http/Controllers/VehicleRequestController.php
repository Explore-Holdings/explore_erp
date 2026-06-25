<?php

namespace App\Http\Controllers;

use App\Models\TransportService;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Carbon\Carbon;
use App\Exports\VehicleRequestExport;
use Maatwebsite\Excel\Facades\Excel;

class VehicleRequestController extends Controller
{
    private function makePhotoUrl($path)
    {
        if (!$path) {
            return null;
        }

        $path = str_replace('\\', '/', $path);
        $path = ltrim($path, '/');

        return asset('mobile-api/' . $path);
    }

    public function dashboard(Request $request)
    {
        $today = Carbon::today();
        $vehicleNo = $request->get('vehicle_no');

        $base = TransportService::with(['tripDetails', 'employee']);

        $format = function ($ts, $attemptNo = null) {
            $start = $ts->assigned_start_at ? Carbon::parse($ts->assigned_start_at) : null;
            $end = $ts->assigned_end_at ? Carbon::parse($ts->assigned_end_at) : null;

            $latestTrip = $ts->tripDetails
                ?->sortByDesc('trip_start_datetime')
                ->values()
                ->first();

            return [
                'vehicle_request_id' => $ts->id,
                'type' => $ts->type,
                'vehicle_no' => $ts->vehicle_no,

                'employee_name' => $ts->employee?->preferred_name
                    ?? $ts->employee?->name
                    ?? ($ts->employee_id ? ('Employee #' . $ts->employee_id) : ''),

                'employee_id' => $ts->employee_id,
                'manager_id' => $ts->manager_id,
                'chauffer_name' => $ts->chauffer_name,
                'chauffer_phone' => $ts->chauffer_phone ?? null,

                'attempts_count' => $attemptNo,

                'start_date' => $start?->toDateString(),
                'end_date' => $end?->toDateString(),
                'is_one_day' => $start
                    ? (!$end || $start->toDateString() === $end->toDateString())
                    : true,

                'reason' => $ts->note,
                'start_destinations' => $ts->pickup_location,
                'destinations' => $ts->dropoff_location,
                'trip_code' => $ts->trip_code,
                'status' => $ts->status,
                'reject_reason' => $ts->reject_reason,
                'created_at' => optional($ts->created_at)->toDateString(),

                'trip_details' => $latestTrip ? [
                    'trip_detail_id' => $latestTrip->trip_detail_id,
                    'trip_start_datetime' => optional($latestTrip->trip_start_datetime)->toDateTimeString(),
                    'trip_end_datetime' => optional($latestTrip->trip_end_datetime)->toDateTimeString(),
                    'trip_start_odometer' => $latestTrip->trip_start_odometer,
                    'trip_end_odometer' => $latestTrip->trip_end_odometer,
                    'trip_start_odometer_photo' => $this->makePhotoUrl($latestTrip->trip_start_odometer_photo),
                    'trip_end_odometer_photo' => $this->makePhotoUrl($latestTrip->trip_end_odometer_photo),
                    'start_trip_fuel' => $latestTrip->start_trip_fuel,
                    'end_trip_fuel' => $latestTrip->end_trip_fuel,
                ] : null,
            ];
        };

        $mapWithRunningAttempt = function ($collection) use ($format) {
            $counters = [];

            return $collection->map(function ($ts) use (&$counters, $format) {
                $employeeId = $ts->employee_id ?? 'guest';
                $type = strtolower($ts->type ?? 'unknown');
                $key = $employeeId . '|' . $type;

                if (in_array($ts->status, ['APPROVED', 'COMPLETED'])) {
                    $counters[$key] = ($counters[$key] ?? 0) + 1;
                    $attemptNo = $counters[$key];
                } else {
                    $attemptNo = null;
                }

                return $format($ts, $attemptNo);
            })->values();
        };
        
        $latestFirst = function ($query) use ($mapWithRunningAttempt) {
            $records = $query
                ->orderBy('assigned_start_at', 'asc')
                ->orderBy('id', 'asc')
                ->get();

            return $mapWithRunningAttempt($records)
                ->sortByDesc(function ($item) {
                    return $item['start_date'] ?? '0000-00-00';
                })
                ->values();
        };

        $allRequests = $latestFirst(clone $base);

        $vehiclesToBeOutToday = $latestFirst(
            (clone $base)
                ->whereIn('status', ['ASSIGNED', 'START_TRIP', 'IN_PROGRESS'])
                ->whereDate('assigned_start_at', $today)
        );

        $assignedRequests = $latestFirst(
            (clone $base)->where('status', 'ASSIGNED')
        );

        $startTripRequests = $latestFirst(
            (clone $base)->where('status', 'START_TRIP')
        );

        $inProgressRequests = $latestFirst(
            (clone $base)->where('status', 'IN_PROGRESS')
        );

        $completedRequests = $latestFirst(
            (clone $base)->where('status', 'COMPLETED')
        );

        $currentTrips = collect();
        $pastTrips = collect();

        if ($vehicleNo) {
            $searched = $latestFirst(
                (clone $base)->where('vehicle_no', 'LIKE', "%{$vehicleNo}%")
            );

            $currentTrips = $searched
                ->filter(fn ($x) => $x['start_date'] && Carbon::parse($x['start_date'])->gte($today))
                ->values();

            $pastTrips = $searched
                ->filter(fn ($x) => $x['start_date'] && Carbon::parse($x['start_date'])->lt($today))
                ->values();
        }

        $totalRequests = TransportService::count();
        $assignedCount = TransportService::where('status', 'ASSIGNED')->count();
        $startTripCount = TransportService::where('status', 'START_TRIP')->count();
        $inProgressCount = TransportService::where('status', 'IN_PROGRESS')->count();
        $completedCount = TransportService::where('status', 'COMPLETED')->count();

        return Inertia::render('HRMS/VehicleRequestDashboard', [
            'allRequests' => $allRequests,
            'vehiclesToBeOutToday' => $vehiclesToBeOutToday,
            'assignedRequests' => $assignedRequests,
            'startTripRequests' => $startTripRequests,
            'inProgressRequests' => $inProgressRequests,
            'completedRequests' => $completedRequests,
            'searchedVehicle' => $vehicleNo,
            'currentTrips' => $currentTrips,
            'pastTrips' => $pastTrips,
            'stats' => [
                'totalRequests' => $totalRequests,
                'assigned' => $assignedCount,
                'startTrip' => $startTripCount,
                'inProgress' => $inProgressCount,
                'completed' => $completedCount,
                'vehiclesToBeOutToday' => $vehiclesToBeOutToday->count(),
            ],
        ]);
    }

    public function export(Request $request)
    {
        $today = Carbon::today();
        $status = strtoupper($request->get('status', 'ALL'));
        $type = strtolower($request->get('type', ''));
        $q = strtolower(trim($request->get('q', '')));

        // date filter inputs
        $dateFilter = strtoupper($request->get('date_filter', 'ALL'));
        $fromDate = $request->get('from_date');
        $toDate = $request->get('to_date');

        $base = TransportService::with(['tripDetails', 'employee']);

        $format = function ($ts, $attemptNo = null) {
            $start = $ts->assigned_start_at ? Carbon::parse($ts->assigned_start_at) : null;
            $end = $ts->assigned_end_at ? Carbon::parse($ts->assigned_end_at) : null;

            $latestTrip = $ts->tripDetails
                ?->sortByDesc('trip_start_datetime')
                ->values()
                ->first();

            return [
                'vehicle_request_id' => $ts->id,
                'type' => $ts->type,
                'vehicle_no' => $ts->vehicle_no,
                'employee_name' => $ts->employee?->preferred_name
                    ?? $ts->employee?->name
                    ?? ($ts->employee_id ? ('Employee #' . $ts->employee_id) : ''),
                'employee_id' => $ts->employee_id,
                'manager_id' => $ts->manager_id,
                'chauffer_name' => $ts->chauffer_name,
                'chauffer_phone' => $ts->chauffer_phone ?? null,
                'attempts_count' => $attemptNo,
                'start_date' => $start?->toDateString(),
                'end_date' => $end?->toDateString(),
                'is_one_day' => $start
                    ? (!$end || $start->toDateString() === $end->toDateString())
                    : true,
                'reason' => $ts->note,
                'start_destinations' => $ts->pickup_location,
                'destinations' => $ts->dropoff_location,
                'trip_code' => $ts->trip_code,
                'status' => $ts->status,
                'reject_reason' => $ts->reject_reason,
                'created_at' => optional($ts->created_at)->toDateString(),
                'trip_details' => $latestTrip ? [
                    'trip_detail_id' => $latestTrip->trip_detail_id,
                    'trip_start_datetime' => optional($latestTrip->trip_start_datetime)->toDateTimeString(),
                    'trip_end_datetime' => optional($latestTrip->trip_end_datetime)->toDateTimeString(),
                    'trip_start_odometer' => $latestTrip->trip_start_odometer,
                    'trip_end_odometer' => $latestTrip->trip_end_odometer,
                    'trip_start_odometer_photo' => $this->makePhotoUrl($latestTrip->trip_start_odometer_photo),
                    'trip_end_odometer_photo' => $this->makePhotoUrl($latestTrip->trip_end_odometer_photo),
                    'start_trip_fuel' => $latestTrip->start_trip_fuel,
                    'end_trip_fuel' => $latestTrip->end_trip_fuel,
                ] : null,
            ];
        };

        $mapWithRunningAttempt = function ($collection) use ($format) {
            $counters = [];

            return $collection->map(function ($ts) use (&$counters, $format) {
                $employeeId = $ts->employee_id ?? 'guest';
                $tripType = strtolower($ts->type ?? 'unknown');
                $key = $employeeId . '|' . $tripType;

                if (in_array($ts->status, ['APPROVED', 'COMPLETED'])) {
                    $counters[$key] = ($counters[$key] ?? 0) + 1;
                    $attemptNo = $counters[$key];
                } else {
                    $attemptNo = null;
                }

                return $format($ts, $attemptNo);
            })->values();
        };

        $records = $base
            ->orderBy('assigned_start_at', 'asc')
            ->orderBy('id', 'asc')
            ->get();

        $allRequests = $mapWithRunningAttempt($records)
            ->sortByDesc(fn ($item) => $item['start_date'] ?? '0000-00-00')
            ->values();

        $filtered = $allRequests
            ->filter(function ($r) use ($status, $today) {
                if ($status === 'ALL') return true;

                if ($status === 'OUT_TODAY') {
                    if (!$r['start_date']) return false;
                    $startDate = Carbon::parse($r['start_date'])->startOfDay();
                    return $startDate->equalTo($today);
                }

                if ($status === 'IN_PROGRESS') {
                    if (strtolower($r['status'] ?? '') !== 'in_progress') return false;
                    if ($r['end_date']) {
                        $endDate = Carbon::parse($r['end_date'])->startOfDay();
                        if ($endDate->lt($today)) return false;
                    }
                    return true;
                }

                if ($status === 'INCOMPLETE_TRIP') {
                    if (strtolower($r['status'] ?? '') !== 'in_progress') return false;
                    if (!$r['end_date']) return false;
                    $endDate = Carbon::parse($r['end_date'])->startOfDay();
                    return $endDate->lt($today);
                }

                return strtoupper($r['status'] ?? '') === $status;
            })
            ->filter(function ($r) use ($type) {
                if (!$type) return true;
                return strtolower($r['type'] ?? '') === $type;
            })
            ->filter(function ($r) use ($q) {
                if (!$q) return true;

                $fields = strtolower(implode(' ', array_filter([
                    $r['vehicle_no'] ?? '',
                    $r['trip_code'] ?? '',
                    $r['type'] ?? '',
                    $r['employee_name'] ?? '',
                    $r['chauffer_name'] ?? '',
                    $r['destinations'] ?? '',
                ])));

                return str_contains($fields, $q);
            })
            ->filter(function ($r) use ($dateFilter, $fromDate, $toDate, $today) {
                if (empty($r['start_date'])) return false;

                $date = Carbon::parse($r['start_date'])->startOfDay();

                if ($dateFilter === 'ALL') return true;
                if ($dateFilter === 'TODAY') return $date->equalTo($today);

                if ($dateFilter === 'WEEK') {
                    return $date->between(
                        $today->copy()->startOfWeek(Carbon::MONDAY),
                        $today->copy()->endOfWeek(Carbon::SUNDAY)
                    );
                }

                if ($dateFilter === 'MONTH') {
                    return $date->between(
                        $today->copy()->startOfMonth(),
                        $today->copy()->endOfMonth()
                    );
                }

                if ($dateFilter === 'YEAR') {
                    return $date->between(
                        $today->copy()->startOfYear(),
                        $today->copy()->endOfYear()
                    );
                }

                if ($dateFilter === 'CUSTOM') {
                    $from = $fromDate ? Carbon::parse($fromDate)->startOfDay() : null;
                    $to = $toDate ? Carbon::parse($toDate)->endOfDay() : null;

                    if ($from && $to) return $date->between($from, $to);
                    if ($from) return $date->gte($from);
                    if ($to) return $date->lte($to);

                    return true;
                }

                return true;
            })
            ->values();

        $filename = 'vehicle_requests_' . now()->format('Ymd_His') . '.xlsx';

        return Excel::download(new VehicleRequestExport($filtered), $filename);
    }
}
<?php

namespace App\Http\Controllers;

use App\Models\EmployeeAttendance;
use App\Models\Employee;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Carbon\Carbon;

class EmployeeAttendanceController extends Controller
{
    private function buildAttendanceQuery(Request $request)
    {
        $query = EmployeeAttendance::query()
            ->latest('effective_date')
            ->latest('id');

        $filter = $request->get('filter', 'all');
        $startDate = $request->get('start_date');
        $endDate = $request->get('end_date');
        $singleDate = $request->get('date');

        if ($filter === 'today') {
            $query->whereDate('effective_date', Carbon::today()->toDateString());
        } elseif ($filter === 'this_month') {
            $query->whereBetween('effective_date', [
                Carbon::now()->startOfMonth()->toDateString(),
                Carbon::now()->endOfMonth()->toDateString(),
            ]);
        } elseif ($filter === 'custom' || $startDate || $endDate || $singleDate) {
            if ($singleDate) {
                $query->whereDate('effective_date', $singleDate);
            } elseif ($startDate && $endDate) {
                if ($startDate > $endDate) {
                    [$startDate, $endDate] = [$endDate, $startDate];
                }
                $query->whereBetween('effective_date', [$startDate, $endDate]);
            } elseif ($startDate) {
                $query->whereDate('effective_date', '>=', $startDate);
            } elseif ($endDate) {
                $query->whereDate('effective_date', '<=', $endDate);
            }
        }

        return $query;
    }

    public function index(Request $request)
    {
        $query = $this->buildAttendanceQuery($request);
        $attendance = $query->get();

        $employeeNames = Employee::query()
            ->whereIn('employee_code', $attendance->pluck('employee_code')->filter()->values())
            ->get(['employee_code', 'preferred_name', 'full_name'])
            ->mapWithKeys(function ($employee) {
                return [
                    (string) $employee->employee_code => $employee->preferred_name
                        ?: $employee->full_name,
                ];
            });

        $records = $attendance
            ->map(function ($record) use ($employeeNames) {
                return [
                    'id' => $record->id,
                    'employee_code' => $record->employee_code,
                    'employee_name' => $employeeNames[(string) $record->employee_code] ?? null,
                    'in_time' => $record->in_time,
                    'out_time' => $record->out_time,
                    'effective_date' => optional($record->effective_date)->format('Y-m-d'),
                    'late_reason' => $record->late_reason,
                    'created_at' => optional($record->created_at)->format('Y-m-d\TH:i:s.u\Z'),
                    'updated_at' => optional($record->updated_at)->format('Y-m-d\TH:i:s.u\Z'),
                ];
            })
            ->values();

        $latestDate = EmployeeAttendance::max('effective_date');

        return Inertia::render('HRMS/AttendanceDashboard', [
            'attendance' => $records,
            'latestEffectiveDate' => $latestDate ? Carbon::parse($latestDate)->format('Y-m-d') : null,
            'filters' => [
                'filter' => $request->get('filter', 'all'),
                'start_date' => $request->get('start_date', ''),
                'end_date' => $request->get('end_date', ''),
                'date' => $request->get('date', ''),
            ],
        ]);
    }

    public function export(Request $request)
    {
        $query = $this->buildAttendanceQuery($request);
        $attendance = $query->get();

        $employeeNames = Employee::query()
            ->whereIn('employee_code', $attendance->pluck('employee_code')->filter()->values())
            ->get(['employee_code', 'preferred_name', 'full_name'])
            ->mapWithKeys(function ($employee) {
                return [
                    (string) $employee->employee_code => $employee->preferred_name
                        ?: $employee->full_name,
                ];
            });

        $filter = $request->get('filter', 'all');
        $startDate = $request->get('start_date');
        $endDate = $request->get('end_date');
        $singleDate = $request->get('date');

        $suffix = match ($filter) {
            'today' => 'today_' . Carbon::today()->toDateString(),
            'this_month' => 'month_' . Carbon::now()->format('Y_m'),
            'custom' => 'custom_' . ($singleDate ?: (($startDate ?: 'start') . '_to_' . ($endDate ?: 'end'))),
            default => ($startDate || $endDate)
                ? 'range_' . ($startDate ?: 'start') . '_to_' . ($endDate ?: 'end')
                : 'all_' . Carbon::today()->toDateString(),
        };

        $filename = "attendance_{$suffix}.csv";

        $headers = [
            'Content-Type' => 'text/csv; charset=UTF-8',
            'Content-Disposition' => "attachment; filename=\"{$filename}\"",
            'Pragma' => 'no-cache',
            'Cache-Control' => 'must-revalidate, post-check=0, pre-check=0',
            'Expires' => '0',
        ];

        $callback = function () use ($attendance, $employeeNames) {
            $handle = fopen('php://output', 'w');
            fputs($handle, "\xEF\xBB\xBF");

            fputcsv($handle, [
                'Employee Code',
                'Employee Name',
                'In Time',
                'Out Time',
                'Effective Date',
                'Late Reason',
                'Created At',
                'Updated At',
            ]);

            foreach ($attendance as $record) {
                fputcsv($handle, [
                    $record->employee_code,
                    $employeeNames[(string) $record->employee_code] ?? '',
                    $record->in_time,
                    $record->out_time,
                    optional($record->effective_date)->format('Y-m-d') ?: (string) $record->effective_date,
                    $record->late_reason ?? '',
                    optional($record->created_at)->format('Y-m-d H:i:s') ?: (string) $record->created_at,
                    optional($record->updated_at)->format('Y-m-d H:i:s') ?: (string) $record->updated_at,
                ]);
            }

            fclose($handle);
        };

        return response()->stream($callback, 200, $headers);
    }
}
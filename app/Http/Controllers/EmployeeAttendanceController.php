<?php

namespace App\Http\Controllers;

use App\Models\EmployeeAttendance;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;
use Carbon\Carbon;

class EmployeeAttendanceController extends Controller
{
    private function normalizeDate(?string $value): ?string
    {
        if (!$value = trim((string) $value)) {
            return null;
        }

        foreach (['Y-m-d', 'm/d/Y', 'n/j/Y', 'd/m/Y', 'j/n/Y'] as $format) {
            try {
                return Carbon::createFromFormat($format, $value)->format('Y-m-d');
            } catch (\Throwable $exception) {
                // Try the next supported CSV format.
            }
        }

        return Carbon::parse($value)->format('Y-m-d');
    }

    private function normalizeDateTime(?string $value, $fallback = null): ?string
    {
        if (!$value = trim((string) $value)) {
            return $fallback;
        }

        foreach (['Y-m-d H:i:s', 'Y-m-d H:i', 'm/d/Y H:i:s', 'm/d/Y H:i', 'n/j/Y H:i:s', 'n/j/Y H:i'] as $format) {
            try {
                return Carbon::createFromFormat($format, $value)->format('Y-m-d H:i:s');
            } catch (\Throwable $exception) {
                // Try the next supported CSV format.
            }
        }

        return Carbon::parse($value)->format('Y-m-d H:i:s');
    }

    public function index()
    {
        $attendance = EmployeeAttendance::query()
            ->latest('effective_date')
            ->latest('id')
            ->get();

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
                    'created_at' => optional($record->created_at)->format('Y-m-d\\TH:i:s.u\\Z'),
                    'updated_at' => optional($record->updated_at)->format('Y-m-d\\TH:i:s.u\\Z'),
                ];
            })
            ->values();

        return Inertia::render('HRMS/AttendanceDashboard', [
            'attendance' => $records,
            'latestEffectiveDate' => $records->first()['effective_date'] ?? null,
        ]);
    }

    public function import(Request $request)
    {
        $request->validate([
            'file' => ['required', 'file', 'mimes:csv,txt', 'max:10240'],
        ]);

        $handle = fopen($request->file('file')->getRealPath(), 'rb');
        $headers = fgetcsv($handle);

        if (!$headers) {
            fclose($handle);
            return back()->withErrors(['file' => 'The CSV file is empty.']);
        }

        $headers = array_map(function ($header) {
            return strtolower(trim(str_replace("\xEF\xBB\xBF", '', $header)));
        }, $headers);

        $requiredHeaders = ['employee_code', 'in_time', 'out_time', 'effective_date'];
        $missingHeaders = array_diff($requiredHeaders, $headers);

        if ($missingHeaders) {
            fclose($handle);
            return back()->withErrors([
                'file' => 'Missing CSV columns: ' . implode(', ', $missingHeaders),
            ]);
        }

        $imported = 0;
        $now = now();

        DB::transaction(function () use ($handle, $headers, $now, &$imported) {
            while (($values = fgetcsv($handle)) !== false) {
                if (count(array_filter($values, fn ($value) => trim((string) $value) !== '')) === 0) {
                    continue;
                }

                $values = array_pad(array_slice($values, 0, count($headers)), count($headers), null);
                $row = array_combine($headers, $values);
                $data = [
                    'employee_code' => trim((string) ($row['employee_code'] ?? '')),
                    'in_time' => $row['in_time'] ?: null,
                    'out_time' => $row['out_time'] ?: null,
                    'effective_date' => $this->normalizeDate($row['effective_date'] ?? null),
                    'updated_at' => $this->normalizeDateTime($row['updated_at'] ?? null, $now),
                ];

                if (isset($row['created_at']) && $row['created_at']) {
                    $data['created_at'] = $this->normalizeDateTime($row['created_at']);
                }

                $data['created_at'] ??= $now;
                DB::table('employee_attendance')->insert($data);

                $imported++;
            }
        });

        fclose($handle);

        return back()->with('success', $imported . ' attendance record(s) imported successfully.');
    }
}
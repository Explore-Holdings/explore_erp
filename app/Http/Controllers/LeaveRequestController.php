<?php

namespace App\Http\Controllers;

use App\Models\LeaveRequest;
use App\Models\EmployeeYearlyLeaveBalance;
use App\Models\EmployeeLeaveBalance;
use App\Models\Employee;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Carbon\Carbon;
use App\Models\LeavePolicy;

class LeaveRequestController extends Controller
{
    public function dashboard(Request $request)
    {
        $today = Carbon::today()->toDateString();

        $onLeave = LeaveRequest::with([
                'employee.job.department',
                'policy',
                'overseeMember',
                'documents'
            ])
            ->where('status', 'Approved')
            ->whereDate('leave_start_date', '<=', $today)
            ->whereDate('leave_end_date', '>=', $today)
            ->get();

        $pending = LeaveRequest::with([
                'employee.job.department',
                'policy',
                'overseeMember',
                'documents'
            ])
            ->where('status', 'Pending')
            ->orderByDesc('requested_at')
            ->get();

        $approved = LeaveRequest::with([
                'employee.job.department',
                'policy',
                'overseeMember',
                'documents'
            ])
            ->where('status', 'Approved')
            ->orderByDesc('requested_at')
            ->get();

        $rejected = LeaveRequest::with([
                'employee.job.department',
                'policy',
                'overseeMember',
                'documents'
            ])
            ->where('status', 'Rejected')
            ->orderByDesc('requested_at')
            ->get();

        $approvedCount = $approved->count();
        $rejectedCount = $rejected->count();
        $pendingCount = $pending->count();

        $mapLeaveRequest = function ($lr) {
            return [
                'leave_request_id' => $lr->leave_request_id,
                'name' => trim($lr->employee->preferred_name ?? ''),
                'employee_id' => $lr->employee_id,
                'type' => $lr->policy?->name ?? '-',
                'department' => $lr->employee?->job?->department?->name ?? '-',
                'days' => $lr->half_day_session ? '0.5 Day' : rtrim(rtrim((string) $lr->number_of_days, '0'), '.') . ' Day(s)',
                'number_of_days' => $lr->number_of_days,
                'reason' => (string) ($lr->reason ?? '-'),
                'start' => optional($lr->leave_start_date)->toDateString(),
                'end' => optional($lr->leave_end_date)->toDateString(),
                'status' => $lr->status,
                'half_day_session' => $lr->half_day_session,
                'manager_comment' => $lr->manager_comment,
                'reliever_comment' => $lr->reliever_comment,
                'address' => $lr->address,
                'is_special_request' => (bool) $lr->is_special_request,
                'requested_at' => optional($lr->requested_at)->toDateTimeString(),
                'updated_at' => optional($lr->updated_at)->toDateTimeString(),
                'oversee_member' => [
                    'id' => $lr->overseeMember?->employee_id,
                    'name' => trim($lr->overseeMember?->preferred_name ?? ''),
                ],
                'documents' => $lr->documents->map(function ($doc) {
                    return [
                        'leave_request_document_id' => $doc->leave_request_document_id,
                        'file_name' => $doc->file_name,
                        'file_path' => $doc->file_path,
                        'mime_type' => $doc->mime_type,
                        'file_size_bytes' => $doc->file_size_bytes,
                        'uploaded_at' => optional($doc->uploaded_at)->toDateTimeString(),
                        'url' => url('mobile-api/' . ltrim($doc->file_path, '/')),
                    ];
                })->values(),
            ];
        };

        $employeesOnLeave = $onLeave->map($mapLeaveRequest);
        $pendingList = $pending->map($mapLeaveRequest);
        $approvedList = $approved->map($mapLeaveRequest);
        $rejectedList = $rejected->map($mapLeaveRequest);

        $leavePolicies = LeavePolicy::orderBy('name')->get();

        $employeeBalances = Employee::with([
                'job.department',
                'leaveBalances.policy',
                'yearlyLeaveBalances'
            ])
            ->orderBy('preferred_name')
            ->get()
            ->flatMap(function ($employee) use ($leavePolicies) {
                return $leavePolicies->map(function ($policy) use ($employee) {
                    $balance = $employee->leaveBalances
                        ->where('leave_policy_id', $policy->leave_policy_id)
                        ->first();

                    $yearlyBalance = $employee->yearlyLeaveBalances
                        ->where('leave_policy_id', $policy->leave_policy_id)
                        ->first();

                    return [
                        'employee_id' => $employee->employee_id,
                        'employee_code' => $employee->employee_code,
                        'employee_name' => trim($employee->preferred_name ?? ''),
                        'department' => $employee->job?->department?->name ?? '-',
                        'policy_name' => $policy->name,

                        'leave_entitlement' => $yearlyBalance?->leave_entitlement ?? 0,
                        'total_taken' => $balance?->total_taken ?? 0,
                        'remaining' => $balance?->remaining 
                            ?? ($yearlyBalance?->leave_entitlement ?? 0),
                    ];
                });
            })
            ->values();

        return Inertia::render('HRMS/LeaveDashboard', [
            'employeesOnLeave' => $employeesOnLeave,
            'pendingRequests' => $pendingList,
            'approvedRequests' => $approvedList,
            'rejectedRequests' => $rejectedList,
            'employeeBalances' => $employeeBalances,
            'stats' => [
                'onLeaveToday' => $employeesOnLeave->count(),
                'pendingRequests' => $pendingCount,
                'approved' => $approvedCount,
                'rejected' => $rejectedCount,
            ],
        ]);
    }
}
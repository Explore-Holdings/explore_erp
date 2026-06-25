<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\GatePassRequest;
use App\Models\Employee;
use App\Models\User;
use Inertia\Inertia;
use App\Exports\GatePassExport;
use Maatwebsite\Excel\Facades\Excel;
 
class GatePassRequestController extends Controller
{
    public function index()
    {
        $gatePassRequests = GatePassRequest::orderByDesc('created_at')
            ->get()
            ->map(function ($row) {
                $ids = $row->companion_employee_ids;

                if (is_string($ids)) {
                    $decoded = json_decode($ids, true);
                    $ids = is_array($decoded) ? $decoded : [];
                }

                $ids = is_array($ids) ? $ids : [];

                $companionEmployees = Employee::with(['job.department'])
                    ->whereIn('employee_id', $ids)
                    ->get()
                    ->map(function ($employee) {
                        return [
                            'employee_id' => $employee->employee_id,
                            'name' => $employee->preferred_name,
                            'department' => $employee->job?->department?->name ?? '-',
                        ];
                    })
                    ->values();

                return [
                    'id' => $row->id,
                    'employee_id' => $row->employee_id,
                    'employee_name' => $row->employee_name,
                    'contact_no' => $row->contact_no,
                    'manager_id' => $row->manager_id,
                    'gate_pass_date' => $row->gate_pass_date,
                    'out_time' => $row->out_time,
                    'return_time' => $row->return_time,
                    'reason' => $row->reason,
                    'vehicle_no' => $row->vehicle_no,

                    'companion_employee_ids' => $ids,
                    'companion_employees' => $companionEmployees,

                    'status' => $row->status,

                    'checked_out_at' => optional($row->checked_out_at)->format('Y-m-d h:i A'),

                    'checked_out_by' => $row->checked_out_by,
                    'checked_out_by_name' => User::where('employee_id', $row->checked_out_by)->value('name'),

                    'checked_in_at' => optional($row->checked_in_at)->format('Y-m-d h:i A'),
                    'checked_in_by' => $row->checked_in_by,
                    'checked_in_by_name' => User::where('employee_id', $row->checked_in_by)->value('name'),

                    'gate_pass_code' => $row->gate_pass_code,
                    'reject_reason' => $row->reject_reason,
                    'manager_comment' => $row->manager_comment,
                    'remark' => $row->remark,

                    'created_at' => optional($row->created_at)->format('Y-m-d h:i A'),
                    'updated_at' => optional($row->updated_at)->format('Y-m-d h:i A'),
                    'deleted_at' => optional($row->deleted_at)->format('Y-m-d h:i A'),
                    'deleted_by' => $row->deleted_by,
                ];
            });

        return Inertia::render('HRMS/GatePassRequests', [
            'gatePassRequests' => $gatePassRequests,
        ]);
    }

    public function export(Request $request)
    {
        return Excel::download(
            new GatePassExport($request->filter),
            'GatePassReport.xlsx'
        );
    }
}
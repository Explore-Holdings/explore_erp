<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\Employee;
use App\Models\Training;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;
use Illuminate\Support\Facades\Log;

class TrainingController extends Controller
{
    private function updateTrainingStatuses()
    {
        $now = now();

        $trainings = Training::whereIn('status', [
            'pending',
            'on going'
        ])->get();

        foreach ($trainings as $training) {

            $startDateTime = \Carbon\Carbon::parse(
                $training->date . ' ' . $training->start_time
            );

            $endDateTime = \Carbon\Carbon::parse(
                $training->date . ' ' . $training->end_time
            );

            if (
                $now >= $startDateTime &&
                $now < $endDateTime &&
                $training->status !== 'on going'
            ) {
                $training->update([
                    'status' => 'on going'
                ]);
            }

            if (
                $now >= $endDateTime &&
                $training->status !== 'completed'
            ) {
                $training->update([
                    'status' => 'completed'
                ]);
            }
        }
    }

    public function index()
    {
        $this->updateTrainingStatuses();

        $trainings = Training::with([
            'members.employee'
        ])->latest()->get();

        return Inertia::render(
            'HRMS/TrainingIndex',
            [
                'trainings' => $trainings
            ]
        );
    }

    public function create()
    {
        $departments = Department::select(
            'department_id',
            'name'
        )
        ->orderBy('name')
        ->get();

        return Inertia::render('HRMS/TrainingDashboard', [
            'departments' => $departments,
        ]);
    }

    public function getEmployeesByDepartment(int $department_id)
    {
        $employees = Employee::whereHas('job', function ($query) use ($department_id) {
            $query->where('department_id', $department_id);
        })
        ->select('employee_id', 'preferred_name')
        ->orderBy('preferred_name')
        ->get();

        return response()->json($employees);
    }

    public function getAllEmployees()
    {
        return Employee::select(
            'employee_id',
            'preferred_name'
        )
        ->orderBy('preferred_name')
        ->get();
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'topic' => 'required',
            'date' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'description' => 'nullable',
            'remarks' => 'nullable',
            'members' => 'required|array|min:1',
        ]);

        $attachment = null;

        if ($request->hasFile('attachment')) {
            $attachment = $request
                ->file('attachment')
                ->store(
                    'training_attachments',
                    'public'
                );
        }

        DB::beginTransaction();

        try {

            $training = Training::create([
                'topic' => $request->topic,
                'date' => $request->date,
                'start_time' => $request->start_time,
                'end_time' => $request->end_time,
                'description' => $request->description,
                'remarks' => $request->remarks,
                'status' => 'pending',
                'attachments' => $attachment,
            ]);

            foreach ($request->members as $employeeId) {

                DB::table('training_members')->insert([
                    'training_id' => $training->id,
                    'user_id' => $employeeId,
                    'status' => 'pending',
                    'created_at' => now(),
                ]);
            }

            DB::commit();

            return redirect()
            ->route('hrms.training.index')
            ->with(
                'success',
                'Training created successfully.'
            );

        } catch (\Exception $e) {

    DB::rollBack();

    Log::error('Training creation failed', [
        'message' => $e->getMessage(),
        'file' => $e->getFile(),
        'line' => $e->getLine(),
        'trace' => $e->getTraceAsString(),
        'request' => $request->all(),
    ]);

    return back()->withErrors([
        'error' => $e->getMessage()
    ]);
}
    }

    public function cancel(Training $training)
    {
        if ($training->status === 'completed') {
            return back()->withErrors([
                'error' => 'Completed trainings cannot be cancelled.'
            ]);
        }

        $training->update([
            'status' => 'cancelled'
        ]);

        DB::table('training_members')
            ->where('training_id', $training->id)
            ->update([
                'status' => 'cancelled'
            ]);

        return back()->with(
            'success',
            'Training cancelled successfully.'
        );
    }
}
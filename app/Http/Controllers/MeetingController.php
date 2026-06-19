<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use App\Models\Meeting;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Carbon\Carbon;

class MeetingController extends Controller
{
    public function dashboard()
    {
        $this->syncMeetingStatuses();

        $today = Carbon::today();
        $startOfMonth = Carbon::now()->startOfMonth();
        $endOfMonth = Carbon::now()->endOfMonth();

        $allMeetings = Meeting::get();

        // ✅ Stats
        $stats = [
            'scheduled' => $allMeetings
                ->whereBetween('meeting_date', [$startOfMonth, $endOfMonth])
                ->where('status', 'scheduled')
                ->count(),

            'rescheduled' => $allMeetings
                ->whereBetween('meeting_date', [$startOfMonth, $endOfMonth])
                ->where('status', 'rescheduled')
                ->count(),

            'cancelled' => $allMeetings
                ->whereBetween('meeting_date', [$startOfMonth, $endOfMonth])
                ->where('status', 'cancelled')
                ->count(),
        ];

            // ✅ Dashboard meetings
            $meetings = Meeting::with('creator.employee')
                ->whereIn('status', ['scheduled', 'rescheduled', 'ongoing'])
                ->orderBy('meeting_date')
                ->orderBy('start_time')
                ->get()
            ->map(function ($meeting) {

                $memberIds = is_array($meeting->members_ids) ? $meeting->members_ids : [];
                $responseStatuses = is_array($meeting->response_status) ? $meeting->response_status : [];

                $pendingCount = collect($responseStatuses)
                    ->filter(fn ($status) => $status === 'pending')
                    ->count();

                return [
                    'id' => $meeting->id,
                    'title' => $meeting->title,
                    'meeting_date' => $meeting->meeting_date,
                    'start_time' => $meeting->start_time,
                    'end_time' => $meeting->end_time,
                    'location' => $meeting->location,
                    'status' => $meeting->status,
                    'members_count' => count($memberIds),
                    'pending_count' => $pendingCount,
                ];
            });

                // ✅ Calendar dots
            $calendarMeetings = $allMeetings
                ->whereIn('status', ['scheduled', 'rescheduled', 'ongoing'])
                ->map(fn ($m) => [
                    'date' => Carbon::parse($m->meeting_date)->toDateString(),
                    'status' => $m->status,
                ])
                ->values();
                return Inertia::render('HRMS/MeetingDashboard', [
                    'serverToday' => $today->toDateString(),
                    'stats' => $stats,
                    'dashboardMeetings' => $meetings,
                    'calendarMeetings' => $calendarMeetings,
                ]);
    }

    public function index()
    {

    $this->syncMeetingStatuses();
        $employees = Employee::with(['job.department', 'job.jobTitle'])
        ->select('employee_id', 'preferred_name')
        ->orderBy('preferred_name')
        ->get()
        ->map(fn ($employee) => [
            'id' => $employee->employee_id,
            'name' => $employee->preferred_name,
            'job_title_id' => $employee->job?->job_title_id,
            'job_title' => $employee->job?->jobTitle?->name,
            'department_id' => $employee->job?->department_id,
            'department_name' => $employee->job?->department?->name,
        ])
        ->values();

        $departments = $employees
            ->filter(fn ($employee) => !empty($employee['department_id']))
            ->map(fn ($employee) => [
                'id' => $employee['department_id'],
                'name' => $employee['department_name'] ?? 'Unknown Department',
            ])
            ->unique('id')
            ->sortBy('name')
            ->values();

        $employeeMap = $employees->keyBy('id');

        $meetings = Meeting::with('creator.employee')
            ->orderByDesc('meeting_date')
            ->orderByDesc('start_time')
            ->get()
            ->map(function ($meeting) use ($employeeMap) {
                $memberIds = is_array($meeting->members_ids) ? $meeting->members_ids : [];
                $responseStatuses = is_array($meeting->response_status) ? $meeting->response_status : [];

                $members = collect($memberIds)->map(function ($memberId) use ($employeeMap, $responseStatuses) {
                    return [
                        'id' => $memberId,
                        'name' => $employeeMap[$memberId]['name'] ?? 'Unknown',
                        'job_title' => $employeeMap[$memberId]['job_title'] ?? null,
                        'department_name' => $employeeMap[$memberId]['department_name'] ?? null,
                        'response_status' => $responseStatuses[$memberId] ?? 'pending',
                    ];
                })->values();

                return [
                    'id' => $meeting->id,
                    'title' => $meeting->title,
                    'type' => $meeting->type ?? 'meeting',
                    'description' => $meeting->description,
                    'meeting_date' => $meeting->meeting_date
                        ? Carbon::parse($meeting->meeting_date)->toDateString()
                        : null,
                    'start_time' => $meeting->start_time
                        ? Carbon::parse($meeting->start_time)->format('H:i')
                        : null,
                    'end_time' => $meeting->end_time
                        ? Carbon::parse($meeting->end_time)->format('H:i')
                        : null,
                    'location_type' => $meeting->location_type,
                    'location' => $meeting->location,
                    'members_ids' => $memberIds,
                    'status' => $meeting->status,
                    'attachments' => $meeting->attachments ?? [],
                    'response_status' => $responseStatuses,
                    'members' => $members,
                    'created_by' => $meeting->created_by,
                    'created_by_name' => $meeting->creator?->employee?->preferred_name
                        ?? $meeting->creator?->name
                        ?? 'Unknown',
                ];
            })
            ->values();

        return Inertia::render('HRMS/Meetings', [
            'meetings' => $meetings,
            'employees' => $employees,
            'departments' => $departments,
        ]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => ['required', 'string', 'max:255'],
            'type' => ['required', 'in:meeting,event,training'],
            'description' => ['nullable', 'string'],
            'meeting_date' => ['required', 'date', 'after_or_equal:today'],
            'start_time' => ['required'],
            'end_time' => ['required', 'after:start_time'],
            'location_type' => ['required', 'in:physical,online'],
            'location' => ['required', 'string', 'max:500'],
            'members_ids' => ['nullable', 'array'],
            'members_ids.*' => ['integer', 'exists:employees,employee_id'],
            'attachments' => ['nullable'],
            'attachments.*' => ['file', 'max:25600'],
        ]);

        $uploadedAttachments = [];

        if ($request->hasFile('attachments')) {
            foreach ($request->file('attachments') as $file) {
                $path = $file->store('meeting-attachments', 'public');

                $uploadedAttachments[] = [
                    'file_name' => $file->getClientOriginalName(),
                    'file_path' => $path,
                    'mime_type' => $file->getClientMimeType(),
                    'file_size' => $file->getSize(),
                ];
            }
        }

        $responseStatuses = [];
        foreach (($validated['members_ids'] ?? []) as $employeeId) {
            $responseStatuses[$employeeId] = 'pending';
        }

        $conflict = Meeting::where('meeting_date', $validated['meeting_date'])
    ->where(function ($query) use ($validated) {
        $query->whereBetween('start_time', [$validated['start_time'], $validated['end_time']])
            ->orWhereBetween('end_time', [$validated['start_time'], $validated['end_time']])
            ->orWhere(function ($q) use ($validated) {
                $q->where('start_time', '<=', $validated['start_time'])
                  ->where('end_time', '>=', $validated['end_time']);
            });
    })
    ->exists();

    if ($conflict) {
        return back()->withErrors([
            'time_conflict' => 'A meeting is already scheduled for this date and time.'
        ]);
    }

        Meeting::create([
            'title' => $validated['title'],
            'type' => $validated['type'],
            'description' => $validated['description'] ?? null,
            'meeting_date' => $validated['meeting_date'],
            'start_time' => $validated['start_time'],
            'end_time' => $validated['end_time'],
            'location_type' => $validated['location_type'],
            'location' => $validated['location'],
            'members_ids' => $validated['members_ids'] ?? [],
            'status' => 'scheduled',
            'created_by' => auth()->id(),
            'response_status' => $responseStatuses,
            'attachments' => $uploadedAttachments,
        ]);

        return redirect()
            ->route('hrms.meetings.index')
            ->with('success', 'Meeting created successfully.');
    }

    public function update(Request $request, Meeting $meeting)
    {
        $validated = $request->validate([
            'title' => ['required', 'string', 'max:255'],
            'type' => ['required', 'in:meeting,event,training'],
            'description' => ['nullable', 'string'],
            'meeting_date' => ['required', 'date', 'after_or_equal:today'],
            'start_time' => ['required'],
            'end_time' => ['required', 'after:start_time'],
            'location_type' => ['required', 'in:physical,online'],
            'location' => ['required', 'string', 'max:500'],
            'members_ids' => ['nullable', 'array'],
            'members_ids.*' => ['integer', 'exists:employees,employee_id'],
            'attachments' => ['nullable'],
            'attachments.*' => ['file', 'max:5120'],
        ]);

        $conflict = Meeting::where('id', '!=', $meeting->id)
            ->where('meeting_date', $validated['meeting_date'])
            ->whereIn('status', ['scheduled', 'rescheduled', 'ongoing'])
            ->where(function ($query) use ($validated) {
                $query
                    ->where(function ($q) use ($validated) {
                        $q->where('start_time', '<', $validated['end_time'])
                        ->where('end_time', '>', $validated['start_time']);
                    });
            })
            ->exists();

        if ($conflict) {
            return back()->withErrors([
                'time_conflict' => 'A meeting is already scheduled for this date and time.',
            ]);
        }

        $uploadedAttachments = $meeting->attachments ?? [];

        if ($request->hasFile('attachments')) {
            foreach ($request->file('attachments') as $file) {
                $path = $file->store('meeting-attachments', 'public');

                $uploadedAttachments[] = [
                    'file_name' => $file->getClientOriginalName(),
                    'file_path' => $path,
                    'mime_type' => $file->getClientMimeType(),
                    'file_size' => $file->getSize(),
                ];
            }
        }

        $responseStatuses = [];
        foreach (($validated['members_ids'] ?? []) as $employeeId) {
            $responseStatuses[$employeeId] = $meeting->response_status[$employeeId] ?? 'pending';
        }

        $meeting->update([
            'title' => $validated['title'],
            'type' => $validated['type'],
            'description' => $validated['description'] ?? null,
            'meeting_date' => $validated['meeting_date'],
            'start_time' => $validated['start_time'],
            'end_time' => $validated['end_time'],
            'location_type' => $validated['location_type'],
            'location' => $validated['location'],
            'members_ids' => $validated['members_ids'] ?? [],
            'status' => 'rescheduled',
            'response_status' => $responseStatuses,
            'attachments' => $uploadedAttachments,
        ]);

        return redirect()
            ->route('hrms.meetings.index')
            ->with('success', 'Meeting rescheduled successfully.');
    }

public function cancel(Meeting $meeting)
{
    $meeting->update([
        'status' => 'cancelled',
    ]);

    return redirect()
        ->route('hrms.meetings.index')
        ->with('success', 'Meeting cancelled successfully.');
}

private function syncMeetingStatuses(): void
{
    $now = Carbon::now();
    $today = $now->toDateString();
    $currentTime = $now->format('H:i:s');

    Meeting::whereIn('status', ['scheduled', 'rescheduled'])
        ->where('meeting_date', $today)
        ->where('start_time', '<=', $currentTime)
        ->where('end_time', '>', $currentTime)
        ->update([
            'status' => 'ongoing',
        ]);

    Meeting::whereIn('status', ['scheduled', 'rescheduled', 'ongoing'])
        ->where(function ($query) use ($today, $currentTime) {
            $query->where('meeting_date', '<', $today)
                ->orWhere(function ($q) use ($today, $currentTime) {
                    $q->where('meeting_date', $today)
                        ->where('end_time', '<=', $currentTime);
                });
        })
        ->update([
            'status' => 'completed',
        ]);
}
}
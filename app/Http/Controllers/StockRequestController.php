<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\StockRequest;
use App\Models\Stock;
use App\Models\User;
use App\Models\Employee;
use App\Models\EmployeeJob;
use Illuminate\Http\Request;
use Inertia\Inertia;

class StockRequestController extends Controller
{
    public function index(Request $request)
    {
        $user = auth()->user();
        
        // Handle direct role string and relationships safely
        $roleName = is_string($user->role) ? $user->role : ($user->role->name ?? '');
        if (!$roleName && method_exists($user, 'roles') && $user->roles()->exists()) {
            $roleName = $user->roles->first()->name ?? '';
        }

        // Normalize role for reliable checks
        $roleLower = strtolower((string) $roleName);
        $isAdmin = in_array($roleLower, ['admin', 'administrator']);
        $isManager = in_array($roleLower, ['inventory manager', 'inventory_manager']);
        $isHod = $this->userIsHod($user, $roleLower);

        $query = StockRequest::with(['user', 'department', 'stock', 'processor', 'hodApprover']);

        // Status filter
        if ($request->has('status') && in_array($request->status, ['pending_hod', 'pending_manager', 'approved', 'rejected'])) {
            $query->where('status', $request->status);
        }

        if ($isAdmin) {
            // Admin sees all requests
            $requests = $query->latest()->paginate(10)->withQueryString();
            $stats = [
                'total_requests' => StockRequest::count(),
                'pending_hod' => StockRequest::where('status', 'pending_hod')->count(),
                'pending_manager' => StockRequest::where('status', 'pending_manager')->count(),
                'approved' => StockRequest::where('status', 'approved')->count(),
                'rejected' => StockRequest::where('status', 'rejected')->count(),
            ];
        } elseif ($isManager) {
            // Inventory Manager only sees requests after HOD has approved
            $requests = $query->where('hod_status', 'approved')
                              ->latest()
                              ->paginate(10)
                              ->withQueryString();
            $stats = [
                'total_requests' => StockRequest::where('hod_status', 'approved')->count(),
                'pending_hod' => 0,
                'pending_manager' => StockRequest::where('status', 'pending_manager')->count(),
                'approved' => StockRequest::where('status', 'approved')->count(),
                'rejected' => StockRequest::where('status', 'rejected')->where('hod_status', 'approved')->count(),
            ];
        } elseif ($isHod) {
            // HOD sees requests from their department AND direct reports
            $requests = $query->where(function ($q) use ($user) {
                $q->whereHas('employee.job', function ($subQ) use ($user) {
                    $subQ->where('department_id', $user->department_id);
                })
                ->orWhereHas('employee.job', function ($subQ) use ($user) {
                    $subQ->where('reporting_manager_id', $user->employee_id);
                });
            })
                              ->latest()
                              ->paginate(10)
                              ->withQueryString();
            $stats = [
                'total_requests' => StockRequest::where(function ($q) use ($user) {
                    $q->whereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('department_id', $user->department_id);
                    })
                    ->orWhereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('reporting_manager_id', $user->employee_id);
                    });
                })->count(),
                'pending_hod' => StockRequest::where(function ($q) use ($user) {
                    $q->whereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('department_id', $user->department_id);
                    })
                    ->orWhereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('reporting_manager_id', $user->employee_id);
                    });
                })->where('status', 'pending_hod')->count(),
                'pending_manager' => StockRequest::where(function ($q) use ($user) {
                    $q->whereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('department_id', $user->department_id);
                    })
                    ->orWhereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('reporting_manager_id', $user->employee_id);
                    });
                })->where('status', 'pending_manager')->count(),
                'approved' => StockRequest::where(function ($q) use ($user) {
                    $q->whereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('department_id', $user->department_id);
                    })
                    ->orWhereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('reporting_manager_id', $user->employee_id);
                    });
                })->where('status', 'approved')->count(),
                'rejected' => StockRequest::where(function ($q) use ($user) {
                    $q->whereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('department_id', $user->department_id);
                    })
                    ->orWhereHas('employee.job', function ($subQ) use ($user) {
                        $subQ->where('reporting_manager_id', $user->employee_id);
                    });
                })->where('status', 'rejected')->count(),
            ];
        } else {
            // Department User sees only their own requests
            $requests = $query->where('employee_id', $user->employee_id)
                              ->latest()
                              ->paginate(10)
                              ->withQueryString();
            $stats = [
                'total_requests' => StockRequest::where('employee_id', $user->employee_id)->count(),
                'pending_hod' => StockRequest::where('employee_id', $user->employee_id)->where('status', 'pending_hod')->count(),
                'pending_manager' => StockRequest::where('employee_id', $user->employee_id)->where('status', 'pending_manager')->count(),
                'approved' => StockRequest::where('employee_id', $user->employee_id)->where('status', 'approved')->count(),
                'rejected' => StockRequest::where('employee_id', $user->employee_id)->where('status', 'rejected')->count(),
            ];
        }

        return Inertia::render('Inventory/StockRequestsIndex', [
            'requests' => $requests,
            'roleName' => $roleName,
            'stats' => $stats,
            'filters' => $request->only(['status']),
            'userIsReportingManager' => $this->isReportingManager($user),
            'flash' => [
                'success' => session('success'),
                'error' => session('error'),
            ]
        ]);
    }

    public function create(Request $request)
    {
        $user = auth()->user();
        if (!$user->employee_id) {
            $employee = Employee::where('user_id', $user->id)->first();
            if ($employee) {
                $user->employee_id = $employee->employee_id;
                $user->save();
            }
        }

        if (!$user->employee_id) {
            return redirect()->route('stock-requests.index')->with('error', 'Employee ID is required to request stock.');
        }

        $selectedStockId = $request->get('stock_id');
        $stocks = Stock::where('quantity', '>', 0)->get();
        
        return Inertia::render('Inventory/StockRequestsCreate', [
            'stocks' => $stocks,
            'selectedStockId' => $selectedStockId
        ]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'stock_id' => 'required|exists:stocks,id',
            'quantity' => 'required|integer|min:1',
        ]);

        $stock = Stock::findOrFail($validated['stock_id']);
        
        if ($stock->quantity < $validated['quantity']) {
            return back()->withErrors(['quantity' => 'Not enough stock available.'])->withInput();
        }

        $user = auth()->user();
        if (!$user->employee_id) {
            $employee = Employee::where('user_id', $user->id)->first();
            if ($employee) {
                $user->employee_id = $employee->employee_id;
                $user->save();
            }
        }

        if (!$user->employee_id) {
            return back()->withErrors(['quantity' => 'Employee ID is required to request stock.'])->withInput();
        }

        $roleName = is_string($user->role) ? $user->role : ($user->role->name ?? '');
        if (!$roleName && $user->roles()->exists()) {
            $roleName = $user->roles->first()->name ?? '';
        }

        // HOD requests skip HOD approval and go directly to Inventory Manager
        if ($this->userIsHod($user, strtolower($roleName))) {
            $status = 'pending_manager';
            $hodStatus = 'approved';
            $successMsg = 'Stock request submitted. Forwarded directly to Inventory Manager.';
        } else {
            $status = 'pending_hod';
            $hodStatus = 'pending_hod';
            $successMsg = 'Stock request submitted. Waiting for HOD approval.';
        }

        StockRequest::create([
            'employee_id' => $user->employee_id,
            'stock_id' => $stock->id,
            'quantity' => $validated['quantity'],
            'status' => $status,
            'hod_status' => $hodStatus,
            'hod_approved_by' => $this->userIsHod($user, strtolower($roleName)) ? $user->id : null,
        ]);

        return redirect()->route('stock-requests.index')->with('success', $successMsg);
    }

    /**
     * HOD approves the request - moves it to Inventory Manager
     */
    public function hodApprove(Request $request, StockRequest $stock_request)
    {
        $user = auth()->user();
        $roleName = is_string($user->role) ? $user->role : ($user->role->name ?? '');
        if (!$roleName && $user->roles()->exists()) {
            $roleName = $user->roles->first()->name ?? '';
        }

        $isAssignedHod = $this->isEmployeeAssignedHod($user, $stock_request);
        $isDeptHod = $this->userIsHod($user, strtolower($roleName)) && ($stock_request->employee?->job?->department_id === $user->department_id);

        if (!$isAssignedHod && !$isDeptHod && !in_array(strtolower($roleName), ['admin', 'administrator'])) {
            abort(403, 'Unauthorized action.');
        }

        if ($stock_request->status !== 'pending_hod') {
            return back()->with('error', 'This request is not pending HOD approval.');
        }

        $stock_request->update([
            'status' => 'pending_manager',
            'hod_status' => 'approved',
            'hod_approved_by' => auth()->id(),
        ]);

        return back()->with('success', 'Request approved by HOD. Forwarded to Inventory Manager.');
    }

    /**
     * HOD rejects the request
     */
    public function hodReject(Request $request, StockRequest $stock_request)
    {
        $user = auth()->user();
        $roleName = is_string($user->role) ? $user->role : ($user->role->name ?? '');
        if (!$roleName && $user->roles()->exists()) {
            $roleName = $user->roles->first()->name ?? '';
        }

        $isAssignedHod = $this->isEmployeeAssignedHod($user, $stock_request);
        $isDeptHod = $this->userIsHod($user, strtolower($roleName)) && ($stock_request->employee?->job?->department_id === $user->department_id);

        if (!$isAssignedHod && !$isDeptHod && !in_array(strtolower($roleName), ['admin', 'administrator'])) {
            abort(403, 'Unauthorized action.');
        }

        if ($stock_request->status !== 'pending_hod') {
            return back()->with('error', 'This request is not pending HOD approval.');
        }

        $stock_request->update([
            'status' => 'rejected',
            'hod_status' => 'rejected',
            'hod_approved_by' => auth()->id(),
        ]);

        return back()->with('success', 'Request rejected by HOD.');
    }

    /**
     * Inventory Manager / Admin approves the request - deducts stock
     */
    public function approve(Request $request, StockRequest $stock_request)
    {
        if ($stock_request->status !== 'pending_manager') {
            return back()->with('error', 'This request must be approved by HOD first.');
        }

        $stock = $stock_request->stock;

        if ($stock->quantity < $stock_request->quantity) {
            return back()->with('error', 'Not enough stock available to fulfill request.');
        }

        $stock->decrement('quantity', $stock_request->quantity);

        $stock_request->update([
            'status' => 'approved',
            'processed_by' => auth()->id(),
        ]);

        return back()->with('success', 'Request approved successfully.');
    }

    /**
     * Resolve the reporting manager for a user.
     */
    private function resolveAssignedHod(User $user): ?int
    {
        $employee = $user->employee;
        if (!$employee || !$employee->job) {
            return null;
        }

        $reportingManagerId = $employee->job->reporting_manager_id ?? null;
        if (!$reportingManagerId) {
            return null;
        }

        $reportingManager = Employee::find($reportingManagerId);
        return $reportingManager?->user?->id;
    }

    private function isReportingManager(User $user): bool
    {
        if (!$user->employee_id) {
            return false;
        }

        return EmployeeJob::where('reporting_manager_id', $user->employee_id)->exists();
    }

    private function userIsHod(User $user, string $roleLower): bool
    {
        return str_contains($roleLower, 'hod')
            || str_contains($roleLower, 'head')
            || $this->isReportingManager($user);
    }

    private function isEmployeeAssignedHod(User $hodUser, StockRequest $stockRequest): bool
    {
        $employee = $stockRequest->employee;
        if (!$employee || !$employee->job) {
            return false;
        }

        return (int) ($employee->job->reporting_manager_id ?? 0) === (int) ($hodUser->employee_id ?? 0);
    }

    private function canManageHodRequest(User $user, StockRequest $stockRequest, string $roleLower): bool
    {
        $isAssignedHod = $this->isEmployeeAssignedHod($user, $stockRequest);
        $isDeptHod = $this->userIsHod($user, $roleLower) && ($stockRequest->employee?->job?->department_id === $user->department_id);

        return $isAssignedHod || $isDeptHod || in_array($roleLower, ['admin', 'administrator']);
    }

    /**
     * Inventory Manager / Admin rejects the request
     */
    public function reject(Request $request, StockRequest $stock_request)
    {
        if ($stock_request->status !== 'pending_manager') {
            return back()->with('error', 'This request must be approved by HOD first.');
        }

        $stock_request->update([
            'status' => 'rejected',
            'processed_by' => auth()->id(),
        ]);

        return back()->with('success', 'Request rejected.');
    }

    public function edit(StockRequest $stockRequest)
    {
        $stocks = Stock::all();
        return Inertia::render('Inventory/StockRequestsEdit', [
            'stockRequest' => $stockRequest,
            'stocks' => $stocks
        ]);
    }

    public function update(Request $request, StockRequest $stockRequest)
    {
        $validated = $request->validate([
            'stock_id' => 'required|exists:stocks,id',
            'quantity' => 'required|integer|min:1',
            'status' => 'required|in:pending_hod,pending_manager,approved,rejected',
        ]);

        $stockRequest->update($validated);

        return redirect()->route('stock-requests.index')->with('success', 'Stock request updated successfully.');
    }

    public function destroy(StockRequest $stockRequest)
    {
        $user = auth()->user();
        $roleName = is_string($user->role) ? $user->role : ($user->role->name ?? '');
        if (!$roleName && $user->roles()->exists()) {
            $roleName = $user->roles->first()->name ?? '';
        }

        $canDelete = $this->canManageHodRequest($user, $stockRequest, strtolower($roleName));
        if (!$canDelete && $stockRequest->employee_id !== $user->employee_id && !in_array(strtolower($roleName), ['admin', 'administrator'])) {
            abort(403, 'Unauthorized action.');
        }

        $stockRequest->delete();

        return redirect()->route('stock-requests.index')->with('success', 'Stock request deleted successfully.');
    }
}

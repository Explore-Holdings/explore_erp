<?php

namespace App\Http\Controllers;

use App\Models\AssetIssuance;
use App\Models\IssuableItem;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;

class AssetIssuanceController extends Controller
{
    // ─── Issuance List ────────────────────────────────────────────────────────

    public function index(Request $request)
    {
        $query = AssetIssuance::with(['employee', 'item', 'issuedBy'])
            ->orderBy('issued_at', 'desc');

        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->whereHas('employee', fn($e) => $e->where('full_name', 'like', "%{$search}%"))
                  ->orWhereHas('item', fn($i) => $i->where('name', 'like', "%{$search}%"));
            });
        }

        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }

        $issuances = $query->paginate(15)->withQueryString();

        // Stats
        $stats = [
            'total'    => AssetIssuance::count(),
            'issued'   => AssetIssuance::where('status', 'issued')->count(),
            'returned' => AssetIssuance::where('status', 'returned')->count(),
            'lost'     => AssetIssuance::where('status', 'lost')->count(),
        ];

        $items    = IssuableItem::orderBy('name')->get(['id', 'name', 'created_at']);
        $employees = Employee::where('employment_status', 'active')
                        ->orderBy('full_name')
                        ->get(['employee_id', 'full_name', 'preferred_name', 'employee_code']);

        return Inertia::render('Inventory/AssetIssuance/Index', [
            'issuances' => $issuances,
            'stats'     => $stats,
            'items'     => $items,
            'employees' => $employees,
            'filters'   => $request->only(['search', 'status']),
            'flash'     => [
                'success' => session('success'),
                'error'   => session('error'),
            ],
        ]);
    }

    // ─── Issue Form ───────────────────────────────────────────────────────────

    public function create()
    {
        $items     = IssuableItem::orderBy('name')->get(['id', 'name']);
        $employees = Employee::where('employment_status', 'active')
                        ->orderBy('full_name')
                        ->get(['employee_id', 'full_name', 'preferred_name', 'employee_code']);

        // Logged-in user's department name
        $user = Auth::user();
        $department = null;

        if ($user->department_id) {
            $department = DB::table('departments')
                ->where('department_id', $user->department_id)
                ->value('name');
        } elseif ($user->employee_id) {
            $department = DB::table('employee_job')
                ->join('departments', 'employee_job.department_id', '=', 'departments.department_id')
                ->where('employee_job.employee_id', $user->employee_id)
                ->value('departments.name');
        }

        return Inertia::render('Inventory/AssetIssuance/Create', [
            'items'          => $items,
            'employees'      => $employees,
            'issuerName'     => $user->name,
            'issuerDept'     => $department ?? 'N/A',
        ]);
    }

    // ─── Store Issuance ───────────────────────────────────────────────────────

    public function store(Request $request)
    {
        $validated = $request->validate([
            'employee_id' => 'required|exists:employees,employee_id',
            'item_id'     => 'required|exists:issuable_items,id',
            'quantity'    => 'required|integer|min:1',
            'purpose'     => 'nullable|string|max:500',
        ]);

        $user = Auth::user();

        // Resolve department name
        $department = null;
        if ($user->department_id) {
            $department = DB::table('departments')
                ->where('department_id', $user->department_id)
                ->value('name');
        } elseif ($user->employee_id) {
            $department = DB::table('employee_job')
                ->join('departments', 'employee_job.department_id', '=', 'departments.department_id')
                ->where('employee_job.employee_id', $user->employee_id)
                ->value('departments.name');
        }

        AssetIssuance::create([
            'employee_id'       => $validated['employee_id'],
            'item_id'           => $validated['item_id'],
            'quantity'          => $validated['quantity'],
            'issued_by'         => $user->id,
            'issued_department' => $department,
            'issued_at'         => now(),
            'purpose'           => $validated['purpose'] ?? null,
            'status'            => 'issued',
        ]);

        return redirect()->route('asset-issuance.index')
            ->with('success', 'Item issued successfully.');
    }

    // ─── Mark as Returned ─────────────────────────────────────────────────────

    public function markReturned(AssetIssuance $assetIssuance)
    {
        $assetIssuance->update([
            'status'      => 'returned',
            'returned_at' => now(),
        ]);

        return back()->with('success', 'Item marked as returned.');
    }

    // ─── Mark as Lost ─────────────────────────────────────────────────────────

    public function markLost(AssetIssuance $assetIssuance)
    {
        $assetIssuance->update(['status' => 'lost']);

        return back()->with('success', 'Item marked as lost.');
    }

    // ─── Item Catalog — Store new item ────────────────────────────────────────

    public function storeItem(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:150|unique:issuable_items,name',
        ]);

        IssuableItem::create([
            'name'       => $validated['name'],
            'created_by' => Auth::id(),
        ]);

        return back()
            ->with('success', 'Item added to catalog.');
    }

    // ─── Item Catalog — Delete item ───────────────────────────────────────────

    public function destroyItem(IssuableItem $issuableItem)
    {
        if ($issuableItem->issuances()->exists()) {
            return back()->with('error', 'Cannot delete item — it has existing issuance records.');
        }

        $issuableItem->delete();
        return back()->with('success', 'Item removed from catalog.');
    }

    // ─── Employee Asset Report (for HRMS / Inventory) ─────────────────────────

    public function employeeReport(Request $request)
    {
        $employeeId = $request->query('employee_id');

        // Fetch all active employees for search and directory
        $employees = Employee::with([
            'job.department',
            'job.jobTitle',
        ])
        ->where('employment_status', 'active')
        ->withCount([
            'assetIssuances as total_assets_count',
            'assetIssuances as active_assets_count' => fn($q) => $q->where('status', 'issued'),
            'assetIssuances as returned_assets_count' => fn($q) => $q->where('status', 'returned'),
            'assetIssuances as lost_assets_count' => fn($q) => $q->where('status', 'lost'),
        ])
        ->orderBy('full_name')
        ->get()
        ->map(function ($emp) {
            return [
                'employee_id'           => $emp->employee_id,
                'full_name'             => $emp->full_name,
                'preferred_name'        => $emp->preferred_name ?: $emp->full_name,
                'employee_code'         => $emp->employee_code,
                'department'            => $emp->job?->department?->name ?? 'N/A',
                'job_title'             => $emp->job?->jobTitle?->job_title ?? 'N/A',
                'total_assets_count'    => (int) $emp->total_assets_count,
                'active_assets_count'   => (int) $emp->active_assets_count,
                'returned_assets_count' => (int) $emp->returned_assets_count,
                'lost_assets_count'     => (int) $emp->lost_assets_count,
            ];
        });

        $selectedEmployee = null;
        $issuances = [];
        $stats = [
            'total'    => 0,
            'issued'   => 0,
            'returned' => 0,
            'lost'     => 0,
        ];

        if ($employeeId) {
            $emp = Employee::with([
                'job.department',
                'job.jobTitle',
                'contacts' => fn($q) => $q->where('is_primary', true),
            ])->find($employeeId);

            if ($emp) {
                $primaryContact = $emp->contacts->first();
                $selectedEmployee = [
                    'employee_id'    => $emp->employee_id,
                    'full_name'      => $emp->full_name,
                    'preferred_name' => $emp->preferred_name ?: $emp->full_name,
                    'employee_code'  => $emp->employee_code,
                    'gender'         => $emp->gender,
                    'department'     => $emp->job?->department?->name ?? 'N/A',
                    'job_title'      => $emp->job?->jobTitle?->job_title ?? 'N/A',
                    'contact'        => $primaryContact?->contact_value ?? 'N/A',
                    'status'         => $emp->employment_status,
                ];

                $records = AssetIssuance::with(['item', 'issuedBy'])
                    ->where('employee_id', $emp->employee_id)
                    ->orderBy('issued_at', 'desc')
                    ->get();

                $issuances = $records->map(function ($item) {
                    return [
                        'id'                => $item->id,
                        'item_name'         => $item->item?->name ?? 'Unknown Item',
                        'quantity'          => $item->quantity,
                        'status'            => $item->status,
                        'issued_by'         => $item->issuedBy?->name ?? 'System',
                        'issued_department' => $item->issued_department ?? 'N/A',
                        'issued_at'         => $item->issued_at ? $item->issued_at->format('Y-m-d H:i') : null,
                        'returned_at'       => $item->returned_at ? $item->returned_at->format('Y-m-d H:i') : null,
                        'purpose'           => $item->purpose,
                    ];
                });

                $stats = [
                    'total'    => (int) $records->sum('quantity'),
                    'issued'   => (int) $records->where('status', 'issued')->sum('quantity'),
                    'returned' => (int) $records->where('status', 'returned')->sum('quantity'),
                    'lost'     => (int) $records->where('status', 'lost')->sum('quantity'),
                ];
            }
        }

        return Inertia::render('HRMS/EmployeeAssetReport', [
            'employees'        => $employees,
            'selectedEmployee' => $selectedEmployee,
            'issuances'        => $issuances,
            'stats'            => $stats,
            'initialEmployeeId'=> $employeeId ? (int)$employeeId : null,
        ]);
    }
}

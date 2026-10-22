<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\JobTitleController;
use App\Http\Controllers\LeaveRequestController;
use App\Http\Controllers\VehicleRequestController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\MeetingController;
use App\Http\Controllers\GatePassRequestController;
use App\Http\Controllers\StockController;
use App\Http\Controllers\StockRequestController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\TrainingController;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\HigherManagmentReportsController;
use App\Http\Controllers\EmployeeAttendanceController;
use App\Http\Controllers\AssetIssuanceController;

Route::get('/', function () {
    return redirect()->route('login');
});

Route::get('/services', function () {
    return Inertia::render('Services');
})->middleware(['auth', 'verified'])->name('services');

// Dashboard (protected)
Route::get('/dashboard', function () {
    return redirect()->route('services');
})->middleware(['auth', 'verified'])->name('dashboard');

// Profile routes (protected)
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/suites', function () {
    return Inertia::render('Suites');
})->middleware(['auth', 'verified'])->name('suite');

Route::get('/suite-services', function () {
    return Inertia::render('SuiteServices');
})->middleware(['auth', 'verified'])->name('suite-services');

Route::get('/admin', function () {
    return Inertia::render('Admin');
})->middleware(['auth', 'verified'])->name('admin');

Route::prefix('hrms')->name('hrms.')->middleware(['auth', 'verified'])->group(function () {

    Route::get('/emp-dashboard', function () {
        return Inertia::render('HRMS/EmpDashboard');
    })->name('emp-dashboard');

    Route::get('/meetings', [MeetingController::class, 'index'])->name('meetings.index');
    Route::post('/meetings', [MeetingController::class, 'store'])->name('meetings.store');

    Route::get('/leave-dashboard', [LeaveRequestController::class, 'dashboard'])->name('leave-dashboard');
    Route::get('/leave/on-leave-today', [LeaveRequestController::class, 'onLeaveToday'])->name('leave.on-leave-today');
    Route::get('/leave/pending', [LeaveRequestController::class, 'pendingLeave'])->name('leave.pending');
    Route::get('/leave/approved', [LeaveRequestController::class, 'approvedLeave'])->name('leave.approved');
    Route::get('/leave/rejected', [LeaveRequestController::class, 'rejectedLeave'])->name('leave.rejected');

    Route::get('/vehicle-request-dashboard', [VehicleRequestController::class, 'dashboard'])->name('vehicle-request-dashboard');
    Route::get('/personal-vehicle-requests', [VehicleRequestController::class, 'personalRequests'])->name('personal-vehicle-requests');
    Route::patch('/personal-vehicle-requests/{transportService}/invoice', [VehicleRequestController::class, 'confirmInvoice'])->name('personal-vehicle-requests.invoice');
    Route::get('/attendance-dashboard', [EmployeeAttendanceController::class, 'index'])->name('attendance-dashboard');
    Route::get('/attendance-dashboard/export', [EmployeeAttendanceController::class, 'export'])->name('attendance-dashboard.export');

    // Route::get('/hrms/meeting-dashboard', [MeetingController::class, 'dashboard'])->name('hrms.meeting-dashboard');

    Route::get('/payroll-dashboard', function () {
        return Inertia::render('HRMS/PayrollDashboard');
    })->name('payroll-dashboard');

    Route::get('/meeting-dashboard', [MeetingController::class, 'dashboard'])
        ->name('meeting-dashboard');

    Route::get('/training-dashboard', [TrainingController::class, 'create'])
        ->name('training-dashboard');

    Route::get('/users-management', function () {
        return Inertia::render('HRMS/UsersManagement');
    })->name('users-management');

    Route::resource('departments', DepartmentController::class);
    Route::resource('job-titles', JobTitleController::class);
    Route::resource('employees', EmployeeController::class);
});

Route::get('/hrms/emp-dashboard', [EmployeeController::class, 'empDashboard'])
  ->middleware(['auth'])
  ->name('emp-dashboard');

Route::prefix('hrms')->name('hrms.')->middleware(['auth'])->group(function () {
    Route::resource('employees', EmployeeController::class);
    Route::resource('users', UserController::class);
    Route::resource('roles', RoleController::class);
    Route::resource('permissions', PermissionController::class);
    Route::get('leave-balances/{employeeId}', [LeaveRequestController::class, 'getEmployeeLeaveBalances'])->name('leave-balances.show');
    Route::get('/training/departments/{department_id}/employees', [TrainingController::class, 'getEmployeesByDepartment']);
    Route::get('/training/employees',[TrainingController::class, 'getAllEmployees']);
    Route::post('/training/store',[TrainingController::class, 'store']);
    Route::get('/training',[TrainingController::class, 'index'])->name('hrms.training.index');
    // Route::get('/training-dashboard',[TrainingController::class, 'create']);
    Route::post('/training/{training}/cancel',[TrainingController::class, 'cancel'])->name('hrms.training.cancel');
});

Route::put('/hrms/meetings/{meeting}', [MeetingController::class, 'update'])
    ->name('hrms.meetings.update');

Route::patch('/hrms/meetings/{meeting}/cancel', [MeetingController::class, 'cancel'])
    ->name('hrms.meetings.cancel');

Route::get('/hrms/customer-handling', function () {
    return Inertia::render('HRMS/CustomerHandling');
});

Route::get('/hrms/gate-pass-requests', [GatePassRequestController::class, 'index']);

Route::get('/stocks', function () {
    return Inertia::render('Inventory/InventoryDashboard');
})->name('stocks.dashboard');

Route::get('/stocks/items', [StockController::class, 'index'])->name('stocks.index');

Route::get('/stocks/create', [StockController::class, 'create'])->name('stocks.create');
Route::post('/stocks', [StockController::class, 'store'])->name('stocks.store');
Route::get('/stocks/{stock}/edit', [StockController::class, 'edit'])->name('stocks.edit');
Route::put('/stocks/{stock}', [StockController::class, 'update'])->name('stocks.update');
Route::delete('/stocks/{stock}', [StockController::class, 'destroy'])->name('stocks.destroy');

// Asset Issuance
Route::get('/stocks/asset-issuance',            [AssetIssuanceController::class, 'index'])->name('asset-issuance.index');
Route::get('/stocks/asset-issuance/create',     [AssetIssuanceController::class, 'create'])->name('asset-issuance.create');
Route::post('/stocks/asset-issuance',           [AssetIssuanceController::class, 'store'])->name('asset-issuance.store');
Route::post('/stocks/asset-issuance/{assetIssuance}/return', [AssetIssuanceController::class, 'markReturned'])->name('asset-issuance.return');
Route::post('/stocks/asset-issuance/{assetIssuance}/lost',   [AssetIssuanceController::class, 'markLost'])->name('asset-issuance.lost');
Route::post('/stocks/asset-issuance/items',     [AssetIssuanceController::class, 'storeItem'])->name('asset-issuance.items.store');
Route::delete('/stocks/asset-issuance/items/{issuableItem}', [AssetIssuanceController::class, 'destroyItem'])->name('asset-issuance.items.destroy');

Route::get('/stock-requests', [StockRequestController::class, 'index'])->name('stock-requests.index');
Route::get('/stock-requests/create', [StockRequestController::class, 'create'])->name('stock-requests.create');
Route::post('/stock-requests', [StockRequestController::class, 'store'])->name('stock-requests.store');

Route::post('/stock-requests/{stock_request}/hod-approve', [StockRequestController::class, 'hodApprove'])->name('stock-requests.hod-approve');
Route::post('/stock-requests/{stock_request}/hod-reject', [StockRequestController::class, 'hodReject'])->name('stock-requests.hod-reject');

Route::post('/stock-requests/{stock_request}/approve', [StockRequestController::class, 'approve'])->name('stock-requests.approve');
Route::post('/stock-requests/{stock_request}/reject', [StockRequestController::class, 'reject'])->name('stock-requests.reject');

Route::get('/stock-requests/{stockRequest}/edit', [StockRequestController::class, 'edit'])->name('stock-requests.edit');
Route::put('/stock-requests/{stockRequest}', [StockRequestController::class, 'update'])->name('stock-requests.update');
Route::delete('/stock-requests/{stockRequest}', [StockRequestController::class, 'destroy'])->name('stock-requests.destroy');

// Reports routes
Route::get('/reports', [ReportController::class, 'index'])->name('reports.index');

Route::post('/hrms/employees/unavailable-bulk', [EmployeeController::class, 'markUnavailableBulk']);

Route::post('/hrms/employees/mark-available', [EmployeeController::class, 'markAvailable']);


//Help desk routes
Route::get('/ticket-dashboard', [TicketController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');
Route::post('/tickets', [TicketController::class, 'store'])->name('tickets.store');
Route::get('/tickets/{ticket}', [TicketController::class, 'show'])->name('tickets.show');
Route::post('/tickets/{ticket}/replies', [TicketController::class, 'storeReply'])->name('tickets.replies.store');
Route::patch('/tickets/{ticket}/status', [TicketController::class, 'updateStatus'])->name('tickets.status.update');
Route::patch('/tickets/{ticket}/read', [TicketController::class, 'markAsRead'])->name('tickets.read');

// Platform and Common Issues CRUD Routes
Route::post('/platforms', [\App\Http\Controllers\PlatformController::class, 'store'])->name('platforms.store');
Route::patch('/platforms/{platform}', [\App\Http\Controllers\PlatformController::class, 'update'])->name('platforms.update');
Route::delete('/platforms/{platform}', [\App\Http\Controllers\PlatformController::class, 'destroy'])->name('platforms.destroy');
Route::post('/platforms/{platform}/issues', [\App\Http\Controllers\PlatformController::class, 'storeIssue'])->name('platforms.issues.store');
Route::patch('/issues/{issue}', [\App\Http\Controllers\PlatformController::class, 'updateIssue'])->name('issues.update');
Route::delete('/issues/{issue}', [\App\Http\Controllers\PlatformController::class, 'destroyIssue'])->name('issues.destroy');

Route::get('/higher-management-reports', [HigherManagmentReportsController::class, 'index'])->name('higher-management-reports.index');

Route::get('/gate-pass-requests/export', [GatePassRequestController::class, 'export'])->name('gate-pass-requests.export');



Route::get('/vehicle-requests/dashboard/export', [VehicleRequestController::class, 'export'])->name('vehicle-requests.export');

Route::get('/attendance-dashboard', [EmployeeAttendanceController::class, 'index'])->middleware(['auth', 'verified']);
Route::get('/attendance-dashboard/export', [EmployeeAttendanceController::class, 'export'])->middleware(['auth', 'verified']);
Route::patch('/attendance-dashboard/{attendance}/status', [EmployeeAttendanceController::class, 'updateStatus'])->middleware(['auth', 'verified'])->name('attendance-dashboard.update-status');

require __DIR__.'/auth.php';
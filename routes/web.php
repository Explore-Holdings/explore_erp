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
use App\Http\Controllers\StockController;
use App\Http\Controllers\StockRequestController;
use App\Http\Controllers\ReportController;

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

Route::get('/vehicle-request-dashboard', [VehicleRequestController::class, 'dashboard'])->name('vehicle-request-dashboard');

// Route::get('/hrms/meeting-dashboard', [MeetingController::class, 'dashboard'])->name('hrms.meeting-dashboard');

Route::get('/payroll-dashboard', function () {
    return Inertia::render('HRMS/PayrollDashboard');
})->name('payroll-dashboard');

Route::get('/meeting-dashboard', [MeetingController::class, 'dashboard'])
    ->name('meeting-dashboard');

Route::get('/training-dashboard', function () {
    return Inertia::render('HRMS/TrainingDashboard');
})->name('training-dashboard');

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
});

Route::put('/hrms/meetings/{meeting}', [MeetingController::class, 'update'])
    ->name('hrms.meetings.update');

Route::patch('/hrms/meetings/{meeting}/cancel', [MeetingController::class, 'cancel'])
    ->name('hrms.meetings.cancel');

    Route::get('/hrms/customer-handling', function () {
    return Inertia::render('HRMS/CustomerHandling');
});

// Inventory Module Routes
Route::middleware(['auth', 'verified'])->group(function () {
    // Stocks routes
    Route::get('/stocks', [StockController::class, 'index'])->name('stocks.index');
    
    Route::middleware('role:Admin,Inventory Manager')->group(function () {
        Route::get('/stocks/create', [StockController::class, 'create'])->name('stocks.create');
        Route::post('/stocks', [StockController::class, 'store'])->name('stocks.store');
        Route::get('/stocks/{stock}/edit', [StockController::class, 'edit'])->name('stocks.edit');
        Route::put('/stocks/{stock}', [StockController::class, 'update'])->name('stocks.update');
        Route::delete('/stocks/{stock}', [StockController::class, 'destroy'])->name('stocks.destroy');
    });

    // Stock requests routes
    Route::get('/stock-requests', [StockRequestController::class, 'index'])->name('stock-requests.index');
    Route::get('/stock-requests/create', [StockRequestController::class, 'create'])->name('stock-requests.create');
    Route::post('/stock-requests', [StockRequestController::class, 'store'])->name('stock-requests.store');
    
    // HOD approvals
    Route::middleware('role:Admin,HOD')->group(function () {
        Route::post('/stock-requests/{stock_request}/hod-approve', [StockRequestController::class, 'hodApprove'])->name('stock-requests.hod-approve');
        Route::post('/stock-requests/{stock_request}/hod-reject', [StockRequestController::class, 'hodReject'])->name('stock-requests.hod-reject');
    });

    // Manager approvals & CRUD
    Route::middleware('role:Admin,Inventory Manager')->group(function () {
        Route::post('/stock-requests/{stock_request}/approve', [StockRequestController::class, 'approve'])->name('stock-requests.approve');
        Route::post('/stock-requests/{stock_request}/reject', [StockRequestController::class, 'reject'])->name('stock-requests.reject');
        
        Route::get('/stock-requests/{stockRequest}/edit', [StockRequestController::class, 'edit'])->name('stock-requests.edit');
        Route::put('/stock-requests/{stockRequest}', [StockRequestController::class, 'update'])->name('stock-requests.update');
        Route::delete('/stock-requests/{stockRequest}', [StockRequestController::class, 'destroy'])->name('stock-requests.destroy');
    });

    // Reports routes
    Route::get('/reports', [ReportController::class, 'index'])->name('reports.index');
});

require __DIR__.'/auth.php';
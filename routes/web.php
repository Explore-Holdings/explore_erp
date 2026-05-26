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

require __DIR__.'/auth.php';
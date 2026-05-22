<?php

require __DIR__ . '/../vendor/autoload.php';

$app = require __DIR__ . '/../bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\User;
use App\Models\Employee;
use App\Models\EmployeeJob;
use App\Models\Role;
use App\Models\JobTitle;
use App\Models\Department;

$emails = ['department@example.com', 'it@example.com'];

foreach ($emails as $email) {
    $user = User::where('email', $email)->first();
    if (! $user) {
        echo "User {$email} not found\n";
        continue;
    }

    // Detach roles
    try {
        $user->roles()->detach();
    } catch (Throwable $e) {
        // ignore
    }

    // If user is linked to an employee, remove employee_job and employee
    if ($user->employee_id) {
        $empId = $user->employee_id;
        EmployeeJob::where('employee_id', $empId)->delete();
        Employee::where('employee_id', $empId)->delete();
        echo "Deleted employee and job for employee_id {$empId}\n";
    }

    $user->delete();
    echo "Deleted user {$email}\n";
}

// Optionally remove roles if no users attached
$rolesToCheck = ['department', 'it'];
foreach ($rolesToCheck as $rname) {
    $role = Role::where('name', $rname)->first();
    if ($role) {
        if ($role->users()->count() === 0) {
            $role->delete();
            echo "Deleted role {$rname}\n";
        } else {
            echo "Role {$rname} not deleted (still has users)\n";
        }
    }
}

// Clean up IT Staff job title if unused
$jt = JobTitle::where('name', 'IT Staff')->first();
if ($jt) {
    $count = EmployeeJob::where('job_title_id', $jt->job_title_id)->count();
    if ($count === 0) {
        $jt->delete();
        echo "Deleted job title IT Staff\n";
    } else {
        echo "Job title IT Staff not deleted (in use)\n";
    }
}

// Clean up IT department if unused
$dep = Department::where('name', 'IT')->first();
if ($dep) {
    $count = EmployeeJob::where('department_id', $dep->department_id)->count();
    if ($count === 0) {
        $dep->delete();
        echo "Deleted department IT\n";
    } else {
        echo "Department IT not deleted (in use)\n";
    }
}

echo "Cleanup complete.\n";

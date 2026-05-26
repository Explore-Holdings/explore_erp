<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StockRequest extends Model
{
    protected $fillable = ['employee_id', 'stock_id', 'quantity', 'status', 'hod_status', 'processed_by', 'hod_approved_by'];

    protected $appends = ['department_id'];

    public function getDepartmentIdAttribute()
    {
        return $this->employee?->job?->department_id;
    }

    public function employee()
    {
        return $this->belongsTo(Employee::class, 'employee_id', 'employee_id');
    }

    public function user()
    {
        return $this->hasOneThrough(
            User::class,
            Employee::class,
            'employee_id', // Foreign key on employees table
            'employee_id', // Foreign key on users table
            'employee_id', // Local key on stock_requests table
            'employee_id'  // Local key on employees table
        );
    }

    public function department()
    {
        return $this->hasOneThrough(
            Department::class,
            EmployeeJob::class,
            'employee_id',   // Foreign key on employee_job table
            'department_id', // Foreign key on departments table
            'employee_id',   // Local key on stock_requests table
            'department_id'  // Local key on employee_job table
        );
    }

    public function stock()
    {
        return $this->belongsTo(Stock::class);
    }

    public function processor()
    {
        return $this->belongsTo(User::class, 'processed_by');
    }

    public function hodApprover()
    {
        return $this->belongsTo(User::class, 'hod_approved_by');
    }
}

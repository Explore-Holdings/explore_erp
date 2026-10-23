<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'employee_id',
        'email',
        'password',
        'recovery_key',
        'role',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    public function employee()
    {
        return $this->belongsTo(Employee::class, 'employee_id', 'employee_id');
    }

    public function roles()
    {
        return $this->belongsToMany(Role::class, 'user_roles', 'user_id', 'role_id');
    }

        /**
     * Get the department for the user.
     */
    public function department()
    {
        return $this->belongsTo(Department::class, 'department_id', 'department_id');
    }

        /**
     * Check if user is Admin or Administrator.
     */
    public function isAdmin(): bool
    {
        if (is_string($this->role) && in_array(strtolower(trim($this->role)), ['admin', 'administrator'])) {
            return true;
        }

        if (is_object($this->role) && isset($this->role->name) && in_array(strtolower(trim($this->role->name)), ['admin', 'administrator'])) {
            return true;
        }

        if (method_exists($this, 'roles')) {
            if ($this->relationLoaded('roles')) {
                return $this->roles->contains(fn($r) => in_array(strtolower(trim($r->name ?? '')), ['admin', 'administrator']));
            }
            return $this->roles()->whereIn(\Illuminate\Support\Facades\DB::raw('LOWER(name)'), ['admin', 'administrator'])->exists();
        }

        return false;
    }

    /**
     * Check if user is IT HOD or Admin.
     */
    public function isItHod(): bool
    {
        // 1. Check by role: Admin is allowed
        if ($this->isAdmin()) {
            return true;
        }

        // 2. Must be HOD
        if (strcasecmp($this->role, 'HOD') !== 0) {
            return false;
        }

        // 3. Must be in the IT department (department_id 24)
        if ($this->employee_id) {
            $itDepartmentId = \Illuminate\Support\Facades\Cache::remember('it_department_id', 3600, function () {
                return \Illuminate\Support\Facades\DB::table('departments')
                    ->where('name', 'IT')
                    ->value('department_id');
            });

            if ($itDepartmentId) {
                $userDeptId = \Illuminate\Support\Facades\DB::table('employee_job')
                    ->where('employee_id', $this->employee_id)
                    ->value('department_id');

                if ($userDeptId && (int)$userDeptId === (int)$itDepartmentId) {
                    return true;
                }
            }
        }

        if ($this->department_id) {
            $itDepartmentId = \Illuminate\Support\Facades\Cache::remember('it_department_id', 3600, function () {
                return \Illuminate\Support\Facades\DB::table('departments')
                    ->where('name', 'IT')
                    ->value('department_id');
            });

            if ($itDepartmentId && (int)$this->department_id === (int)$itDepartmentId) {
                return true;
            }
        }

        return false;
    }

}

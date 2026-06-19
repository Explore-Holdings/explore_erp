<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TrainingMember extends Model
{
    protected $table = 'training_members';

    public function employee()
    {
        return $this->belongsTo(
            Employee::class,
            'user_id',
            'employee_id'
        );
    }
}
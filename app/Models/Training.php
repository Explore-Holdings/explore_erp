<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Training extends Model
{
    protected $fillable = [
        'topic',
        'date',
        'start_time',
        'end_time',
        'description',
        'attachments',
        'remarks',
        'status'
    ];

    public function members()
    {
        return $this->hasMany(
            TrainingMember::class,'training_id'
        );
    }
}
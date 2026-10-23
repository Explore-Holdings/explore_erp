<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AssetIssuance extends Model
{
    protected $fillable = [
        'employee_id', 'item_id', 'quantity',
        'issued_by', 'issued_department',
        'issued_at', 'purpose', 'status', 'returned_at',
    ];

    protected $casts = [
        'issued_at'   => 'datetime',
        'returned_at' => 'datetime',
    ];

    public function employee()
    {
        return $this->belongsTo(Employee::class, 'employee_id', 'employee_id');
    }

    public function item()
    {
        return $this->belongsTo(IssuableItem::class, 'item_id');
    }

    public function issuedBy()
    {
        return $this->belongsTo(User::class, 'issued_by', 'id');
    }
}

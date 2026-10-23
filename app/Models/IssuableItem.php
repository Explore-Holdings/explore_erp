<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class IssuableItem extends Model
{
    protected $fillable = ['name', 'created_by'];

    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by', 'id');
    }

    public function issuances()
    {
        return $this->hasMany(AssetIssuance::class, 'item_id');
    }
}

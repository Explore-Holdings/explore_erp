<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{
    protected $fillable = ['name', 'sku', 'description', 'quantity', 'unit'];

    public function requests()
    {
        return $this->hasMany(StockRequest::class);
    }

    public static function generateSku($name)
    {
        $words = explode(' ', preg_replace('/[^A-Za-z0-9 ]/', '', $name));
        $initials = '';
        foreach ($words as $word) {
            if (!empty($word)) {
                $initials .= strtoupper($word[0]);
            }
        }
        $initials = substr(preg_replace('/[^A-Z]/', '', $initials), 0, 3);
        if (empty($initials)) {
            $initials = 'GEN';
        }

        $prefix = 'STK-' . $initials . '-';
        
        $num = 1;
        do {
            $code = $prefix . str_pad($num, 3, '0', STR_PAD_LEFT);
            $num++;
        } while (self::where('sku', $code)->exists());

        return $code;
    }
}

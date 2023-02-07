<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Colour extends Model
{
    use HasFactory;

    protected $table = 'colours';

    public function product()
    {
        return $this->belongsToMany(Product::class);
    }

    public function order_details()
    {
        return $this->hasOne(OrderDetails::class);
    }
}

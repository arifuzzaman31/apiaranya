<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use HasFactory,SoftDeletes;

    public function product()
    {
        return $this->hasOne(Product::class);
    }
    public function order_details()
    {
        return $this->hasOne(OrderDetails::class);
    }

}
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductFabric extends Model
{
    use HasFactory;

    protected $table = 'product_fabrics';

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}

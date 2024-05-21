<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Community extends Model
{
    use HasFactory;

    public function product()
    {
        return $this->hasManyThrough(Product::class, ProductFabric::class, 'fabric_id', 'id', 'fabric_id', 'product_id');
    }
}

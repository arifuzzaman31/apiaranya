<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductSize extends Model
{
    use HasFactory;

    protected $table = 'product_sizes';

    public function product(){

        return $this->hasManyThrough(
            Product::class,
            Size::class,
            'id',
            'size_id');
    }
}

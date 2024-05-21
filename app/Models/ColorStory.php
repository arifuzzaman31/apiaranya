<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ColorStory extends Model
{
    use HasFactory;

    public function product()
    {
        return $this->hasManyThrough(Product::class, ProductColour::class, 'colour_id', 'id', 'color_id', 'product_id');
        // return $this->hasManyThrough(Product::class, ProductColour::class, 'colour_id', 'id', 'id', 'product_id');
    }
}

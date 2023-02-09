<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    public function category()
    {
        return $this->belongsTo(Category::class)->withDefault([
            'id'                   =>  0,
            'category_name'        =>  'unknown',
            'slug'                 =>  'unknown'
          ]);
    }

    public function inventory()
    {
        return $this->hasOne(Inventory::class);
    }

    public function product_colour()
    {
        return $this->belongsToMany(Colour::class,'product_colours');
    }

    public function product_size()
    {
        return $this->belongsToMany(Size::class,'product_sizes');
    }

    public function campaign()
    {
        return $this->belongsToMany(Campaign::class,'campaign_products');
    }

    public function order_details()
    {
        return $this->hasOne(OrderDetails::class,'product_id');
    }
}

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

    public function discount()
    {
        return $this->hasMany(Discount::class);
    }

    public function product_colour()
    {
        return $this->belongsToMany(Colour::class,'product_colours')->withTimestamps();
    }

    public function product_fabric()
    {
        return $this->belongsToMany(Fabric::class,'product_fabrics')->withTimestamps();
    }

    public function product_size()
    {
        return $this->belongsToMany(Size::class,'product_sizes')->withTimestamps();
    }

    public function campaign()
    {
        return $this->belongsToMany(Campaign::class,'campaign_products')->withTimestamps();
    }

    public function order_details()
    {
        return $this->hasOne(OrderDetails::class,'product_id');
    }
}

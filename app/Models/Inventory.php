<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Inventory extends Model
{
    use HasFactory;

    protected $fillable = ['id', 'product_id', 'colour_id', 'size_id', 'stock','cpu','mrp','sku', 'warning_amount', 'warehouse'];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function colour()
    {
        return $this->belongsTo(Colour::class);
    }

    public function size()
    {
        return $this->belongsTo(Size::class);
    }
}

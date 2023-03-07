<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Page extends Model
{
    use HasFactory;

    protected $fillable = ['id', 'page_name', 'page_type', 'image_one', 'back_url_one', 'image_two', 'back_url_two', 'image_three', 'back_url_three', 'image_four', 'back_url_four', 'image_five', 'back_url_five', 'image_six', 'back_url_six', 'status'];
}

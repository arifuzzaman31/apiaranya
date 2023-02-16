<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function categoryData($id)
    {
        try {
            //code...
            $category = Category::find($id);
            return new CategoryResource($category);
        } catch (\Throwable $th) {
            return $this->errorMessage();
        }
    }
}

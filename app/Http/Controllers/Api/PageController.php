<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;

class PageController extends Controller
{
    public function homeImageData()
    {
        $data = Page::where('page_name','home')->first();
        return response()->json($data);
    }
}

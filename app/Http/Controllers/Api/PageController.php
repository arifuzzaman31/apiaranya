<?php

namespace App\Http\Controllers\Api;

use App\Http\AllStatic;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use Illuminate\Support\Facades\DB;

class PageController extends Controller
{
    public function homeImageData()
    {
        $data = Page::where('page_name','home')->first();
        return response()->json($data);
    }

    public function getInfo($slug = '')
    {
        $data = DB::table('informations')->where('status',AllStatic::$active)->orderBy('id');
            if($slug != ''){
                $data = $data->where('slug',$slug)->first();
            } else {
                $data = $data->get();
            }
        
        return response()->json($data);
    }
}

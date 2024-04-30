<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StoryController extends Controller
{
    public function index()
    {
        $story = DB::table('stories')->first();
        return view('pages.story.home',['story' => $story]);
    }

    public function getStoryData()
    {
        return DB::table('stories')->first();
    }

}

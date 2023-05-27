<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\OrderDetails;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $userData = DB::table('users')->select(DB::raw("(COUNT(*)) as count"),DB::raw("CAST(MONTHNAME(created_at) AS CHAR(3)) as monthname"))
            ->whereYear('created_at', date('Y'))
            ->orderBy('created_at')
            ->groupBy('monthname')
            ->get();

        $saleByCat = DB::table('order_details')
            ->join('categories','order_details.category_id','categories.id')
            ->select(DB::raw('count(*) AS productsCount'),'categories.category_name AS catname', 'category_id')
            ->groupBy('category_id')
            ->groupBy('catname')
            ->havingRaw('productsCount >= 1')
            // ->take(2)
            ->get();
        
        return response()->json(['customer' => $userData,'sale_by_cat' => $saleByCat]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function topProductSale()
    {
        return DB::table('order_details')
            ->join('categories','order_details.category_id','categories.id')
            ->select(DB::raw('count(*) AS productsCount'),'categories.category_name AS catname', 'category_id')
            ->groupBy('category_id')
            ->groupBy('catname')
            ->havingRaw('productsCount >= 1')
            // ->take(2)
            ->get();

        return $orders = Category::with(['order_details' => function($query) {
            $query->groupBy('category_id')
                ->select(DB::raw('count(*) AS productsCount'), 'category_id');
        }])
        ->get();

        $countdata = DB::table('order_details')
                ->join('categories', 'order_details.category_id', '=', 'categories.id')
                ->select('order_details.*', 'categories.category_name',DB::raw("(COUNT(*)) as totalselecat"))
                ->get()
                ->groupBy('category_id');
        return response()->json($countdata);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Discount  $discount
     * @return \Illuminate\Http\Response
     */
    public function show(Discount $discount)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Discount  $discount
     * @return \Illuminate\Http\Response
     */
    public function edit(Discount $discount)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Discount  $discount
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Discount $discount)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Discount  $discount
     * @return \Illuminate\Http\Response
     */
    public function destroy(Discount $discount)
    {
        //
    }
}
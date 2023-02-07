<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Order;
use App\Models\OrderDetails;

class CustomerController extends Controller
{
    public function index()
    {
        return view('pages.customer.customer');
    }

    public function getCustomerOrder($id)
    {
        $order = Order::where('user_id',$id)->with('delivery')->orderBy('id','desc');
    
        $order = $order->paginate(1);
        
        return view('pages.customer.order',['orders' => $order]);
    }

    public function getCustomerOrderDetail($id)
    {
        $order = Order::where('id',$id)->with('delivery')->orderBy('id','desc')->first();
        $details = OrderDetails::with(['product','colour','size','fabric','order'])->where('order_id',$id)->get();
        
        return view('pages.customer.order_details',['details' => $details,'orders' => $order]);
    }

    public function getCustomer(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 10;
        $user = User::orderBy('id','desc');
        if($request->keyword != ''){
            $user = $user->where('name','like','%'.$request->keyword.'%');
            $user = $user->orWhere('email','like','%'.$request->keyword.'%');
            $user = $user->orWhere('phone','like','%'.$request->keyword.'%');
        }
        if($noPagination != ''){
            $user = $user->get();
        } else {
            $user = $user->paginate($dataQty);
        }
        return response()->json($user);

    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class CustomerController extends Controller
{
    public function index()
    {
        return view('pages.customer.customer');
    }

    public function getCustomer(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 10;
        $user = User::orderBy('id','desc');
        if($request->keyword != ''){
            $user = $user->where('first_name','=','%'.$request->keyword.'%');
            $user = $user->orWhere('email','=','%'.$request->keyword.'%');
            $user = $user->orWhere('phone','=','%'.$request->keyword.'%');
        }
        if($noPagination != ''){
            $user = $user->get();
        } else {
            $user = $user->paginate($dataQty);
        }
        return response()->json($user);

    }
}

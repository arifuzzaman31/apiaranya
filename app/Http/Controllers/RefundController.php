<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RefundController extends Controller
{
    public function index()
    {
        return view('pages.refund.refund');
    }

    public function configure()
    {
        $configure = DB::table('refund_configure')->first();
        return view('pages.refund.configure',['configure' => json_encode($configure)]);
    }

    public function update(Request $request)
    {
        try {
            // return response()->json(['status' => 'success', 'message' => 'Refund Updated Successful!']);
            
            DB::table('refund_configure')
                ->where('id',$request->id)
                ->update([
                    'refund_within_days' => $request->refund_within_days,
                    'status' => $request->status
                ]);

            return response()->json(['status' => 'success', 'message' => 'Refund Updated Successful!']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }
}

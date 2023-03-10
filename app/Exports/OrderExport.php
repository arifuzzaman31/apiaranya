<?php

namespace App\Exports;

use App\Models\Order;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class OrderExport implements FromView
{
    protected $keyword,$byposition,$status;

	public function __construct($keyword,$byposition,$status) {
	        $this->keyword = $keyword;
	        $this->byposition = $byposition;
	        $this->status = $status;
	 }
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        $order = Order::with('user','delivery','user_billing_info','order_details')->orderBy('updated_at','desc');

        if($this->byposition != ''){
            $order = $order->where('order_position',$this->byposition);
        }

        if($this->status != ''){
            $order = $order->where('status',$this->status);
        }

        if ($this->keyword != '') 
        {
            $order = $order->where('order_id','like','%'.$this->keyword.'%');
        }
      
      	$order =  $order->get();
       return view('pages.order.excel.order_excel',['orders' => $order]);
    }
}

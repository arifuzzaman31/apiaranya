<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'                => $this->id,
            'order_id'          => $this->order_id,
            'user_id'           => $this->user_id,
            'user'              =>  $this->whenLoaded('user'),
            'order_detail'      =>  $this->whenLoaded('order_details'),
            'total_price'       => $this->total_price,
            'vat_rate'          => $this->vat_rate,
            'vat_amount'        => $this->vat_amount,
            'total_item'        => $this->total_item,
            'shipping_method'   => $this->shipping_method,
            'coupon'            => $this->coupon,
            'payment_method'    => $this->payment_method,
            'payment_method_text' => paymentMethodType($this->payment_method),
            'payment_method_name' => $this->payment_method_name,
            'discount'          => $this->discount,
            'coupon_discount'   => $this->coupon_discount,
            'payment_status'    => $this->payment_status,
            'payment_status_text' => $this->payment_status == 1 ? 'Paid' : 'Unpaid',
            'order_date'        => date('j M Y', strtotime($this->order_date)),
            'requested_delivery_date'       => $this->requested_delivery_date,
            'payment_date'      => date('j M Y', strtotime($this->payment_date)),
            'shipping_amount'   => $this->shipping_amount,
            'tracking_id'       => $this->tracking_id,
            'status'            => $this->status,
            'status_text'       => orderStatus($this->status),
            'created_date'      => date('j M Y', strtotime($this->created_at)),
        ];
    }
}

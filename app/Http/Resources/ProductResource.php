<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\CategoryResource;

class ProductResource extends JsonResource
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
            'p_name'            => $this->product_name,
            'cat_id'            => $this->category_id,
            'p_category'        => new CategoryResource($this->whenLoaded('category')),
            'subcat_id'         => $this->sub_category_id,
            'p_description'     => $this->description,
            'p_sku'             => $this->sku,
            'feature_image'     => $this->product_image,
            'p_image_one'       => $this->image_one,
            'p_image_two'       => $this->image_two,
            'p_image_three'     => $this->image_three,
            'p_image_four'      => $this->image_four,
            'p_image_five'      => $this->image_five,
            'p_cost_price'      => $this->cost,
            'p_sale_price'      => $this->mrp_price,
            'p_dimension'       => $this->dimension,
            'p_weight'          => $this->weight,
            'p_care'            => $this->care,
            'p_design_code'     => $this->design_code,
            'p_sizes'           => $this->whenLoaded('product_size'),
            'p_colours'         => $this->whenLoaded('product_colour'),
            'p_stocks'          => $this->whenLoaded('inventory'),
            'country_of_origin' => $this->country_of_origin,
            'status'            => $this->status,
            'status_text'       => $this->status == 1 ? 'Active' : 'Deactive',
            'created_date'      => date('j M Y', strtotime($this->created_at)),
        ];
    }
}

<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CategoryResource extends JsonResource
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
            'id'                =>  $this->id,
            'cat_name'          =>  $this->category_name,
            'slug'              =>  $this->slug,
            'parent_cat'        =>  $this->parent_category,
            'cat_img_one'       =>  $this->category_image_one,
            'cat_img_two'       =>  $this->category_image_two,
            'cat_img_three'     =>  $this->category_image_three,
            'cat_video'         =>  $this->category_video,
            'status'            =>  $this->status,
            'status_text'       =>  $this->status == 0 ? 'Active':'Deactive',
            'precedence'        =>  $this->precedence
        ];
    }
}

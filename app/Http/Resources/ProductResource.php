<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

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
            'data' => [
                'product' => [
                    'id' => $this->id,
                    'name' => $this->name,
                    'price' => $this->price,
                    'category' => $this->category->name,
                    'description' => $this->description,
                    'avatar' => $this->avatar,
                    'created'=> $this->created_at,
                    'updated'=> $this->updated_at,
                ],
            ],
        ];
    }
}

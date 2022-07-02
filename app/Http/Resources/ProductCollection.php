<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;
use Illuminate\Support\Str;

class ProductCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'data' => [
                'products' => $this->collection->map(function ($data) {
                    return [
                        'id'   => $data->id,
                        'name' => $data->name,
                        'price' => $data->price,
                        'category' => $data->category->name,
                        'description' => Str::limit($data->description, 10),
                        'avatar' => $data->avatar,
                    ];
                }),
            ],
        ];
    }
}

<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

class CartCollection extends ResourceCollection
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
                'items' => $this->collection->map(function ($item) {
                    return [
                        'id'   => $item->id,
                        'session_id' => $item->session_id,
                        'user_id' => $item->user_id,
                        'created_at' => $item->created_at,
                        'updated_at' => $item->updated_at,
                        'products' => $item->products->map(function ($data) {
                            return [
                                'id'   => $data->id,
                                'product_id' => $data->pivot->product_id,
                                'qty' => $data->pivot->qty,
                                'total_price' => $data->pivot->total_price,
                            ];
                        }),
                    ];
                }),
            ],
        ];
    }
}

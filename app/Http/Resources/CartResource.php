<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CartResource extends JsonResource
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
                'cart' => [
                    'id' => $this->id,
                    'session_id' => $this->session_id,
                    'user_id' => $this->user_id,
                    'products' => $this->products->map(function ($data) {
                        return [
                                'id'   => $data->id,
                                'product_id' => $data->pivot->product_id,
                                'qty' => $data->pivot->qty,
                                'total_price' => $data->pivot->total_price,
                            ];
                    }),
                    'created_at'=> $this->created_at,
                    'updated_at'=> $this->updated_at,
                ],
            ],
        ];
    }
}

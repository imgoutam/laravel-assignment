<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Cart extends Model
{
    use HasFactory;

    protected $table = 'cart';

    protected $fillable = ['session_id', 'user_id'];

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($cart) {
            $cart->session_id = (string) Str::random(20);
        });

        static::deleting(function ($cart) {
            $cart->products()->detach();
        });
    }

    public function products()
    {
        return $this->belongsToMany(Product::class, 'cart_product')
            ->withPivot(['qty', 'total_price']);
    }
}

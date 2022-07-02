<?php

namespace Database\Seeders;

use App\Models\Cart;
use App\Models\Category;
use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Category::factory()
            ->count(2)
            ->hasProducts(10)
            ->create();

        $products = Product::all();

        User::factory()
            ->count(5)
            ->create()
            ->each(function ($user) use ($products) {
                Cart::factory(rand(5, 10))->create([
                    'user_id' => Arr::random([$user->id, null], 1)[0],
                ])->each(function ($cart) use ($products) {
                    $items = [];
                    foreach ($products->random(5)->take(rand(1, 5)) as $product) {
                        $qty = rand(1, 5);
                        $items[$product->id] = [
                            'qty' => $qty,
                            'total_price' => $qty * $product->price,
                         ];
                    }
                    $cart->products()->attach($items);
                });
            });
    }
}

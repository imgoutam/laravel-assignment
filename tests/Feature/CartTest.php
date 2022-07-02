<?php

namespace Tests\Feature;

use App\Models\Cart;
use App\Models\Product;
use App\Models\User;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CartTest extends TestCase
{
    use WithFaker;

    /**
     * @test
     * Test careate a cart
     */
    public function test_create_a_cart()
    {
        $response = $this->postJson('/api/cart/', [
            'product_id' => 1,
            'qty' => 2,
        ]);

        $response
             ->assertStatus(201)
             ->assertJsonStructure([
                'data' => [
                    'cart' => [
                        'products' => [
                            '*' => [
                                 'id',
                                 'product_id',
                                 'qty',
                                 'total_price',
                            ],
                        ],
                    ],
                ],
            ]);
    }

    /**
     * @test
     * Test update a product
     */
    public function test_update_a_cart()
    {
        $response = $this->postJson('/api/cart/', [
            'product_id' => 1,
            'qty' => 2,
        ]);

        $session_id = $response->getData()->data->cart->session_id;
        $cart_id = $response->getData()->data->cart->id;

        $response = $this->putJson("/api/cart/{$cart_id}", [
            'cart_session_id' => $session_id,
            'product_id' => 1,
            'qty' => 5,
        ]);

        $response
             ->assertStatus(200)
             ->assertJsonFragment(['qty' => 5])
             ->assertJsonStructure([
                'data' => [
                    'cart' => [
                        'products' => [
                            '*' => [
                                 'id',
                                 'product_id',
                                 'qty',
                                 'total_price',
                            ],
                        ],
                    ],
                ],
            ]);
    }

    /**
     * @test
     * Test delete a product
     */
    public function test_delete_a_cart()
    {
        $totalCarts = Cart::count();
        $cart = Cart::factory()->create();
        $product = Product::find(1);

        $cart->products()->attach([
             $product->id => [
                'qty' => 1,
                'total_price' => $product->price,
             ],
        ]);

        $response = $this->deleteJson("/api/cart/{$cart->id}");
        $response->assertStatus(204);
        $this->assertEquals($totalCarts, Cart::count());
    }

    /**
     * @test
     * Test show cart list
     */
    public function test_show_cart_list()
    {
        $response = $this->postJson('/api/cart/', [
            'product_id' => 1,
            'qty' => 2,
        ]);

        $session_id = $response->getData()->data->cart->session_id;

        $response = $this->get("/api/cart?cart_session_id={$session_id}");

        $response
            ->assertOk()
            ->assertJsonStructure([
                'data' => [
                    'items' => [
                        '*' => [
                             'id',
                             'session_id',
                             'user_id',
                             'created_at',
                             'updated_at',
                             'products',
                        ],
                    ],
                ],
            ])
            ->assertSee('Next')
            ->assertJsonFragment(['per_page' => 15])
            ->assertJson([
              'meta' => [
                   'current_page' => 1,
                ],
            ]);
    }

    /**
     * @test
     * Test a authenticated user can see his cart list only
     */
    public function test_a_authenticated_user_can_see_his_cart_list_only()
    {
        $user = User::factory()->create();
        $this->actingAs($user, 'api');

        $response = $this->postJson('/api/cart/', [
            'product_id' => 1,
            'qty' => 2,
        ]);

        $response = $this->get('/api/cart');

        $response
            ->assertOk()
            ->assertJsonStructure([
                'data' => [
                    'items' => [
                        '*' => [
                             'id',
                             'session_id',
                             'user_id',
                             'created_at',
                             'updated_at',
                             'products',
                        ],
                    ],
                ],
            ])
            ->assertSee('Next')
            ->assertJsonFragment(['user_id' => $user->id])
            ->assertJson([
              'meta' => [
                   'current_page' => 1,
                   'total' => 1,
                ],
            ]);
    }

    /**
     * @test
     * Test a authenticated user can not see other users cart list
     */
    public function test_a_authenticated_user_can_not_see_other_users_cart_list()
    {
        $user1 = User::factory()->create();
        $this->actingAs($user1, 'api');

        $response = $this->postJson('/api/cart/', [
            'product_id' => 1,
            'qty' => 2,
        ]);

        $user2 = User::factory()->create();
        $this->actingAs($user2, 'api');

        $response = $this->get('/api/cart');

        $response
             ->assertOk()
             ->assertJson([
                'data' => [
                    'items' => [],
                ],
            ]);
    }

    /**
     * @test
     * Test  a authenticated user can not delete other users cart
     */
    public function test_a_authenticated_user_can_not_delete_other_users_cart()
    {
        $user1 = User::factory()->create();
        $this->actingAs($user1, 'api');

        $response = $this->postJson('/api/cart/', [
            'product_id' => 1,
            'qty' => 2,
        ]);

        $cart_id = $response->getData()->data->cart->id;

        $user2 = User::factory()->create();
        $this->actingAs($user2, 'api');

        $response = $this->deleteJson("/api/cart/{$cart_id}");

        $response->assertStatus(403);
    }

    /**
     * @test
     * Test a authenticated user can not update other users cart
     */
    public function test_a_authenticated_user_can_not_update_other_users_cart()
    {
        $user1 = User::factory()->create();
        $this->actingAs($user1, 'api');

        $response = $this->postJson('/api/cart/', [
            'product_id' => 1,
            'qty' => 2,
        ]);

        $session_id = $response->getData()->data->cart->session_id;
        $cart_id = $response->getData()->data->cart->id;

        $user2 = User::factory()->create();
        $this->actingAs($user2, 'api');

        $response = $this->putJson("/api/cart/{$cart_id}", [
            'cart_session_id' => $session_id,
            'product_id' => 1,
            'qty' => 5,
        ]);

        $response->assertStatus(403);
    }
}

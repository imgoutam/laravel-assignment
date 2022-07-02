<?php

namespace Tests\Feature;

use App\Models\Product;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Http\UploadedFile;
use Tests\TestCase;

class ProductTest extends TestCase
{
    use WithFaker;

    /**
     * @test
     * Test list of products
     */
    public function test_list_of_products()
    {
        $response = $this->get('/api/products');

        $response
            ->assertOk()
            ->assertJsonStructure([
                'data' => [
                    'products' => [
                        '*' => [
                             'id',
                             'name',
                             'price',
                             'category',
                             'description',
                             'avatar',
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
     * Test create a product
     */
    public function test_create_a_product()
    {
        $name = $this->faker->name();

        $response = $this->postJson('/api/products', [
             'name' => $name,
             'price' => 10,
             'category_id' => 1,
             'description' => 'demo',
             'avatar' => UploadedFile::fake()->image('image.png'),
        ]);

        $response
            ->assertStatus(201)
            ->assertJsonPath('data.product.name', $name);
    }

    /**
     * @test
     * Test view a product
     */
    public function test_view_a_product()
    {
        $name = $this->faker->name();
        $product = Product::factory()->create([
            'name' => $name,
            'category_id' => 1,
        ]);

        $response = $this->postJson("/api/products/{$product->id}");

        $response
            ->assertOk()
            ->assertJsonPath('data.product.name', $name);
    }

    /**
     * @test
     * Test delete a product
     */
    public function test_delete_a_product()
    {
        $totalProducts = Product::count();

        $product = Product::factory()->create([
            'category_id' => 1,
        ]);

        $response = $this->deleteJson("/api/products/{$product->id}");

        $response->assertStatus(204);

        $this->assertEquals($totalProducts, Product::count());
    }

    /**
     * @test
     * Test view a invalid product
     */
    public function test_view_a_invalid_product()
    {
        $invalidProductId = Product::max('id') + 1;

        $response = $this->postJson("/api/products/{$invalidProductId}");

        $response->assertStatus(404);
    }
}

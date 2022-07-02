<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProductRequest;
use App\Http\Resources\ProductCollection;
use App\Http\Resources\ProductResource;
use App\Models\Product;
use Illuminate\Http\Response;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    /**
     * Display a listing of the products.
     */
    public function index(): ProductCollection
    {
        return new ProductCollection(Product::paginate());
    }

    /**
     * Display a product.
     *
     * @param  int $id
     */
    public function show(int $id): ProductResource
    {
        $product = Product::findOrFail($id);

        return new ProductResource($product);
    }

    /**
     * Store a new product.
     *
     * @param  \App\Http\Requests\StoreProductRequest  $request
     */
    public function store(StoreProductRequest $request): ProductResource
    {
        $validated = $request->safe()->only(['name', 'description', 'price', 'category_id']);

        $fileName = Str::random(20) . '_' . time() . '.' . $request->file('avatar')->getClientOriginalExtension();

        $request->file('avatar')->storeAs(config('product_images_dir', 'images'), $fileName);

        $validated['avatar'] = $fileName;

        $product = Product::create($validated);

        return new ProductResource($product);
    }

    /**
     * Remove product.
     *
     * @param  int $id
     */
    public function destroy(int $id): Response
    {
        $product = Product::findOrFail($id);
        $product->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}

<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCartRequest;
use App\Http\Requests\UpdateCartRequest;
use App\Http\Resources\CartCollection;
use App\Http\Resources\CartResource;
use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class CartController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('verifycart')->only('update', 'destroy');
    }

    /**
     * Display cart items.
     */
    public function index(Request $request): CartCollection
    {

        // check if request has cart_session_id or the request coming from a authentiacated user
        if (is_null($request->cart_session_id) && is_null($request->user('api'))) {
            return new CartCollection(collect([]));
        }

        //check if cart has items
        $result = Cart::query()->has('products')
            ->when(!is_null($request->cart_session_id), function ($query) use ($request) {
                $query->where('session_id', $request->cart_session_id);
            })
            ->when(!is_null($request->user('api')), function ($query) use ($request) {
                $query->where('user_id', $request->user('api')->id);
            })
            ->paginate();

        return new CartCollection($result->count() ? $result : collect([]));
    }

    /**
     * Add item to cart.
     *
     * @param  \App\Http\Requests\StoreCartRequest $request
     */
    public function store(StoreCartRequest $request): CartResource|Response
    {
        $validated = $request->safe()->only(['product_id', 'qty', 'cart_session_id']) + ['user_id' => $request->user('api')->id ?? null];

        $product = Product::findOrFail($validated['product_id']);

        // if no cart_session_id present in request then create a new cart instance
        if (empty($validated['cart_session_id'])) {
            $cart = Cart::create($validated);

            $cart->products()->attach([
                $product->id => [
                    'qty' => $validated['qty'],
                    'total_price' => $product->price * $validated['qty'],
                ],
            ]);

            return new CartResource($cart);
        }

        $cart = Cart::where('session_id', $validated['cart_session_id'])->firstOrFail();

        // if the user is authenticated but cart does not contain user_id
        if (!is_null($request->user('api')) && !is_null($cart->user_id) && $cart->user_id !== $request->user('api')->id) {
            return response([
                'message' => 'Unauthorized',
            ], Response::HTTP_FORBIDDEN);
        }
        // if the user is authenticated and cart does not contain any user_id then assign the user to cart
        elseif (!is_null($request->user('api')) && is_null($cart->user_id)) {
            $cart->user_id = $request->user('api')->id;
            $cart->save();
        }

        $cartItem = $cart->products()->where('product_id', $validated['product_id'])->first();

        if (!is_null($cartItem)) {
            // cart item exits. add qty and update price
            $cartItem->pivot->update([
                'qty' => $cartItem->pivot->qty + $validated['qty'],
                'total_price' => $product->price * ($cartItem->pivot->qty + $validated['qty']),
            ]);
        } else {
            // cart item does not exits. create new record
            $cart->products()->attach([
                $product->id => [
                    'qty' => $validated['qty'],
                    'total_price' => $product->price * $validated['qty'],
                ],
            ]);
        }

        return new CartResource($cart);
    }

    /**
     * Update cart item.
     *
     * @param  \App\Http\Requests\UpdateCartRequest $request
     * @param  int $id
     */
    public function update(UpdateCartRequest $request, int $id): CartResource|Response
    {
        $cart = Cart::findOrFail($id);

        $validated = $request->safe()->only(['product_id', 'qty']);

        $cartItem = $cart->products()->where('product_id', $validated['product_id'])->first();

        $product = Product::findOrFail($validated['product_id']);

        if (is_null($cartItem)) {
            return response([
                'message' => 'The product is not present in cart',
            ], Response::HTTP_UNPROCESSABLE_ENTITY);
        }

        // if qty = 0 , delete record
        if (!$validated['qty']) {
            $cartItem->pivot->delete();
        } else { // update cart item and price
            $cartItem->pivot->update([
                'qty' => $validated['qty'],
                'total_price' => $product->price * $validated['qty'],
            ]);
        }

        // if cart has 0 item, remove the cart
        if ($cart->products()->get()->isEmpty()) {
            $cart->delete();

            return response(null, Response::HTTP_NO_CONTENT);
        }

        return new CartResource($cart);
    }

    /**
     * Remove a cart.
     *
     * @param  int $id
     */
    public function destroy(int $id): Response
    {
        $cart = Cart::findOrFail($id);
        $cart->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}

<?php

namespace App\Http\Middleware;

use App\Models\Cart;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class VerifyCartRequest
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $cart = Cart::findOrFail($request->route('id'));

        if (
            ($request->isMethod('put') === true && $cart->session_id !== $request->cart_session_id) ||
            (!is_null($request->user('api')) && !is_null($cart->user_id) && $cart->user_id !== $request->user('api')->id) ||
            (is_null($request->user('api')) && !is_null($cart->user_id))
        ) {
            return response([
                'message' => 'Unauthorized',
            ], Response::HTTP_FORBIDDEN);
        }

        return $next($request);
    }
}

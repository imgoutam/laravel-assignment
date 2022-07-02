<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Models\User;
use Illuminate\Http\Response;

class AuthController extends Controller
{
    /**
     * user login.
     *
     * @param  \App\Http\Requests\LoginRequest $request
     * @return \Illuminate\Http\Response
     */
    public function login(LoginRequest $request)
    {
        $validated = $request->safe()->only(['email', 'password']);

        if (!auth()->attempt($validated)) {
            return response(['message' => 'Invalid Credentials'], Response::HTTP_UNPROCESSABLE_ENTITY);
        }

        $accessToken = auth()->user()->createToken('authToken')->accessToken;

        return response(['token' => $accessToken], Response::HTTP_OK);
    }

    /**
     * user register.
     *
     * @param  \App\Http\Requests\RegisterRequest $request
     * @return \Illuminate\Http\Response
     */
    public function register(RegisterRequest $request)
    {
        $validated = $request->safe()->only(['name', 'email', 'password']);
        $user = User::create($validated);
        $accessToken = $user->createToken('authToken')->accessToken;

        return response(['token' => $accessToken], Response::HTTP_CREATED);
    }
}

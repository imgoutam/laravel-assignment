<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class AuthenticationTest extends TestCase
{
    use RefreshDatabase;

    /**
     * @test
     * Test user registration
     */
    public function test_register_a_user()
    {
        //User's data
        $data = [
            'email' => 'test@gmail.com',
            'name' => 'Test',
            'password' => 'secret1234',
            'password_confirmation' => 'secret1234',
        ];
        //Send post request
        $response = $this->postJson('api/auth/register', $data);
        //Assertion
        $response
            ->assertStatus(201)
            ->assertSee('token');
    }

    /**
     * @test
     * Test user login
     */
    public function test_login_a_user()
    {
        $data = [
            'email' => 'test' . time() . '@gmail.com',
            'password' => 'secret1234',
        ];

        $user = User::create($data + [
            'name' => 'Test user',
        ]);

        $response = $this->postJson('api/auth/login', $data);

        $response
            ->assertOk()
            ->assertSee('token');
    }
}

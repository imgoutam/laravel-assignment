<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'price' => $this->faker->numberBetween(10, 100),
            'description' => $this->faker->text(),
            'avatar' => $this->faker->regexify('[A-Za-z0-9]{20}') . $this->faker->randomElement(['.jpeg', '.jpg', '.png', '.gif']),
        ];
    }
}

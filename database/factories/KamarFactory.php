<?php

namespace Database\Factories;

use App\Models\Kamar;
use Illuminate\Database\Eloquent\Factories\Factory;

class KamarFactory extends Factory
{
    protected $model = Kamar::class;

    public function definition()
    {
        return [
            'nama_kamar' => $this->faker->word,
            'harga_kamar' => $this->faker->numberBetween(100000, 1000000),
            
        ];
    }
}
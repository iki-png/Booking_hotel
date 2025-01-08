<?php

namespace Database\Factories;

use App\Models\Layanan;
use Illuminate\Database\Eloquent\Factories\Factory;

class LayananFactory extends Factory
{
    protected $model = Layanan::class;

    public function definition()
    {
        return [
            'nama_layanan' => $this->faker->word,
            'harga_layanan' => $this->faker->numberBetween(50000, 500000),
        ];
    }
}
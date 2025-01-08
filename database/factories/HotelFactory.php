<?php

namespace Database\Factories;

use App\Models\Hotel;
use Illuminate\Database\Eloquent\Factories\Factory;

class HotelFactory extends Factory
{
    protected $model = Hotel::class;

    public function definition()
    {
        return [
            'nama_hotel' => $this->faker->company,
            'desc_hotel' => $this->faker->paragraph,
        ];
    }
}
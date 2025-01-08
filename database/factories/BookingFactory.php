<?php

namespace Database\Factories;

use App\Models\Booking;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookingFactory extends Factory
{
    protected $model = Booking::class;

    public function definition()
    {
        return [
            'id_user' => \App\Models\User::factory(),
            'kode_hotel' => \App\Models\Hotel::factory(),
            'kode_kamar' => \App\Models\Kamar::factory(),
            'kode_layanan' => \App\Models\Layanan::factory(),
            'durasi_menginap' => $this->faker->numberBetween(1, 30),
            'total_tagihan' => $this->faker->numberBetween(100000, 1000000),
            'status_bk' => $this->faker->word,
        ];
    }
}
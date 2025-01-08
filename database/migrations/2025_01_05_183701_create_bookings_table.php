<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('bookings', function (Blueprint $table) {
            $table->id('kode_bk');
            $table->string('id_user');
            $table->string('kode_hotel');
            $table->string('kode_kamar');
            $table->string('kode_layanan');
            $table->string('durasi_menginap');
            $table->string('total_tagihan');
            $table->string('status_bk');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bookings');
    }
};

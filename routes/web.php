<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\HotelController;
use App\Http\Controllers\KamarController;
use App\Http\Controllers\LayananController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\userBookingController;





Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

/*------------------------------------------
--------------------------------------------
All Normal Users Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:user'])->group(function () {
    Route::get('/user/home', [HomeController::class, 'userHome'])->name('home');
    Route::resource('/user/booking', userBookingController::class);

    Route::get('/user-get-harga-layanan/{kode_layanan}', [UserTransaksiController::class, 'usergetHargaLayanan']);
    Route::post('/user/Booking/store', [userBookingController::class, 'store'])->name('userBooking.store');
    Route::get('user/booking/{booking}', [UserBookingController::class, 'show'])->name('user.booking.show');
    Route::get('user/bookings', [UserBookingController::class, 'index'])->name('user.bookings.index');
    Route::get('/user-get-harga-layanan/{kode_layanan}', [userBookingController::class, 'usergetHargaLayanan']);
    Route::get('/user-get-harga-kamar/{kode_kamar}', [userBookingController::class, 'usergetHargaKamar']);

});

/*------------------------------------------
--------------------------------------------
All Admin Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:admin'])->group(function () {
    Route::get('/admin/home', [HomeController::class, 'adminHome'])->name('admin.home');
    
    Route::resource('/admin/hotel', HotelController::class);
    Route::resource('/admin/kamar', KamarController::class);
    Route::resource('/admin/layanan', LayananController::class);
    Route::resource('/admin/booking', BookingController::class);

    Route::get('/get-harga-layanan/{kode_layanan}', [BookingController::class, 'getHargaLayanan']);
    Route::get('/get-harga-kamar/{kode_kamar}', [BookingController::class, 'getHargaKamar']);
 


    Route::get('/admin/booking/{id}/confirm', [BookingController::class, 'confirm'])->name('booking.confirm');
    Route::get('/admin/booking/{id}/cancel', [BookingController::class, 'cancel'])->name('booking.cancel');

    


   
});

/*------------------------------------------
--------------------------------------------
All Manager Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:manager'])->group(function () {
    Route::get('/manager/home', [HomeController::class, 'managerHome'])->name('manager.home');
});
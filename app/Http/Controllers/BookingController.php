<?php

namespace App\Http\Controllers;

//import model 
use App\Models\Booking;
use App\Models\User;
use App\Models\Hotel;
use App\Models\Kamar;
use App\Models\Layanan; 

//import return type View
use Illuminate\View\View;

//import return type redirectResponse
use Illuminate\Http\RedirectResponse;

//import Http Request
use Illuminate\Http\Request;

class BookingController extends Controller
{
    /**
     * INI HALAMAN booking BOS KU!
     *
     * @return void
     */
    public function index() : View
    {
        //get all booking
        $bookings = Booking::with(['user', 'Hotel', 'Kamar', 'Layanan'])->latest()->paginate(100);
        //render view with booking
        return view('adminBooking', compact('bookings'));
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * INI HALAMAN  CREATE ruangan BOS KU!
     *
     * @return View
     */
    public function create(): View
    {
              // Mengambil semua data
              $users = User::all();
              $hotels = Hotel::all();
              $kamars = Kamar::all();
              $layanans = Layanan::all();
             
              
              // Mengirim data ke view
              return view('adminBookingCreate', [
                  'users' => $users,
                  'hotels' => $hotels,
                  'kamars' => $kamars,
                  'layanans' => $layanans 
              ]);
    }

    public function getHargaLayanan($kode_layanan)
    {
        $layanan = Layanan::where('kode_layanan', $kode_layanan)->first();
        return response()->json(['harga_layanan' => $layanan->harga_layanan]);
    }

    public function getHargaKamar($kode_kamar)
    {
        $kamar = Kamar::where('kode_kamar', $kode_kamar)->first();
        return response()->json(['harga_kamar' => $kamar->harga_kamar]);
    }


    /**
     * SIMPAN DATA booking
     *
     * @param  mixed $request
     * @return RedirectResponse
     */
    public function store(Request $request): RedirectResponse
    {
        //validate form
        $request->validate([
            'id_user'              => 'required|min:1',
            'kode_hotel'           => 'required|min:1',
            'kode_kamar'           => 'required|min:1',
            'kode_layanan'         => 'required|min:1',
            'durasi_menginap'         => 'required|min:1',
            'total_tagihan'        => 'required|min:1',
            'status_bk'            => 'required|min:1',
            
        ]);

        //create booking
        Booking::create([
            'id_user'             => $request->id_user,
            'kode_hotel'          => $request->kode_hotel,
            'kode_kamar'          => $request->kode_kamar,
            'kode_layanan'        => $request->kode_layanan,
            'durasi_menginap'     => $request->durasi_menginap,
            'total_tagihan'       => $request->total_tagihan,
            'status_bk'           => $request->status_bk,
           
        ]);

        //redirect to index
        return redirect()->to('/admin/booking')->with(['success' => 'Data Berhasil Disimpan!']);
    
    }
    
/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * show
     *
     * @param  mixed $kode_bk
     * @return View
     */
    public function show(string $kode_bk): View
    
    {
        $bookings = Booking::findOrFail($kode_bk);
        $users = User::all();
        $hotels = Hotel::all();
        $kamars = Kamar::all();
        $layanans = Layanan::all();
    
        return view('adminBookingShow', compact('bookings', 'users', 'hotels', 'kamars', 'layanans'));
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

/**
     * edit
     *
     * @param  mixed $kode_bk
     * @return View
     */
    public function edit(string $kode_bk): View
    {
        //get trx by kode_bk
        $bookings = Booking::where('kode_bk', $kode_bk)->firstOrFail();
    
        //render view with ruangan
        return view('adminBookingEdit', compact('bookins'));
    }
        

    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $kode_bk
     * @return RedirectResponse
     */
    public function update(Request $request, $kode_bk): RedirectResponse
    {
        //validate form
        $request->validate([
            'id_user'              => 'required|min:1',
            'kode_hotel'           => 'required|min:1',
            'kode_kamar'           => 'required|min:1',
            'kode_layanan'         => 'required|min:1',
            'durasi_menginap'         => 'required|min:1',
            'total_tagihan'        => 'required|min:1',
            'status_bk'            => 'required|min:1',
            
        ]);

        //get booking by kode_bk
        $bookings = Booking::where('kode_bk', $kode_bk)->firstOrFail();

        //update ruangan 
        $bookings->update([
            'id_user'             => $request->id_user,
            'kode_hotel'          => $request->kode_hotel,
            'kode_kamar'          => $request->kode_kamar,
            'kode_layanan'        => $request->kode_layanan,
            'durasi_menginap'     => $request->durasi_menginap,
            'total_tagihan'       => $request->total_tagihan,
            'status_bk'           => $request->status_bk,
            
        ]);

        //redirect to index
        return redirect()->to('/admin/booking')->with(['success' => 'Data Berhasil Diubah!']);
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

/**
     * confirm
     *
     * @param  mixed $kode_bk
     * @return View
     */
    public function confirm(string $kode_bk): View
    {
        //get trx by kode_bk
        $bookings    = Booking::where('kode_bk', $kode_bk)->firstOrFail();
        $users = User::all();
        $hotels = Hotel::all();
        $Kamars = Kamar::all();
        $Layanans = Layanan::all();
    
        // Mengirim data tiket ke view
        return view('adminBookingConfirm', compact('bookings', 'users', 'hotels', 'Kamars', 'Layanans'));
    }

    /**
     * cancel
     *
     * @param  mixed $kode_bk
     * @return View
     */
    public function cancel(string $kode_bk): View
    {
        //get trx by kode_bk
        $bookings    = Booking::where('kode_bk', $kode_bk)->firstOrFail();
        $users = User::all();
        $hotels = Hotel::all();
        $Kamars = Kamar::all();
        $Layanans = Layanan::all();
    
        // Mengirim data tiket ke view
        return view('adminBookingCancel', compact('bookings', 'users', 'hotels', 'Kamars', 'Layanans'));
    }

}
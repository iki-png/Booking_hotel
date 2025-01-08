<?php

namespace App\Http\Controllers;

//import model 
use App\Models\Hotel; 

//import return type View
use Illuminate\View\View;

//import return type redirectResponse
use Illuminate\Http\RedirectResponse;

//import Http Request
use Illuminate\Http\Request;

class HotelController extends Controller
{
    /**
     * INI HALAMAN hotel BOS KU!
     *
     * @return void
     */
    public function index() : View
    {
        //get all hotel
        $hotels = Hotel::latest()->paginate(100);

        //render view with hotel
        return view('adminHotel', compact('hotels'));
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * INI HALAMAN  CREATE hotel BOS KU!
     *
     * @return View
     */
    public function create(): View
    {
        return view('adminHotelCreate');
    }

    /**
     * SIMPAN DATA hotel
     *
     * @param  mixed $request
     * @return RedirectResponse
     */
    public function store(Request $request): RedirectResponse
    {
        //validate form
        $request->validate([
           
            'nama_hotel'         => 'required|min:1',
            'desc_hotel'         => 'required|min:1',
            
        ]);

        //create hotel
        Hotel::create([
            
            'nama_hotel'         => $request->nama_hotel,
            'desc_hotel'         => $request->desc_hotel,
           
        ]);

        //redirect to index
        return redirect()->to('/admin/hotel')->with(['success' => 'Data Berhasil Disimpan!']);
    
    }
    
/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * show
     *
     * @param  mixed $kode_hotel
     * @return View
     */
    public function show(string $kode_hotel): View
    {
        //get hotel by kode_hotel
        $hotels = Hotel::where('kode_hotel', $kode_hotel)->firstOrFail();
    
        //render view with product
        return view('adminHotelShow', compact('hotels'));
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

/**
     * edit
     *
     * @param  mixed $kode_hotel
     * @return View
     */
    public function edit(string $kode_hotel): View
    {
        //get hotel by kode_hotel
        $hotels = Hotel::where('kode_hotel', $kode_hotel)->firstOrFail();
    
        //render view with hotel
        return view('adminHotelEdit', compact('hotels'));
    }
        

    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $kode_hotel
     * @return RedirectResponse
     */
    public function update(Request $request, $kode_hotel): RedirectResponse
    {
        //validate form
        $request->validate([
            
            'nama_hotel'         => 'required|min:1',
            'desc_hotel'         => 'required|min:1',
            
        ]);

        //get hotel by kode_hotel
        $hotels = Hotel::where('kode_hotel', $kode_hotel)->firstOrFail();

        //update hotel 
        $hotels->update([
            
            'nama_hotel'         => $request->nama_hotel,
            'desc_hotel'         => $request->desc_hotel,
            
        ]);

        //redirect to index
        return redirect()->to('/admin/hotel')->with(['success' => 'Data Berhasil Diubah!']);
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * destroy
     *
     * @param  mixed $kode_hotel
     * @return RedirectResponse
     */
    public function destroy($kode_hotel): RedirectResponse
    {
        //get hotel by kode_hotel
        $hotels = Hotel::where('kode_hotel', $kode_hotel)->firstOrFail();

        //delete hotel
        $hotels->delete();

        //redirect to index
        return redirect()->to('/admin/hotel')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
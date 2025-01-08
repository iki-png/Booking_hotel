<?php

namespace App\Http\Controllers;

//import model 
use App\Models\Kamar; 

//import return type View
use Illuminate\View\View;

//import return type redirectResponse
use Illuminate\Http\RedirectResponse;

//import Http Request
use Illuminate\Http\Request;

class KamarController extends Controller
{
    /**
     * INI HALAMAN kamar BOS KU!
     *
     * @return void
     */
    public function index() : View
    {
        //get all kamar
        $kamars = Kamar::latest()->paginate(100);

        //render view with kamar
        return view('adminKamar', compact('kamars'));
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * INI HALAMAN  CREATE kamar BOS KU!
     *
     * @return View
     */
    public function create(): View
    {
        return view('adminkamarCreate');
    }

    /**
     * SIMPAN DATA kamar
     *
     * @param  mixed $request
     * @return RedirectResponse
     */
    public function store(Request $request): RedirectResponse
    {
        //validate form
        $request->validate([
            'nama_kamar'         => 'required|min:1',
            'harga_kamar'         => 'required|min:1',
            
        ]);

        //create kamar
        Kamar::create([
            'nama_kamar'         => $request->nama_kamar,
            'harga_kamar'         => $request->harga_kamar,
           
        ]);

        //redirect to index
        return redirect()->to('/admin/kamar')->with(['success' => 'Data Berhasil Disimpan!']);
    
    }
    
/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * show
     *
     * @param  mixed $kode_kamar
     * @return View
     */
    public function show(string $kode_kamar): View
    {
        //get kamar by kode_kamar
        $kamars = Kamar::where('kode_kamar', $kode_kamar)->firstOrFail();
    
        //render view with product
        return view('adminKamarShow', compact('kamars'));
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

/**
     * edit
     *
     * @param  mixed $kode_kamar
     * @return View
     */
    public function edit(string $kode_kamar): View
    {
        //get kamar by kode_kamar
        $kamars = Kamar::where('kode_kamar', $kode_kamar)->firstOrFail();
    
        //render view with kamar
        return view('adminKamarEdit', compact('kamars'));
    }
        

    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $kode_kamar
     * @return RedirectResponse
     */
    public function update(Request $request, $kode_kamar): RedirectResponse
    {
        //validate form
        $request->validate([
            'nama_kamar'         => 'required|min:1',
            'harga_kamar'         => 'required|min:1',
            
        ]);

        //get kamar by kode_kamar
        $kamars = Kamar::where('kode_kamar', $kode_kamar)->firstOrFail();

        //update kamar 
        $kamars->update([
            'nama_kamar'         => $request->nama_kamar,
            'harga_kamar'         => $request->harga_kamar,
            
        ]);

        //redirect to index
        return redirect()->to('/admin/kamar')->with(['success' => 'Data Berhasil Diubah!']);
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * destroy
     *
     * @param  mixed $kode_kamar
     * @return RedirectResponse
     */
    public function destroy($kode_kamar): RedirectResponse
    {
        //get kamar by kode_kamar
        $kamars = Kamar::where('kode_kamar', $kode_kamar)->firstOrFail();

        //delete kamar
        $kamars->delete();

        //redirect to index
        return redirect()->to('/admin/kamar')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
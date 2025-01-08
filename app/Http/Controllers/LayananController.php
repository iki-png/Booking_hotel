<?php

namespace App\Http\Controllers;

//import model 
use App\Models\Layanan; 

//import return type View
use Illuminate\View\View;

//import return type redirectResponse
use Illuminate\Http\RedirectResponse;

//import Http Request
use Illuminate\Http\Request;

class LayananController extends Controller
{
    /**
     * INI HALAMAN layanan BOS KU!
     *
     * @return void
     */
    public function index(Request $request): View
    {
        // Ambil nilai per_page dari request, default 10 jika tidak ada
        $perPage = $request->input('per_page', 100);
    
        // Validasi nilai per_page untuk mencegah input yang tidak valid
        $perPage = in_array($perPage, [10, 25, 50, 100]) ? $perPage : 10;
    
        // Get all layanan dengan paginasi
        $layanans = Layanan::latest()->paginate($perPage);
    
        // Render view dengan layanan
        return view('adminLayanan', compact('layanans'));
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * INI HALAMAN  CREATE 
     *
     * @return View
     */
    public function create(): View
    {
        return view('adminLayananCreate');
    }

    /**
     * SIMPAN DATA layanan
     *
     * @param  mixed $request
     * @return RedirectResponse
     */
    public function store(Request $request): RedirectResponse
    {
        //validate form
        $request->validate([
            'nama_layanan'         => 'required|min:1',
            'harga_layanan'         => 'required|min:1',
            
        ]);

        //create layanan
        Layanan::create([
            'nama_layanan'         => $request->nama_layanan,
            'harga_layanan'         => $request->harga_layanan,
           
        ]);

        //redirect to index
        return redirect()->to('/admin/layanan')->with(['success' => 'Data Berhasil Disimpan!']);
    
    }
    
/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * show
     *
     * @param  mixed $kode_layanan
     * @return View
     */
    public function show(string $kode_layanan): View
    {
        //get layanan by kode_layanan
        $layanans = Layanan::where('kode_layanan', $kode_layanan)->firstOrFail();
    
        //render view with product
        return view('adminLayananShow', compact('layanans'));
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

/**
     * edit
     *
     * @param  mixed $kode_layanan
     * @return View
     */
    public function edit(string $kode_layanan): View
    {
        //get layanan by kode_layanan
        $layanans = Layanan::where('kode_layanan', $kode_layanan)->firstOrFail();
    
        //render view with layanan
        return view('adminLayananEdit', compact('layanans'));
    }
        

    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $kode_layanan
     * @return RedirectResponse
     */
    public function update(Request $request, $kode_layanan): RedirectResponse
    {
        //validate form
        $request->validate([
            'nama_layanan'         => 'required|min:1',
            'harga_layanan'         => 'required|min:1',
            
        ]);

        //get layanan by kode_layanan
        $layanans = Layanan::where('kode_layanan', $kode_layanan)->firstOrFail();

        //update layanan 
        $layanans->update([
            'nama_layanan'         => $request->nama_layanan,
            'harga_layanan'         => $request->harga_layanan,
            
        ]);

        //redirect to index
        return redirect()->to('/admin/layanan')->with(['success' => 'Data Berhasil Diubah!']);
    }

/////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * destroy
     *
     * @param  mixed $kode_layanan
     * @return RedirectResponse
     */
    public function destroy($kode_layanan): RedirectResponse
    {
        //get layanan by kode_layanan
        $layanans = Layanan::where('kode_layanan', $kode_layanan)->firstOrFail();

        //delete layanan
        $layanans->delete();

        //redirect to index
        return redirect()->to('/admin/layanan')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
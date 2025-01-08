@extends('layouts.admin_app')

@section('content')

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-lg border-0 rounded-3">
                <div class="card-header bg-warning text-dark text-center fs-4">{{ __('Edit Layanan') }}</div>

                <div class="card-body bg-light">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form action="{{ route('layanan.update', $layanans->kode_layanan) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div class="mb-4">
                            <label for="nama_layanan" class="form-label font-weight-bold">Nama Layanan</label>
                            <input type="text" id="nama_layanan" class="form-control @error('nama_layanan') is-invalid @enderror" name="nama_layanan" value="{{ old('nama_layanan', $layanans->nama_layanan) }}">
                            
                            @error('nama_layanan')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label for="harga_layanan" class="form-label font-weight-bold">Harga Layanan</label>
                            <input type="number" id="harga_layanan" class="form-control @error('harga_layanan') is-invalid @enderror" name="harga_layanan" value="{{ old('harga_layanan', $layanans->harga_layanan) }}">
                            
                            @error('harga_layanan')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="d-flex justify-content-between">
                            <a href="/admin/layanan" class="btn btn-outline-secondary btn-md">Kembali</a>
                            <button type="submit" class="btn btn-warning btn-md">Simpan Perubahan</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

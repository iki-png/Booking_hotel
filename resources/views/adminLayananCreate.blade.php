@extends('layouts.admin_app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-light text-center">{{ __('HALAMAN LAYANAN') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <div class="container mt-5 mb-5">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card border-0 rounded-3">
                                    <div class="card-body">
                                        <form action="{{ route('layanan.store') }}" method="POST" enctype="multipart/form-data">

                                            @csrf

                                            <div class="mb-4">
                                                <label for="nama_layanan" class="form-label font-weight-bold">NAMA LAYANAN</label>
                                                <input type="text" id="nama_layanan" class="form-control @error('nama_layanan') is-invalid @enderror" name="nama_layanan" value="{{ old('nama_layanan') }}" placeholder="Masukkan nama layanan">
                                                
                                                @error('nama_layanan')
                                                    <div class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                @enderror
                                            </div>

                                            <div class="mb-4">
                                                <label for="harga_layanan" class="form-label font-weight-bold">HARGA LAYANAN</label>
                                                <input type="number" id="harga_layanan" class="form-control @error('harga_layanan') is-invalid @enderror" name="harga_layanan" value="{{ old('harga_layanan') }}" placeholder="Masukkan harga layanan">
                                                
                                                @error('harga_layanan')
                                                    <div class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                @enderror
                                            </div>

                                            <div class="d-flex justify-content-between">
                                                <a href="/admin/layanan" class="btn btn-outline-primary btn-md">Kembali</a>
                                                <button type="submit" class="btn btn-primary btn-md">Simpan</button>
                                            </div>

                                        </form> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

@endsection

@extends('layouts.admin_app')

@section('content')

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-light text-center">{{ __('HALAMAN KAMAR') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form action="{{ route('kamar.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="mb-4">
                            <label for="nama_kamar" class="form-label font-weight-bold">NAMA KAMAR</label>
                            <input type="text" id="nama_kamar" class="form-control @error('nama_kamar') is-invalid @enderror" name="nama_kamar" value="{{ old('nama_kamar') }}" placeholder="Masukkan nama kamar">

                            @error('nama_kamar')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="mb-4">
                            <label for="harga_kamar" class="form-label font-weight-bold">HARGA KAMAR</label>
                            <input type="number" id="harga_kamar" class="form-control @error('harga_kamar') is-invalid @enderror" name="harga_kamar" value="{{ old('harga_kamar') }}" placeholder="Masukkan harga kamar">

                            @error('harga_kamar')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="d-flex justify-content-between">
                            <a href="/admin/kamar" class="btn btn-outline-primary btn-md">Kembali</a>
                            <button type="submit" class="btn btn-primary btn-md">Simpan</button>
                        </div>

                    </form> 
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

@endsection

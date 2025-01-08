@extends('layouts.admin_app')

@section('content')

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-lg border-0 rounded-3">
                <div class="card-header bg-success text-light text-center fs-4">{{ __('Detail Layanan') }}</div>

                <div class="card-body bg-light">
                    <form action="#" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="mb-4">
                            <label for="kode_layanan" class="form-label font-weight-bold">Kode Layanan</label>
                            <input type="text" id="kode_layanan" class="form-control" name="kode_layanan" value="{{ old('kode_layanan', $layanans->kode_layanan) }}" readonly>
                        </div>

                        <div class="mb-4">
                            <label for="nama_layanan" class="form-label font-weight-bold">Nama Layanan</label>
                            <input type="text" id="nama_layanan" class="form-control" name="nama_layanan" value="{{ old('nama_layanan', $layanans->nama_layanan) }}" readonly>
                        </div>

                        <div class="mb-4">
                            <label for="harga_layanan" class="form-label font-weight-bold">Harga Layanan</label>
                            <input type="number" id="harga_layanan" class="form-control" name="harga_layanan" value="{{ old('harga_layanan', $layanans->harga_layanan) }}" readonly>
                        </div>

                        <div class="d-flex justify-content-between">
                            <a href="/admin/layanan" class="btn btn-outline-success btn-md">Kembali</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

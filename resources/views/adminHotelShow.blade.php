@extends('layouts.admin_app')

@section('content')

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-lg border-primary rounded-3">
                <div class="card-header bg-primary text-white text-center h4">{{ __('HALAMAN RUANGAN') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form action="#" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="row mb-4">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="font-weight-bold">KODE HOTEL</label>
                                    <input type="text" class="form-control @error('kode_hotel') is-invalid @enderror" name="kode_hotel" value="{{ old('kode_hotel', $hotels->kode_hotel) }}" readonly>

                                    @error('kode_hotel')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="font-weight-bold">NAMA HOTEL</label>
                                    <input type="text" class="form-control @error('nama_hotel') is-invalid @enderror" name="nama_hotel" value="{{ old('nama_hotel', $hotels->nama_hotel) }}" readonly>

                                    @error('nama_hotel')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="font-weight-bold">DESKRIPSI</label>
                                    <input type="text" class="form-control @error('desc_hotel') is-invalid @enderror" name="desc_hotel" value="{{ old('desc_hotel', $hotels->desc_hotel) }}" readonly>

                                    @error('desc_hotel')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer d-flex justify-content-between">
                            <a href="/admin/hotel" class="btn btn-md btn-outline-primary">BACK</a>
                            <a href="/admin/hotel" class="btn btn-md btn-primary">OK</a>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace('#');
</script>

@endsection

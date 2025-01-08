@extends('layouts.admin_app')
 
@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
            <div class="card-header bg-danger text-light">{{ __('HALAMAN KAMAR') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
 
                    <div class="container mt-5 mb-5">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card border-0">
                                    <div class="card-body">
                                        <form action="#" method="POST" enctype="multipart/form-data">
                                        
                                            @csrf

                                            <div class="row">

                                            <div class="col-md-6">
                                                    <div class="form-group mb-3">
                                                        <label class="font-weight-bold">KODE KAMAR</label>
                                                        <input type="text" class="form-control @error('kode_kamar') is-invalid @enderror" name="kode_kamar" value="{{ old('kode_kamar', $kamars->kode_kamar) }}" readonly>
                                                    
                                                        <!-- error message untuk kode_kamar -->
                                                        @error('kode_kamar')
                                                            <div class="alert alert-danger mt-2">
                                                                {{ $message }}
                                                            </div>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group mb-3">
                                                        <label class="font-weight-bold">NAMA KAMAR</label>
                                                        <input type="text" class="form-control @error('nama_kamar') is-invalid @enderror" name="nama_kamar" value="{{ old('nama_kamar', $kamars->nama_kamar) }}" readonly>
                                                    
                                                        <!-- error message untuk nama_kamar -->
                                                        @error('nama_kamar')
                                                            <div class="alert alert-danger mt-2">
                                                                {{ $message }}
                                                            </div>
                                                        @enderror
                                                    </div>
                                                </div>

                                            </div>  


                                            <div class="row">

                                                <div class="col-md-12">
                                                        <div class="form-group mb-3">
                                                            <label class="font-weight-bold">HARGA KAMAR</label>
                                                            <input type="text" class="form-control @error('harga_kamar') is-invalid @enderror" name="harga_kamar" value="{{ old('harga_kamar', $kamars->harga_kamar) }}" readonly>
                                                        
                                                            <!-- error message untuk harga_kamar -->
                                                            @error('harga_kamar')
                                                                <div class="alert alert-danger mt-2">
                                                                    {{ $message }}
                                                                </div>
                                                            @enderror
                                                        </div>
                                                    </div>



                                                </div>  


                                                    <div class="modal-footer">
                                                        <a href="/admin/kamar" class="btn btn-md btn-basic me-4">BACK</a>

                                                        <div class="btn-group">
                                                            <a href="/admin/kamar" class="btn btn-md btn-danger me-4">OK</a>
                                                        </div>	

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
        CKEDITOR.replace( '#' );
    </script>

                </div>
            </div>
        </div>
    </div>
</div>



@endsection

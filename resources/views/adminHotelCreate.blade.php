@extends('layouts.admin_app')
 
@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-danger text-light">{{ __('HALAMAN HOTEL') }}</div>

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
                                        <form action="{{ route('hotel.store') }}" method="POST" enctype="multipart/form-data">
                                        
                                            @csrf

                                        <hr>
                                        
                                            <div class="form-group mb-3">
                                                <label class="font-weight-bold">NAMA HOTEL</label>
                                                <input type="text" class="form-control @error('nama_hotel') is-invalid @enderror" name="nama_hotel" value="{{ old('nama_hotel') }}" placeholder="Masukkan nama hotel">
                                            
                                                <!-- error message untuk nama_hotel -->
                                                @error('nama_hotel')
                                                    <div class="alert alert-danger mt-2">
                                                        {{ $message }}
                                                    </div>
                                                @enderror
                                            </div>

                                            <div class="form-group mb-3">
                                                <label class="font-weight-bold">DESKRIPSI</label>
                                                <textarea class="form-control @error('desc_hotel') is-invalid @enderror" name="desc_hotel" rows="5" placeholder="Masukkan deskripsi hotel">{{ old('desc_hotel') }}</textarea>
                                            
                                                <!-- error message untuk desc_hotel -->
                                                @error('desc_hotel')
                                                    <div class="alert alert-danger mt-2">
                                                        {{ $message }}
                                                    </div>
                                                @enderror
                                            </div>

                                            <hr>

                                                    <div class="modal-footer">
                                                        <a href="/admin/hotel" class="btn btn-md btn-basic me-4">BACK</a>

                                                        <div class="btn-group">
                                                            
                                                            <button type="submit" class="btn btn-md btn-danger"> SAVE</button>
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



                </div>
            </div>
        </div>
    </div>
</div>



@endsection

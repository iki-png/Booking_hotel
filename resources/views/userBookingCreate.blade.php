@extends('layouts.user_app')
 
@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-danger text-light">{{ __('HALAMAN LAYANAN') }}</div>

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
                                        <form action="{{ route('userBooking.store') }}" method="POST" enctype="multipart/form-data">
                                        
                                            @csrf

                                    
                                        <input type="hidden" class="form-control @error('id_user') is-invalid @enderror" id="id_user" name="id_user" value="{{ Auth::id() }}" readonly>

<hr>
                                                        <div class="form-group mb-3">
                                                            <label class="font-weight-bold">HOTEL</label>
                                                            <select class="form-select @error('kode_hotel') is-invalid @enderror" name="kode_hotel">
                                                                <option value="">Pilih Hotel</option>
                                                                @foreach($hotels as $hotel)
                                                                    <option value="{{ $hotel->kode_hotel }}" {{ old('kode_hotel') == $hotel->kode_hotel ? 'selected' : '' }}>
                                                                        {{ $hotel->nama_hotel }}
                                                                    </option>
                                                                @endforeach
                                                            </select>

                                                                <!-- error message for id_user -->
                                                                @error('id_user')
                                                                    <div class="alert alert-danger mt-2">
                                                                        {{ $message }}
                                                                    </div>
                                                                @enderror
                                                        </div>

                                            <div class="row"> 

                                                <div class="col-md-6">
                                                    <div class="form-group mb-3">
                                                        <label class="font-weight-bold">KAMAR</label>
                                                        <select class="form-select @error('kode_kamar') is-invalid @enderror" id="kode_kamar" name="kode_kamar">
                                                            <option value="">Pilih Kamar</option>
                                                            @foreach($kamars as $kamar)
                                                                <option value="{{ $kamar->kode_kamar }}" {{ old('kode_kamar') == $kamar->kode_kamar ? 'selected' : '' }}>
                                                                    {{ $kamar->nama_kamar }}
                                                                </option>
                                                            @endforeach
                                                        </select>

                                                            <!-- error message for kode_kamar -->
                                                            @error('kode_kamar')
                                                                <div class="alert alert-danger mt-2">
                                                                    {{ $message }}
                                                                </div>
                                                            @enderror
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group mb-3">
                                                        <label class="font-weight-bold">HARGA KAMAR</label>
                                                        <input type="text" class="form-control @error('harga_kamar') is-invalid @enderror" id="harga_kamar" name="harga_kamar" value="{{ old('harga_kamar') }}" readonly>

                                                            <!-- error message for harga_kamar -->
                                                            @error('harga_kamar')
                                                                <div class="alert alert-danger mt-2">
                                                                    {{ $message }}
                                                                </div>
                                                            @enderror
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row"> 

                                                    <div class="col-md-6">
                                                        <div class="form-group mb-3">
                                                            <label class="font-weight-bold">LAYANAN</label>
                                                            <select class="form-select @error('kode_layanan') is-invalid @enderror" id="kode_layanan" name="kode_layanan">
                                                                <option value="">Pilih Layanan</option>
                                                                @foreach($layanans as $layanan)
                                                                    <option value="{{ $layanan->kode_layanan }}" {{ old('kode_layanan') == $layanan->kode_layanan ? 'selected' : '' }}>
                                                                        {{ $layanan->nama_layanan }}
                                                                    </option>
                                                                @endforeach
                                                            </select>

                                                                <!-- error message for kode_layanan -->
                                                                @error('kode_layanan')
                                                                    <div class="alert alert-danger mt-2">
                                                                        {{ $message }}
                                                                    </div>
                                                                @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group mb-3">
                                                            <label class="font-weight-bold">HARGA LAYANAN</label>
                                                            <input type="text" class="form-control @error('harga_layanan') is-invalid @enderror" id="harga_layanan" name="harga_layanan" value="{{ old('harga_layanan') }}" readonly>

                                                                <!-- error message for harga_layanan -->
                                                                @error('harga_layanan')
                                                                    <div class="alert alert-danger mt-2">
                                                                        {{ $message }}
                                                                    </div>
                                                                @enderror
                                                        </div>
                                                    </div>

                                            </div>

                                            <div class="form-group mb-3">
                                                
                                                            <label class="font-weight-bold">Durasi Menginap</label>
                                                            <input type="number" class="form-control @error('durasi_menginap') is-invalid @enderror" id="durasi_menginap" min="1" name="durasi_menginap" value="{{ old('durasi_menginap') }}" placeholder="Input jumlah hari">
                                                    
                                                        <!-- error message untuk durasi_menginap -->
                                                        @error('durasi_menginap')
                                                            <div class="alert alert-danger mt-2">
                                                                {{ $message }}
                                                            </div>
                                                        @enderror
                                                    
                                                    </div>
<hr>


                                                <div class="form-group mb-3">
                                                            <label class="font-weight-bold">TOTAL TAGIHAN</label>
                                                            <input type="text" class="form-control @error('total_tagihan') is-invalid @enderror" id="total_tagihan" name="total_tagihan" value="{{ old('total_tagihan') }}" readonly>
                                                    
                                                        <!-- error message untuk total_tagihan -->
                                                        @error('total_tagihan')
                                                            <div class="alert alert-danger mt-2">
                                                                {{ $message }}
                                                            </div>
                                                        @enderror
                                                    
                                                    </div>

                                                    <input type="hidden" class="form-control" name="status_bk" value="Menunggu Konfirmasi" readonly>


                                            <hr>

                                                    <div class="modal-footer">
                                                        <a href="/user/booking" class="btn btn-md btn-basic me-4">BACK</a>

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





                </div>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

<!-- Tambahkan CSS Select2 -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

<!-- Tambahkan JavaScript Select2 -->
 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        function calculateTotalTagihan() {
            var hargaKamar = parseFloat($('#harga_kamar').val()) || 0;
            var hargaLayanan = parseFloat($('#harga_layanan').val()) || 0;
            var durasiMenginap = parseInt($('#durasi_menginap').val()) || 0;
            var totalTagihan = (hargaKamar + hargaLayanan) * durasiMenginap;
            $('#total_tagihan').val(totalTagihan);
        }

        $('#harga_kamar, #harga_layanan, #durasi_menginap').on('input change', function() {
            calculateTotalTagihan();
        });

        $('#kode_layanan').change(function() {
            var kode_layanan = $(this).val();
            if (kode_layanan) {
                $.ajax({
                    url: '/user-get-harga-layanan/' + kode_layanan,
                    type: 'GET',
                    dataType: 'json',
                    success: function(data) {
                        $('#harga_layanan').val(data.harga_layanan);
                        calculateTotalTagihan();
                    }
                });
            } else {
                $('#harga_layanan').val('');
                calculateTotalTagihan();
            }
        });

        $('#kode_kamar').change(function() {
            var kode_kamar = $(this).val();
            if (kode_kamar) {
                $.ajax({
                    url: '/user-get-harga-kamar/' + kode_kamar,
                    type: 'GET',
                    dataType: 'json',
                    success: function(data) {
                        $('#harga_kamar').val(data.harga_kamar);
                        calculateTotalTagihan();
                    }
                });
            } else {
                $('#harga_kamar').val('');
                calculateTotalTagihan();
            }
        });
    });
</script>

@endsection

@extends('layouts.admin_app')
 
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
                                        <form action="#" method="POST" enctype="multipart/form-data">
                                        
                                            @csrf

                                        <hr>
                                            <div class="form-group mb-3">
                                                <label class="font-weight-bold">CUSTOMER</label>
                                                <input type="text" class="form-control" value="{{ $bookings->user->name }}" readonly>
                                                <input type="hidden" class="form-control" name="id_user" value="{{ $bookings->id_user }}" readonly>

                                            </div>

<hr>
                                            <div class="form-group mb-3">
                                                <label class="font-weight-bold">HOTEL</label>
                                                <input type="text" class="form-control" value="{{ $bookings->hotel->nama_hotel }}" readonly>
                                                <input type="hidden" class="form-control" name="kode_hotel" value="{{ $bookings->kode_hotel }}" readonly>
                                            </div>

                                            <div class="row"> 

                                                <div class="col-md-6">
                                                    <div class="form-group mb-3">
                                                        <label class="font-weight-bold">KAMAR</label>
                                                        <input type="text" class="form-control" value="{{ $bookings->kamar->nama_kamar }}" readonly>
                                                        <input type="hidden" class="form-control" name="kode_kamar" value="{{ $bookings->kode_kamar }}" readonly>

                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group mb-3">
                                                        <label class="font-weight-bold">HARGA KAMAR</label>
                                                        <input type="text" class="form-control" value="{{ $bookings->kamar->harga_kamar }}" readonly>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row"> 

                                                    <div class="col-md-6">
                                                        <div class="form-group mb-3">
                                                            <label class="font-weight-bold">LAYANAN</label>
                                                            <input type="text" class="form-control" value="{{ $bookings->layanan->nama_layanan }}" readonly>
                                                            <input type="hidden" class="form-control" name="kode_layanan" value="{{ $bookings->kode_layanan }}" readonly>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group mb-3">
                                                            <label class="font-weight-bold">HARGA LAYANAN</label>
                                                            <input type="text" class="form-control" value="{{ $bookings->layanan->harga_layanan }}" readonly>
                                                        </div>
                                                    </div>

                                            </div>

                                                    <div class="form-group mb-3">
                                                        
                                                            <label class="font-weight-bold">Durasi Menginap</label>
                                                            
                                                            <input type="text" class="form-control" name="durasi_menginap" value="{{ $bookings->durasi_menginap }}" readonly>
                                                            
                                                    </div>
<hr>


                                                <div class="form-group mb-3">
                                                            <label class="font-weight-bold">TOTAL TAGIHAN</label>
                                                            <input type="text" class="form-control" name="total_tagihan" value="{{ $bookings->total_tagihan }}" readonly>
                                                    </div>

                                                    <div class="form-group mb-3">
                                                            <label class="font-weight-bold">STATUS BOOKING</label>
                                                            <input type="text" class="form-control" name="status_bk" value="Menunggu Konfirmasi" readonly>
                                                    </div>

                                                    


                                            <hr>


                                            <div class="modal-footer">
                                                        <a href="/admin/booking" class="btn btn-md btn-basic me-4">BACK</a>

                                                        <div class="btn-group">
                                                            <a href="/admin/booking" class="btn btn-md btn-danger me-4">OK</a>
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
                    url: '/get-harga-layanan/' + kode_layanan,
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
                    url: '/get-harga-kamar/' + kode_kamar,
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

@extends('layouts.admin_app')

@section('content')

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card shadow-lg border-primary rounded-3">
                <div class="card-header bg-primary text-white text-center h4">
                    {{ __('HALAMAN LAYANAN') }}
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form action="{{ route('booking.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="container mt-4">
                            <div class="row">
                                <!-- Customer Select -->
                                <div class="col-md-6 mb-4">
                                    <label class="form-label font-weight-bold">CUSTOMER</label>
                                    <select class="form-select @error('id_user') is-invalid @enderror" name="id_user">
                                        <option value="">Pilih User</option>
                                        @foreach($users as $user)
                                            <option value="{{ $user->id }}" {{ old('id_user') == $user->id ? 'selected' : '' }}>
                                                {{ $user->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('id_user')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <!-- Hotel Select -->
                                <div class="col-md-6 mb-4">
                                    <label class="form-label font-weight-bold">HOTEL</label>
                                    <select class="form-select @error('kode_hotel') is-invalid @enderror" name="kode_hotel">
                                        <option value="">Pilih Hotel</option>
                                        @foreach($hotels as $hotel)
                                            <option value="{{ $hotel->kode_hotel }}" {{ old('kode_hotel') == $hotel->kode_hotel ? 'selected' : '' }}>
                                                {{ $hotel->nama_hotel }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('kode_hotel')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="row">
                                <!-- Room Select -->
                                <div class="col-md-6 mb-4">
                                    <label class="form-label font-weight-bold">KAMAR</label>
                                    <select class="form-select @error('kode_kamar') is-invalid @enderror" id="kode_kamar" name="kode_kamar">
                                        <option value="">Pilih Kamar</option>
                                        @foreach($kamars as $kamar)
                                            <option value="{{ $kamar->kode_kamar }}" {{ old('kode_kamar') == $kamar->kode_kamar ? 'selected' : '' }}>
                                                {{ $kamar->nama_kamar }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('kode_kamar')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <!-- Room Price -->
                                <div class="col-md-6 mb-4">
                                    <label class="form-label font-weight-bold">HARGA KAMAR</label>
                                    <input type="text" class="form-control @error('harga_kamar') is-invalid @enderror" id="harga_kamar" name="harga_kamar" value="{{ old('harga_kamar') }}" readonly>
                                    @error('harga_kamar')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="row">
                                <!-- Service Select -->
                                <div class="col-md-6 mb-4">
                                    <label class="form-label font-weight-bold">LAYANAN</label>
                                    <select class="form-select @error('kode_layanan') is-invalid @enderror" id="kode_layanan" name="kode_layanan">
                                        <option value="">Pilih Layanan</option>
                                        @foreach($layanans as $layanan)
                                            <option value="{{ $layanan->kode_layanan }}" {{ old('kode_layanan') == $layanan->kode_layanan ? 'selected' : '' }}>
                                                {{ $layanan->nama_layanan }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('kode_layanan')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>

                                <!-- Service Price -->
                                <div class="col-md-6 mb-4">
                                    <label class="form-label font-weight-bold">HARGA LAYANAN</label>
                                    <input type="text" class="form-control @error('harga_layanan') is-invalid @enderror" id="harga_layanan" name="harga_layanan" value="{{ old('harga_layanan') }}" readonly>
                                    @error('harga_layanan')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <!-- Stay Duration -->
                            <div class="mb-4">
                                <label class="form-label font-weight-bold">Durasi Menginap</label>
                                <input type="number" class="form-control @error('durasi_menginap') is-invalid @enderror" id="durasi_menginap" min="1" name="durasi_menginap" value="{{ old('durasi_menginap') }}" placeholder="Input jumlah hari">
                                @error('durasi_menginap')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="row">
                                <!-- Total Bill -->
                                <div class="col-md-12 mb-4">
                                    <label class="form-label font-weight-bold">TOTAL TAGIHAN</label>
                                    <input type="text" class="form-control @error('total_tagihan') is-invalid @enderror" id="total_tagihan" name="total_tagihan" value="{{ old('total_tagihan') }}" readonly>
                                    @error('total_tagihan')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <input type="hidden" class="form-control" name="status_bk" value="Menunggu Konfirmasi" readonly>

                            <div class="modal-footer justify-content-between">
                                <a href="/admin/booking" class="btn btn-md btn-outline-secondary">BACK</a>
                                <button type="submit" class="btn btn-md btn-primary">SAVE</button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- Select2 CSS and JS -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        // Initialize Select2
        $('#kode_kamar, #kode_layanan, [name="id_user"], [name="kode_hotel"]').select2({
            theme: 'bootstrap-5',
            placeholder: 'Pilih salah satu',
            allowClear: true
        });

        function calculateTotalTagihan() {
            var hargaKamar = parseFloat($('#harga_kamar').val()) || 0;
            var hargaLayanan = parseFloat($('#harga_layanan').val()) || 0;
            var durasiMenginap = parseInt($('#durasi_menginap').val()) || 0;
            var totalTagihan = (hargaKamar + hargaLayanan) * durasiMenginap;
            $('#total_tagihan').val(totalTagihan.toLocaleString('id-ID', {
                style: 'currency',
                currency: 'IDR'
            }));
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
                    },
                    error: function() {
                        alert('Gagal mengambil data harga layanan.');
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
                    },
                    error: function() {
                        alert('Gagal mengambil data harga kamar.');
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

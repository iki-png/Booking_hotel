@extends('layouts.user_app')

@section('content')
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-lg border-0 rounded">
                <div class="card-header bg-success text-white text-center font-weight-bold">
                    {{ __('HALAMAN LAYANAN') }}
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form action="{{ route('userBooking.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="id_user" value="{{ Auth::id() }}" readonly>

                        <div class="form-group mb-4">
                            <label for="kode_hotel" class="font-weight-bold">HOTEL</label>
                            <select class="form-select @error('kode_hotel') is-invalid @enderror" name="kode_hotel" id="kode_hotel">
                                <option value="">Pilih Hotel</option>
                                @foreach($hotels as $hotel)
                                    <option value="{{ $hotel->kode_hotel }}" {{ old('kode_hotel') == $hotel->kode_hotel ? 'selected' : '' }}>
                                        {{ $hotel->nama_hotel }}
                                    </option>
                                @endforeach
                            </select>
                            @error('kode_hotel')
                                <div class="alert alert-danger mt-2">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-4">
                                    <label for="kode_kamar" class="font-weight-bold">KAMAR</label>
                                    <select class="form-select @error('kode_kamar') is-invalid @enderror" name="kode_kamar" id="kode_kamar">
                                        <option value="">Pilih Kamar</option>
                                        @foreach($kamars as $kamar)
                                            <option value="{{ $kamar->kode_kamar }}" {{ old('kode_kamar') == $kamar->kode_kamar ? 'selected' : '' }}>
                                                {{ $kamar->nama_kamar }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('kode_kamar')
                                        <div class="alert alert-danger mt-2">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group mb-4">
                                    <label for="harga_kamar" class="font-weight-bold">HARGA KAMAR</label>
                                    <input type="text" class="form-control @error('harga_kamar') is-invalid @enderror" id="harga_kamar" name="harga_kamar" value="{{ old('harga_kamar') }}" readonly>
                                    @error('harga_kamar')
                                        <div class="alert alert-danger mt-2">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-4">
                                    <label for="kode_layanan" class="font-weight-bold">LAYANAN</label>
                                    <select class="form-select @error('kode_layanan') is-invalid @enderror" name="kode_layanan" id="kode_layanan">
                                        <option value="">Pilih Layanan</option>
                                        @foreach($layanans as $layanan)
                                            <option value="{{ $layanan->kode_layanan }}" {{ old('kode_layanan') == $layanan->kode_layanan ? 'selected' : '' }}>
                                                {{ $layanan->nama_layanan }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('kode_layanan')
                                        <div class="alert alert-danger mt-2">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group mb-4">
                                    <label for="harga_layanan" class="font-weight-bold">HARGA LAYANAN</label>
                                    <input type="text" class="form-control @error('harga_layanan') is-invalid @enderror" id="harga_layanan" name="harga_layanan" value="{{ old('harga_layanan') }}" readonly>
                                    @error('harga_layanan')
                                        <div class="alert alert-danger mt-2">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="form-group mb-4">
                            <label for="durasi_menginap" class="font-weight-bold">Durasi Menginap (Hari)</label>
                            <input type="number" class="form-control @error('durasi_menginap') is-invalid @enderror" id="durasi_menginap" name="durasi_menginap" min="1" value="{{ old('durasi_menginap') }}" placeholder="Input jumlah hari">
                            @error('durasi_menginap')
                                <div class="alert alert-danger mt-2">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group mb-4">
                            <label for="total_tagihan" class="font-weight-bold">TOTAL TAGIHAN</label>
                            <input type="text" class="form-control @error('total_tagihan') is-invalid @enderror" id="total_tagihan" name="total_tagihan" value="{{ old('total_tagihan') }}" readonly>
                            @error('total_tagihan')
                                <div class="alert alert-danger mt-2">{{ $message }}</div>
                            @enderror
                        </div>

                        <input type="hidden" name="status_bk" value="Menunggu Konfirmasi" readonly>

                        <div class="modal-footer">
                            <a href="/user/booking" class="btn btn-outline-success btn-lg">Kembali</a>
                            <button type="submit" class="btn btn-success btn-lg">Simpan</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
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

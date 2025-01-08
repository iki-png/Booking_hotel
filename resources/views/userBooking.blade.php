@extends('layouts.user_app')
 
@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-danger text-light">{{ __('HALAMAN BOOKING') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
 
                    <div class="container mt-5">
                        <div class="row">
                            <div class="col-md-12">
                                
                                <div class="card border-0 ">
                                    <div class="card-body">
                                        <a href="/user/booking/create" class="btn btn-md btn-danger mb-3"> CREATE</a> 
                                        <a href="/user/booking" class="btn btn-md btn-danger mb-3"><i class='fa fa-refresh'></i></a>
                                        <table id="bookingTable" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">No.</th>
                                                <th scope="col">Customer</th>
                                                <th scope="col">Hotel</th>
                                                <th scope="col">Kamar</th>
                                                <th scope="col">Layanan</th>
                                                <th scope="col">Durasi Menginap</th>
                                                <th scope="col">Status</th>
            
                                                <th scope="col" style="width: 20%">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($bookings as $row)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td> <!-- Nomor otomatis -->
                                                    <td>{{ $row->user->name }}</td>
                                                    <td>{{ $row->hotel->nama_hotel }}</td>
                                                    <td>{{ $row->kamar->nama_kamar }}</td>
                                                    <td>{{ $row->layanan->nama_layanan }}</td>
                                                    <td>{{ $row->durasi_menginap }} Hari</td>
                                                    <td>{{ $row->status_bk }}</td>
                                                    
                                                    <td class="text-center">

                                                        
                                                    
                                                        <a href="{{ route('user.booking.show', $row->kode_bk) }}" class="btn btn-sm btn-danger"> <i class='far fa-eye'></i> </a>

                                                        



                                                    </td>
                                                </tr>
                                            @empty
                                                <div class="alert alert-danger">
                                                    Data booking belum Tersedia.
                                                </div>
                                            @endforelse
                                        </tbody>
                                    </table>
                                        {{ $bookings->links() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <script>
                    $(document).ready(function() {
                        $('#bookingTable').DataTable();
                    });

                </script>

                </div>
            </div>
        </div>
    </div>
</div>



@endsection

@extends('layouts.user_app')

@section('content')

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card shadow-lg">
                <div class="card-header bg-success text-light">
                    <h3>{{ __('Halaman Booking') }}</h3>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <!-- Button Create & Refresh -->
                    <div class="d-flex justify-content-between mb-4">
                        <a href="/user/booking/create" class="btn btn-lg btn-success"><i class="fa fa-plus-circle"></i> CREATE</a> 
                        <a href="/user/booking" class="btn btn-lg btn-success"><i class="fa fa-refresh"></i> Refresh</a>
                    </div>

                    <!-- Table of Bookings -->
                    <div class="table-responsive">
                        <table id="bookingTable" class="table table-striped table-bordered table-hover">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">No.</th>
                                    <th scope="col">Customer</th>
                                    <th scope="col">Hotel</th>
                                    <th scope="col">Kamar</th>
                                    <th scope="col">Layanan</th>
                                    <th scope="col">Durasi Menginap</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($bookings as $row)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $row->user->name }}</td>
                                        <td>{{ $row->hotel->nama_hotel }}</td>
                                        <td>{{ $row->kamar->nama_kamar }}</td>
                                        <td>{{ $row->layanan->nama_layanan }}</td>
                                        <td>{{ $row->durasi_menginap }} Hari</td>
                                        <td>
                                            <span class="badge bg-{{ $row->status_bk == 'Pending' ? 'warning' : 'success' }}">
                                                {{ $row->status_bk }}
                                            </span>
                                        </td>
                                        <td class="text-center">
                                            <a href="{{ route('user.booking.show', $row->kode_bk) }}" class="btn btn-sm btn-info" title="View Details">
                                                <i class="fa fa-eye"></i> Detail
                                            </a>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="8" class="text-center">Data booking belum tersedia.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                    {{ $bookings->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#bookingTable').DataTable({
            responsive: true,
            paging: true,
            searching: true
        });
    });
</script>

@endsection

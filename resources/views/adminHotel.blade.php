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
 
                    <div class="container mt-5">
                        <div class="row">
                            <div class="col-md-12">
                                
                                <div class="card border-0 ">
                                    <div class="card-body">
                                        <a href="/admin/hotel/create" class="btn btn-md btn-danger mb-3"> CREATE</a> 
                                        <a href="/admin/hotel" class="btn btn-md btn-danger mb-3"><i class='fa fa-refresh'></i></a>
                                        <table id="hotelTable" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">No.</th>
                                                <th scope="col">Nama Hotel</th>
                                                <th scope="col">Deskripsi</th>
                                               
                                                <th scope="col" style="width: 20%">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($hotels as $row)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td> <!-- Nomor otomatis -->
                                                    <td>{{ $row->nama_hotel }}</td>
                                                    <td>{{ $row->desc_hotel }}</td>
                                                    
                                                    <td class="text-center">
                                                        <form id="delete-form-{{ $row->kode_hotel }}" action="{{ route('hotel.destroy', $row->kode_hotel) }}" method="POST" style="display: none;">
                                                            @csrf
                                                            @method('DELETE')
                                                        </form>
                                                        <a href="{{ route('hotel.show', $row->kode_hotel) }}" class="btn btn-sm btn-danger"> <i class='far fa-eye'></i> </a>
                                                        <a href="{{ route('hotel.edit', $row->kode_hotel) }}" class="btn btn-sm btn-danger"> <i class='fas fa-edit'> </i></a>
                                                        <button type="button" class="btn btn-sm btn-danger" onclick="confirmDelete({{ $row->kode_hotel }})"> <i class='fas fa-trash-alt'></i> </button>
                                                    </td>
                                                </tr>
                                            @empty
                                                <div class="alert alert-danger">
                                                    Data hotel belum Tersedia.
                                                </div>
                                            @endforelse
                                        </tbody>
                                    </table>
                                        {{ $hotels->links() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <script>
                    $(document).ready(function() {
                        $('#hotelTable').DataTable();
                    });

                </script>

                </div>
            </div>
        </div>
    </div>
</div>



@endsection

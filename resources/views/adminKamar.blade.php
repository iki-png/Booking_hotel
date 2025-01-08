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
 
                    <div class="container mt-5">
                        <div class="row">
                            <div class="col-md-12">
                                
                                <div class="card border-0 ">
                                    <div class="card-body">
                                        <a href="/admin/kamar/create" class="btn btn-md btn-danger mb-3"> TAMBAH DATA</a> 
                                        <a href="/admin/kamar" class="btn btn-md btn-danger mb-3"><i class='fa fa-refresh'></i></a>
                                        <table id="kamarTable" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">No.</th>
                                                <th scope="col">Nama Kamar</th>
                                                <th scope="col">Harga</th>
                                               
                                                <th scope="col" style="width: 20%">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($kamars as $row)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td> <!-- Nomor otomatis -->
                                                    <td>{{ $row->nama_kamar }}</td>
                                                    <td>{{ "Rp " . number_format($row->harga_kamar,2,',','.') }}</td>
                                                    
                                                    <td class="text-center">
                                                        <form id="delete-form-{{ $row->kode_kamar }}" action="{{ route('kamar.destroy', $row->kode_kamar) }}" method="POST" style="display: none;">
                                                            @csrf
                                                            @method('DELETE')
                                                        </form>
                                                        <a href="{{ route('kamar.show', $row->kode_kamar) }}" class="btn btn-sm btn-danger"> <i class='far fa-eye'></i> </a>
                                                        <a href="{{ route('kamar.edit', $row->kode_kamar) }}" class="btn btn-sm btn-danger"> <i class='fas fa-edit'> </i></a>
                                                        <button type="button" class="btn btn-sm btn-danger" onclick="confirmDelete({{ $row->kode_kamar }})"> <i class='fas fa-trash-alt'></i> </button>
                                                    </td>
                                                </tr>
                                            @empty
                                                <div class="alert alert-danger">
                                                    Data kamar belum Tersedia.
                                                </div>
                                            @endforelse
                                        </tbody>
                                    </table>
                                        {{ $kamars->links() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <script>
                    $(document).ready(function() {
                        $('#kamarTable').DataTable();
                    });

                </script>

                </div>
            </div>
        </div>
    </div>
</div>



@endsection

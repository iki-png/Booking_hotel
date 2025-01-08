@extends('layouts.admin_app')

@section('content')
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-light d-flex justify-content-between align-items-center">
                    <h4>{{ __('HALAMAN KAMAR') }}</h4>
                    <div>
                        <a href="/admin/kamar/create" class="btn btn-light btn-sm">CREATE</a>
                        <a href="/admin/kamar" class="btn btn-light btn-sm"><i class='fa fa-refresh'></i></a>
                    </div>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <div class="table-responsive">
                        <table id="kamarTable" class="table table-bordered table-hover">
                            <thead class="thead-dark">
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
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $row->nama_kamar }}</td>
                                        <td>{{ "Rp " . number_format($row->harga_kamar,2,',','.') }}</td>
                                        <td class="text-center">
                                            <form id="delete-form-{{ $row->kode_kamar }}" action="{{ route('kamar.destroy', $row->kode_kamar) }}" method="POST" style="display: none;">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                            <a href="{{ route('kamar.show', $row->kode_kamar) }}" class="btn btn-sm btn-info"> <i class='far fa-eye'></i> </a>
                                            <a href="{{ route('kamar.edit', $row->kode_kamar) }}" class="btn btn-sm btn-warning"> <i class='fas fa-edit'></i> </a>
                                            <button type="button" class="btn btn-sm btn-danger" onclick="confirmDelete({{ $row->kode_kamar }})"> <i class='fas fa-trash-alt'></i> </button>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="4" class="text-center">Data kamar belum Tersedia.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                        {{ $kamars->links() }}
                    </div>
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
@endsection

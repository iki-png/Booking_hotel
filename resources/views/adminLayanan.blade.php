@extends('layouts.admin_app')

@section('content')
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-light d-flex justify-content-between align-items-center">
                    <h4>{{ __('HALAMAN LAYANAN') }}</h4>
                    <div>
                        <a href="/admin/layanan/create" class="btn btn-light btn-sm">TAMBAH DATA</a>
                        <a href="/admin/layanan" class="btn btn-light btn-sm"><i class='fa fa-refresh'></i></a>
                    </div>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <div class="table-responsive">
                        <table id="layananTable" class="table table-bordered table-hover">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">No.</th>
                                    <th scope="col">Nama Layanan</th>
                                    <th scope="col">Harga</th>
                                    <th scope="col" style="width: 20%">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($layanans as $row)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $row->nama_layanan }}</td>
                                        <td>{{ "Rp " . number_format($row->harga_layanan, 2, ',', '.') }}</td>
                                        <td class="text-center">
                                            <form id="delete-form-{{ $row->kode_layanan }}" action="{{ route('layanan.destroy', $row->kode_layanan) }}" method="POST" style="display: none;">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                            <a href="{{ route('layanan.show', $row->kode_layanan) }}" class="btn btn-sm btn-info"> <i class='far fa-eye'></i> </a>
                                            <a href="{{ route('layanan.edit', $row->kode_layanan) }}" class="btn btn-sm btn-warning"> <i class='fas fa-edit'></i> </a>
                                            <button type="button" class="btn btn-sm btn-danger" onclick="confirmDelete({{ $row->kode_layanan }})"> <i class='fas fa-trash-alt'></i> </button>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="4" class="text-center">Data layanan belum Tersedia.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                        {{ $layanans->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#layananTable').DataTable();
    });

    function confirmDelete(kodeLayanan) {
        if (confirm('Apakah Anda yakin ingin menghapus data ini?')) {
            document.getElementById('delete-form-' + kodeLayanan).submit();
        }
    }
</script>
@endsection

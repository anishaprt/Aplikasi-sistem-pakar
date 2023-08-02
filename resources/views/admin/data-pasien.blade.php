@extends('layouts/landing')
@section('content')
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-5">
                    <h1>Data Pasien</h1>
                </div>
                {{-- <div class="card-tools">
                    <a href="#" class="btn btn-success">Tambah Data +</a>
                </div> --}}
                <div class="container-fluid">
                    <div class="row mb-2">
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="content">
                    <div class="card card-info card-outline">
                        <div class="card-header">
                            <h5></h5>
                            <div class="row g-3 align-items-center">
                                <div class="col-auto">
                                    <form action="/pasien" method="GET">
                                        <input type="search" class="form-control" id="exampleInputEmail1" name="search"
                                            aria-describedby="emailHelp" placeholder="search">
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">
                            <table class="table table-bordered">

                                <tr>
                                    <th>No</th>
                                    <th>No Pasien</th>
                                    <th>Nama Pasien</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Umur</th>
                                    <th>Email</th>
                                    <th>No. Telepon</th>
                                    <th>Alamat</th>
                                </tr>
                                @php
                                $no = 1;
                                @endphp
                                @foreach ($Datapasien as $index => $row )
                                <tr>
                                    <td>{{ $index + $Datapasien->firstItem()}}</td>
                                    <td>{{ $row->id }}</td>
                                    <td>{{ $row->namapasien }}</td>
                                    <td>{{ $row->jeniskelamin }}</td>
                                    <td>{{ $row->umur }}</td>
                                    <td>{{ $row->user ? $row->user->email : '' }}</td>
                                    <td>{{ $row->user ? $row->user->phone : '' }}</td>
                                    <td>{{ $row->user ? $row->user->alamat : '' }}</td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                            {{ $Datapasien->links() }}
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
@endsection

@section('js')
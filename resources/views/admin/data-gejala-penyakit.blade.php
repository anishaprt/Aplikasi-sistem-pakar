@extends('layouts/landing')
@section('content')
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-5">
                    <h1>Data Gejala</h1>
                </div>
                <div class="card-tools">
                    <a class="btn btn-success" href="/tambahdatagejala">
                        <i class="fa-solid fa-circle-plus"></i>
                        Tambah
                    </a>
                </div>
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
                        <form action="/gejala" method="GET">
                        <input type="search" class="form-control" id="exampleInputEmail1" name="search" aria-describedby="emailHelp" placeholder="search">
                        </form>
                        </div>
                    </div>
                        </div>

                        <div class="card-body">
                            <table class="table table-bordered">

                                <tr>
                                    <th>No</th>
                                    <th>Kode Gejala</th>
                                    <th>Kondisi</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Dari Umur</th>
                                    <th>Sampai Umur</th>
                                    <th>Aksi</th>
                                </tr>
                                @php
                                $no = 1;
                                @endphp
                                @foreach ($Datagejala as $index => $row )
                                <tr>
                                    <td>{{ $index + $Datagejala->firstItem()}}</td>
                                    <td>{{ $row->kodegejala }}</td>
                                    <td>{{ $row->kondisi }}</td>
                                    <td>{{ $row->jeniskelamin }}</td>
                                    <td>{{ $row->dari_umur }}</td>
                                    <td>{{ $row->sampai_umur }}</td>
                                    <td>
                                        <a class="btn btn-info btn-sm" href="/editdatagejala/{{ $row->id }}">
                                            <i class="fas fa-pencil-alt">
                                            </i>
                                        </a>
                                        <a class="btn btn-danger btn-sm delete" href="/deletedatagejala/{{ $row->id }}">
                                            <i class="fas fa-trash">
                                            </i>
                                        </a>
                                    </td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                            {{ $Datagejala->links() }}
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
@endsection

@section('js')
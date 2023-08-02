@extends('layouts/landing')
@section('content')
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-5">
                    <h1>Data Aturan</h1>
                </div>
                    <!-- <a class="btn btn-success" href="/tambahdataaturan">
                        <i class="fa-solid fa-circle-plus"></i>
                        Tambah
                    </a> -->
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
                                    <form action="/aturan" method="GET">
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
                                    <th>Nama Aturan</th>
                                    <th>Kondisi</th>
                                    <th>Solusi</th>
                                    <th>Penyakit</th>
                                </tr>
                                @php
                                $no = 1;
                                @endphp
                                @foreach ($Dataaturan as $index => $row )
                                <tr>
                                    <td>{{ $index + $Dataaturan->firstItem()}}</td>
                                    <td>{{ $row->namaaturan }}</td>
                                    <td>{{ $row->kondisi }}</td>
                                    <td>{{ $row->aksiaturan }}</td>
                                    <td>{{ $row->penyakit->nama }}</td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                            {{ $Dataaturan->links() }}
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
@endsection

@section('js')
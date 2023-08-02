@extends('layouts/landing')
@section('content')

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-5">
                    <h1>Halaman Hasil Konsultasi</h1>
                </div>
                <div class="card-tools">
                    {{-- <a class="btn btn-success" href="#">
                        <i class="fa-solid fa-circle-plus"></i>
                        Tambah
                    </a> --}}
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
                                    {{-- <h5>Silahkan pilih kondisi di bawah sesuai dengan yang anda rasakan saat ini.</h5> --}}
                                </div>
                            </div>
                        </div>

                        <div class="card-body">
                            <table class="table table-bordered">

                                <tr>
                                    <th>No</th>
                                    <th>Kondisi</th>
                                    <th>Tanggal Konsultasi</th>
                                </tr>
                                @php
                                $no = 1;
                                @endphp
                                @foreach ($Datagejala as $index => $row )
                                <tr>
                                    <td>{{ $index + $Datagejala->firstItem()}}</td>
                                    <td>{{ $row->kondisi }}</td>
                                    <td><input type="checkbox"></td>
                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="card-footer">
                            {{ $Datagejala->links() }}
                            <form method="POST" action="#">
                                @csrf
                                <button type="submit" class="btn btn-primary float-right">Selesai</button>
                            </form>
                            
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
@endsection


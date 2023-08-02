@extends('layouts/landing')
@section('content')
        <style>
            ul{
                padding-left: 16px !important
            }
            hr{
                margin-top: 15px !important;
                margin-bottom: 15px !important;
            }
        </style>
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
                                <div class="w-100">
                                    <div>
                                        {{-- <h5 class="float-left">Detail</h5> --}}
                                        <div class="float-right">
                                            <a style="margin-bottom:20px" href="{{ route('konsultasi') }}" class="btn btn-primary float-right">Kembali </a>
                                        </div>
                                    </div>
                                    <table class="table mt-4">
                                        <tr>
                                            <th width="15%">Gejala</th>
                                            <th width="25%">Diagnosa penyakit</th>
                                            <th width="20%">Resiko</th>
                                            <th width="25%">Solusi</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <ul>
                                                    <?php foreach ($data['name_gejala_checked'] as $value): ?>
                                                        <li>{{ $value }}</li>
                                                    <?php endforeach ?>
                                                </ul>
                                            </td>
                                            <td>
                                                {{ $data['nama_penyakit'] }} <br><hr>
                                                Deskripsi : {{ $data['deskripsi_penyakit'] }}
                                            </td>
                                            <td>
                                                {{ $data['resiko'] }} <br><hr>
                                                Keterangan : {{ $data['keterangan'] }}
                                            </td>
                                            <td>
                                                <ul>
                                                    <?php foreach ($data['solusi'] as $value): ?>
                                                        <?php if (isset($value->solusi)): ?>
                                                        <li>
                                                            {{ $value->solusi }}
                                                            <hr style="margin:0">
                                                            {{ $value->deskripsi }}
                                                            @if($value->foto)
                                                            <hr style="margin:0">
                                                            <img src="{{ $value->foto }}" width="200">
                                                            @endif
                                                            <br>
                                                            <br>
                                                        </li>
                                                        <?php endif ?>
                                                    <?php endforeach ?>
                                                </ul>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
@endsection
@extends('layouts/landing')
@section('content')
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-3">
                    <h1>Edit Data Solusi</h1>
                </div>
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-12">
                            <!-- jquery validation -->
                            <div class="card card-primary">
                                <div class="card-header">
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <div class="card-body">
                                    <form action="/updatedatasolusi/{{ $Datasolusi->id }}" method="POST" enctype="multipart/form-data">
                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <label for="solusi" class="form-label">Solusi</label>
                                            <input type="text" name="solusi" class="form-control" id="solusi"
                                                placeholder="" value="{{ $Datasolusi->solusi }}">
                                        </div>
                                        <div class="form-group">
                                            <label for="deskripsi" class="form-label">Deskripsi</label>
                                            <input type="text" name="deskripsi" class="form-control" id="deskripsi"
                                                placeholder="" value="{{ $Datasolusi->deskripsi }}">
                                        </div>
                                        <div class="form-group">
                                            <label for="jeniskelamin" class="form-label">Jenis kelamin</label>
                                            <select name="jeniskelamin" class="form-control" id="jeniskelamin">
                                                <option {{ $Datasolusi->jeniskelamin == "Laki-laki" ? 'selected' : '' }} value="Laki-laki">Laki-laki</option>
                                                <option {{ $Datasolusi->jeniskelamin == "Perempuan" ? 'selected' : '' }} value="Perempuan">Perempuan</option>
                                                <option {{ $Datasolusi->jeniskelamin == "Unisex" ? 'selected' : '' }} value="Unisex">Unisex</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="dari_umur" class="form-label">Dari umur</label>
                                            <input type="number" name="dari_umur" class="form-control" id="dari_umur"
                                                placeholder="" value="{{ $Datasolusi->dari_umur }}">
                                        </div>
                                        <div class="form-group">
                                            <label for="sampai_umur" class="form-label">Sampai umur</label>
                                            <input type="number" name="sampai_umur" class="form-control" id="sampai_umur"
                                                placeholder="" value="{{ $Datasolusi->sampai_umur }}">
                                        </div>
                                        <div class="form-group">
                                            <label for="foto" class="form-label">foto</label>
                                            <input type="file" name="foto" class="form-control" id="foto" required
                                                placeholder="" value="{{ $Datasolusi->foto }}">
                                        </div>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <button type="button" class="btn btn-secondary" onclick="window.history.back();">Kembali</button>
                                </div>
                                </form>
                            </div>
                            <!-- /.card -->
                        </div>
                        <!--/.col (left) -->
                        <!-- right column -->
                        <div class="col-md-6">

                        </div>
                        <!--/.col (right) -->
                    </div>
                    <!-- /.row -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
@endsection

@section('js')
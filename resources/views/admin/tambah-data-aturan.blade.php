@extends('layouts/landing')
@section('content')
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-3">
                    <h1>Tambah Data Aturan</h1>
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
                                    <form action="/inputaturan" method="POST" enctype="multipart/form-data">
                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <label for="namaaturan" class="form-label">Nama Aturan</label>
                                            <input type="text" name="namaaturan" class="form-control" id="namaaturan"
                                                placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="kondisi" class="form-label">Kondisi</label>
                                            <input type="text" name="kondisi" class="form-control" id="kondisi"
                                                placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="aksiaturan" class="form-label">Aksi Aturan</label>
                                            <input type="text" name="aksiaturan" class="form-control" id="aksiaturan"
                                                placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">Penyakit</label>
                                            <select name="penyakit" class="form-control">
                                                @foreach($data['penyakit'] as $val)
                                                <option value="{{ $val->id }}">{{ $val->nama }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
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
@extends('layouts/landing')
@section('content')
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-4 d-flex justify-content-between">
                    <h1>
                        Halaman Konsultasi <br>
                        <a href="{{ url('print') }}" class="btn btn-primary">Cetak Kartu</a>
                    </h1>
                    <h1>Nomor Pasien / ID : {{ auth()->user()->id_pasien }}</h1>  

                </div>
                {{-- <div class="mb-4 d-flex justify-content-between">
                    <h1>Simpan ID pasien</h1> 
                </div> --}}
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
                                    <h5>Silahkan pilih kondisi di bawah sesuai dengan yang anda rasakan saat ini.</h5>
                                    <h6>Tekan Ctrl+Klik untuk memilih kondisi jika lebih dari satu<h6>
                                </div>
                            </div>
                        </div>

                        <form method="post" action="{{ route('diagnosa') }}" class="card-body">
                            @csrf
                            <select name="gejala[]" multiple style="height: 300px;" class="form-control">
                                @foreach ($data['gejala'] as $index => $row )
                                <option value="{{ $row->id }}">{{ $row->kondisi }}</option>
                                @endforeach
                            </select>
                            <button type="submit" class="btn btn-primary mt-2 float-right">Simpan</button>
                        </form>
                    </div><!-- /.container-fluid -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
@endsection

@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script>
        $(document).on('click','.change-gejala',function () {
            return false
            let add = true
            if($(this).is(':checked')){
                add = false
            }
            var id_gejala = $(this).data('gejala');
            var id_pasien = $(this).data('pasien');

            $.ajax({
                url: "{{ url('gejala_pasien') }}",
                type: "post",
                headers: {
                   'X-CSRF-TOKEN': "{{ csrf_token() }}"
                },
                data: {
                    id_gejala : id_gejala,
                    id_pasien : id_pasien,
                    action : add == false ? 'add' : 'remove'
                },
                success: function (res) {
                    toastr.options = {
                      "closeButton": false,
                      "debug": false,
                      "newestOnTop": false,
                      "progressBar": false,
                      "positionClass": "toast-top-right",
                      "preventDuplicates": false,
                      "onclick": null,
                      "showDuration": "300",
                      "hideDuration": "1000",
                      "timeOut": "5000",
                      "extendedTimeOut": "1000",
                      "showEasing": "swing",
                      "hideEasing": "linear",
                      "showMethod": "fadeIn",
                      "hideMethod": "fadeOut"
                    }
                    toastr["success"]("Kondisi berhasil dirubah")
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log(textStatus, errorThrown);
                }
            });
        });

    </script>
    @if($errors->any())
        <script>
            alert("<?= $errors->first() ?>")
        </script>
    @endif
@endsection
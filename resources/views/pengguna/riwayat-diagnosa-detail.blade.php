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
                    <h1>Detail Riwayat Diagnosa</h1>
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
                    @if($data['riwayatdiagnosa'] != null && $data['gejala'][0] != null)
                    <div class="card card-info card-outline">
                        <h5 class="mt-3 ml-3 mx-4">
                            Tanggal Dibuat : {{ date('d M Y', strtotime($data['riwayatdiagnosa']->updated_at)) }}
                            <a href="{{ url('riwayat-diagnosa') }}" class="btn btn-primary float-right">Kembali</a>
                        </h5>
                        <div class="card-body">
                            <table class="table mt-4 table-bordered">
                                <tr>
                                    <th width="15%">Gejala</th>
                                    <th width="25%">Diagnosa penyakit</th>
                                    <th width="20%">Resiko</th>
                                    <th width="25%">Solusi</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul>
                                            @foreach($data['gejala'] as $val)
                                            <li>{{ $val->kondisi }}</li>
                                            @endforeach
                                        </ul>
                                    </td>
                                    <td width="">
                                        {{ $data['riwayatdiagnosa']->penyakit->nama }} <br><hr>
                                        Deskripsi : {{ $data['riwayatdiagnosa']->penyakit->deskripsi }}
                                    </td>
                                    <td width="">
                                        {{ $data['riwayatdiagnosa']->resiko }} <br><hr>
                                        Keterangan
        <style>
            ul{
                padding-left: 16px !important
            }
            hr{
                margin-top: 15px !important;
                margin-bottom: 15px !important;
            }
        </style> : {{ $data['riwayatdiagnosa']->keterangan }}
                                    </td>
                                    <td>
                                        <ul>
                                            @foreach($data['solusi'] as $val)
                                            <li>
                                                {{ $val->solusi }}
                                                <hr style="margin:0">
                                                {{ $val->deskripsi }}
                                                @if($val->foto)
                                                <hr style="margin:0">
                                                <img src="{{ $val->foto }}" width="200">
                                                @endif
                                                <br>
                                                <br>
                                            </li>
                                            @endforeach
                                        </ul>
                                    </td>
                                </tr>
                            </table>

                        </div>
                        <div class="card-footer">
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                    @else
                    <hr>
                    <h4>Belum ada riwayat konsultasi.</h4>
                    <h4>Silahkan konsultasi terlebih dahulu.</h4>
                    <hr>
                    @endif
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

@endsection
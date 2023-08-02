@extends('layouts/landing')
@section('content')
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="mb-5">
                    <h1>Riwayat Diagnosa</h1>
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
                        <div class="card-body">
                            <table class="table mt-4 table-bordered">
                                <tr>
                                    <th>No</th>
                                    <th>Tanggal</th>
                                    <th>Penyakit</th>
                                    <th>Opsi</th>
                                </tr>
                                @foreach($data['riwayatdiagnosa'] as $id => $value)
                                <tr>
                                    <td>{{ $id+1 }}</td>
                                    <td>{{ $value->created_at }}</td>
                                    <td>{{ $value->penyakit->nama }}</td>
                                    <td>
                                        <a href="{{ url('detail-riwayat-diagnosa/'.$value->id) }}" class="btn btn-info">Detail</a>
                                    </td>
                                </tr>
                                @endforeach
                            </table>

                        </div>
                        <div class="card-footer">
                        </div>
                        <!-- /.row -->
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
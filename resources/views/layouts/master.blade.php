
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Sistem Pakar | Konsultasi</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="{{ asset('AdminLTE/plugins/fontawesome-free/css/all.min.css') }}">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="{{ asset('AdminLTE/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
  <link rel="stylesheet" href="{{ asset('AdminLTE/dist/css/adminlte.min.css') }}">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <style>
    body {
        background-image: url("../Foto/back2.jpg") !important;
        background-repeat: no-repeat;
        background-size: cover;
    }
    .login-box {
        /* Tambahkan gaya untuk kotak login di sini */
    }
    /* Tambahkan gaya lain yang diperlukan */
</style>
</head>
<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            {{-- <a href=""><b>Konsultasi</b></a> --}}
        </div>
        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Silahkan Pilih Menu Anda!</p>

                <div class="row">
                    <div class="col-6 text-center">
                        <a href="/loginId" class="btn btn-info">Pasien Sudah Terdaftar</a>
                    </div>
                    <div class="col-6 text-center">
                        <a href="/viewregister" class="btn btn-info">Pasien Belum Terdaftar</a>
                    </div>
                </div>

                <p class="mb-0">
                </p>
            </div>
        </div>
    </div>

    <script src="{{ asset('AdminLTE/plugins/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('AdminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('AdminLTE/dist/js/adminlte.min.js') }}"></script>

</body>
</html>
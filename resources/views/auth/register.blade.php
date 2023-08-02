<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Registration Page</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('AdminLTE/plugins/fontawesome-free/css/all.min.css')}}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{ asset('AdminLTE/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('AdminLTE/dist/css/adminlte.min.css')}}">
    <!-- Google Font: Source Sans Pro -->
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

<body class="hold-transition register-page">
    <div class="register-box">
        <div class="register-logo">
            {{-- <a href=""><b>Sistem Pakar</b></a> --}}
        </div>

        <div class="card">
            <div class="card-body register-card-body">
                <p class="login-box-msg">Silahkan Masukan Data Diri Anda!</p>

                <form action="/register" method="post">
                    {{ csrf_field() }}
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="namalengkap" required placeholder="Nama Lengkap">
                    </div>
                    <div class="input-group mb-3">
                        <select class="form-control" name="jeniskelamin" aria-label="Default select example">
                            <option selected>Jenis Kelamin</option>
                            <option value="Laki-laki">Laki-laki</option>
                            <option value="Perempuan">Perempuan</option>
                        </select>
                    </div>
                    <div class="input-group mb-3">
                        <input type="number" class="form-control" name="umur" requried placeholder="Umur">
                    </div>
                    {{-- <div class="input-group mb-3">
                        <input type="date" class="form-control" name="tanggal_lahir" requried placeholder="Tanggal Lahir">
                    </div> --}}
                    <div class="input-group mb-3">
                        <input type="number" class="form-control" name="phone" requried placeholder="No. Telepon">
                    </div>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" name="email" requried placeholder="Email">
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="alamat" requried placeholder="Alamat">
                    </div>
                    {{-- <div class="input-group mb-3">
                        <input type="password" class="form-control" name="password" requried placeholder="Password">
                    </div>
                    <div class="input-group mb-3">
                        <select class="form-control" name="level" aria-label="level">
                            <option selected>Level</option>
                            <option value="Admin">Admin</option>
                            <option value="Pengguna">Pengguna</option>
                        </select>
                    </div> --}}
                    <div class="row">
                        <div class="col-8">
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block">Simpan</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>

                {{-- <div class="social-auth-links text-center">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i>
          Sign up using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i>
          Sign up using Google+
        </a>
      </div> --}}

                <a href="/loginId" class="text-center">Saya sudah terdaftar</a>
            </div>
            <!-- /.form-box -->
        </div><!-- /.card -->
    </div>
    <!-- /.register-box -->

    <!-- jQuery -->
    <script src="{{ asset('AdminLTE/plugins/jquery/jquery.min.js')}}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('AdminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('AdminLTE/dist/js/adminlte.min.js')}}"></script>
</body>

</html>
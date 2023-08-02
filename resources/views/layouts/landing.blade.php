<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="SISTEM PAKAR">
  <title>Sistem Pakar</title>
  <link rel="icon" href="{{ asset('argon/assets/img/brand/favicon.png') }}" type="image/png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="{{ asset('argon/assets/vendor/nucleo/css/nucleo.css') }}" type="text/css">
  <link rel="stylesheet" href="{{ asset('argon/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css') }}" type="text/css">
  <link rel="stylesheet" href="{{ asset('argon/assets/css/argon.css?v=1.2.0') }}" type="text/css">
  <style>
    .navbar{
      margin-left: -20%;
    }
    .main-content{
      margin: 0 !important;
    }
    .button-hidden{
      cursor: pointer;
    }
  </style>
</head>

<body>
  <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
      <div class="sidenav-header  align-items-center mb-5">
        <a class="navbar-brand" href="/">
          <img src="{{asset('Foto/logo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"class="navbar-brand-img">
        </a>
        <h3 class="text-primary">Aplikasi Deteksi Kelainan <br> Ginjal</h3>

      </div>
      <div class="navbar-inner">
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">
          <ul class="navbar-nav">

            @if (auth()->user()->level == "Admin")
            <li class="nav-item">
              <li class="nav-item">
                <a href="/pasien" class="nav-link">
                  <i class="fas fa-user text-primary"></i>
                  <span class="nav-link-text font-weight-bold">Data Pasien</span>
                </a>
              </li>
              <li class="nav-item">
                <a href="/gejala" class="nav-link">
                  <i class="fas fa-window-close text-warning"></i>
                  <span class="nav-link-text font-weight-bold">Gejala</span>
                </a>
              </li>
              <li class="nav-item">
                <a href="/penyakit" class="nav-link">
                  <i class="fab fa-gripfire text-info"></i>
                  <span class="nav-link-text font-weight-bold">Penyakit</span>
                </a>
              </li>
              <li class="nav-item">
                <a href="/solusi" class="nav-link">
                  <i class="fas fa-hands-helping text-success"></i>
                  <span class="nav-link-text font-weight-bold">Solusi</span>
                </a>
              </li>
              <li class="nav-item">
                <a href="/aturan" class="nav-link">
                  <i class="fas fa-tools text-warning"></i>
                  <span class="nav-link-text font-weight-bold">Aturan</span>
                </a>
              </li>
            </li>
            @endif
            @if (auth()->user()->level == "Pengguna")
            <h4 class="text-info text-center font-weight-bold">Nomor Pasien / ID : {{ auth()->user()->id_pasien }}</h4>
            <a href="{{url('konsultasi')}}" class="nav-link">
              <i class="fas fa-comment-medical text-primary"></i>
              <span class="nav-link-text font-weight-bold">Konsultasi</span>
            </a>
            <a href="{{url('riwayat-diagnosa')}}" class="nav-link">
              <i class="fas fa-diagnoses text-warning"></i>
              <span class="nav-link-text font-weight-bold">Riwayat Diagnosa</span>
            </a>
            @endif

          </ul>
          <hr class="mt-3 mb-1">
          <ul class="navbar-nav mb-md-3">
            <li class="nav-item">
              <a class="nav-link" href="/logout">
                <i class="fas fa-sign-in-alt text-success"></i>
                <span class="nav-link-text font-weight-bold">Logout</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <div class="main-content" id="panel">
    <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
      <div style="margin-left: 20%;" class="text-white hidden-sidebar button-hidden">
        <i class="fas fa-align-justify"></i>
      </div>
    </nav>
    <div class="header p-5">
      @yield('content')
    </div>
  </div>
  <script src="{{ asset('argon/assets/vendor/jquery/dist/jquery.min.js') }}"></script>
  <script src="{{ asset('argon/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('argon/assets/vendor/js-cookie/js.cookie.js') }}"></script>
  <script src="{{ asset('argon/assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js') }}"></script>
  <script src="{{ asset('argon/assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js') }}"></script>
  <script src="{{ asset('argon/assets/vendor/chart.js/dist/Chart.min.js') }}"></script>
  <script src="{{ asset('argon/assets/vendor/chart.js/dist/Chart.extension.js') }}"></script>
  <script src="{{ asset('argon/assets/js/argon.js?v=1.2.0') }}"></script>
  @yield('js')
  <script>
    $(".button-hidden").click(function(){
      if($(this).hasClass('hidden-sidebar')){
        $('.navbar').css({marginLeft : '0'})
        $('.header').css({marginLeft : '250px'})
        $(this).removeClass('hidden-sidebar')
        $(this).addClass('show-sidebar')
      }else{
        $('.navbar').css({marginLeft : '-20%'})
        $('.header').css({marginLeft : '0'})
        $(this).addClass('hidden-sidebar')
        $(this).removeClass('show-sidebar')
      }
    })
  </script>

</body>

</html>

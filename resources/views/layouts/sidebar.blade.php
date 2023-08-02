<div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        {{-- <div class="image">
            <img src="{{ asset('AdminLTE/dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2"
        alt="User Image">
    </div> --}}
    <div class="info">
        {{-- <a href="#" class="d-block">Admin</a> --}}
    </div>
</div>

<!-- SidebarSearch Form -->
{{-- <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
            <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append">
                <button class="btn btn-sidebar">
                    <i class="fas fa-search fa-fw"></i>
                </button>
            </div>
        </div>
    </div> --}}

<!-- Sidebar Menu -->
<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        </li>
        @if (auth()->user()->level == "Admin")
        <li class="nav-header">ADMIN</li>
        <li class="nav-item menu-open">
            <a href="/beranda" class="nav-link">
                <i class="fa-solid fa-house-medical"></i>
                <p>
                    Home
                </p>
            </a>
        <li class="nav-item menu-open">
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="/pasien" class="nav-link">
                        <i class="fa-solid fa-hospital-user"></i>
                        <p>Data Pasien</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/gejala" class="nav-link">
                        <i class="fa-sharp fa-solid fa-notes-medical"></i>
                        <p>Gejala</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/penyakit" class="nav-link">
                        <i class="fa-solid fa-bed-pulse"></i>
                        <p>Penyakit</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/solusi" class="nav-link">
                        <i class="fa-solid fa-kit-medical"></i>
                        <p>Solusi</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/aturan" class="nav-link">
                        <i class="fa-sharp fa-solid fa-person-circle-question"></i>
                        <p>Aturan</p>
                    </a>
                </li>
                @endif
                {{-- <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fa-solid fa-virus-covid-slash"></i>
                        <p>Riwayat Penyakit</p>
                    </a>
                </li> --}}
                @if (auth()->user()->level == "Pengguna")
                <li class="nav-header">USER</li>
                <li class="nav-item menu-open">
                    <a href="/" class="nav-link">
                        <i class="fa-solid fa-house-medical"></i>
                        <p>
                            Home
                        </p>
                    </a>
                </li>
                <li class="nav-item menu-open">
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <p>Nomor Antrian / ID : {{ auth()->user()->id_pasien }}</p>
                        </li>
                        <li class="nav-item">
                            <a href="{{url('konsultasi')}}" class="nav-link">
                                <i class="fa-solid fa-user-doctor"></i>
                                <p>Konsultasi</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{url('riwayat-diagnosa')}}" class="nav-link">
                                <i class="fa-solid fa-user-doctor"></i>
                                <p>Riwayat Diagnosa</p>
                            </a>
                        </li>
                        </li>
                        @endif
                        <li class="card bg-danger">
                            <a href="/logout" class="nav-link">
                                <i class="fa-solid fa-right-from-bracket"></i>
                                <p>Keluar</p>
                            </a>
                        </li>
                    </ul>
                </li>
</nav>
<!-- /.sidebar-menu -->
</div>
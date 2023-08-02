<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PasienController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LoginIdController;
use App\Http\Controllers\GejalaController;
use App\Http\Controllers\PenyakitController;
use App\Http\Controllers\KonsultasiController;
use App\Http\Controllers\DatagejalapenyakitController;
use App\Http\Controllers\SolusiController;
use App\Http\Controllers\AturanController;
use App\Http\Controllers\HomeController;
// use App\Http\Controllers\PerhitunganController;
// use App\Http\Controllers\RiwayatpenyakitController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
route::get('/', [HomeController::class, 'index'])->name('beranda');
Route::group(['middleware'=> ['auth', 'ceklevel:Pengguna,Admin']], function () {
	route::get('/beranda', [HomeController::class, 'index'])->name('beranda');
});

// LOGIN //
Route::get('/login', [LoginController::class, 'login'])->name('login');
Route::post('/postlogin', [LoginController::class, 'postlogin'])->name('postlogin');
Route::get('/viewregister', [LoginController::class, 'viewregister'])->name('viewregister');
Route::post('/register', [LoginController::class, 'register'])->name('register');
Route::get('/datapasien', [LoginController::class, 'datapasien'])->name('datapasien');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

Route::get('/loginId', [LoginIdController::class, 'login']);
Route::get('/print', [LoginIdController::class, 'print']);
Route::post('/postloginId', [LoginIdController::class, 'postlogin']);

// ADMIN//
// // DATA-PASIEN//
Route::group(['middleware'=>['auth', 'ceklevel:Admin']], function(){
Route::get('/pasien', [PasienController::class, 'index'])->name('pasien');
// // DATA-GEJALA//

Route::get('/gejala', [GejalaController::class, 'index'])->name('gejala');
Route::get('/tambahdatagejala', [GejalaController::class, 'tambahdatagejala'])->name('tambahdatagejala');
Route::post('/inputdatagejala', [GejalaController::class, 'store'])->name('inputdatagejala');
Route::get('/editdatagejala/{id}', [GejalaController::class, 'edit'])->name('editdatagejala');
Route::post('/updatedatagejala/{id}', [GejalaController::class, 'update'])->name('updatedatagejala');
Route::get('/deletedatagejala/{id}', [GejalaController::class, 'delete'])->name('deletedatagejala');
});

// // DATA-PENYAKIT//
Route::group(['middleware'=>['auth', 'ceklevel:Admin']], function(){
Route::get('/penyakit', [PenyakitController::class, 'index'])->name('penyakit');
Route::get('/tambahdatapenyakit', [PenyakitController::class, 'tambahdatapenyakit'])->name('tambahdatapenyakit');
Route::post('/inputdatapenyakit', [PenyakitController::class, 'store'])->name('inputdatapenyakit');
Route::get('/editdatapenyakit/{id}', [PenyakitController::class, 'edit'])->name('editdatapenyakit');
Route::post('/updatedatapenyakit/{id}', [PenyakitController::class, 'update'])->name('updatedatapenyakit');
Route::get('/deletedatapenyakit/{id}', [PenyakitController::class, 'delete'])->name('deletedatapenyakit');
});

// // RIWAYAT-PENYAKIT//
// Route::group(['middleware'=>['auth', 'ceklevel:Admin']], function(){
// Route::get('/riwayatpenyakit', [RiwayatpenyakitController::class, 'index'])->name('riwayatpenyakit');
// Route::get('/tambahriwayatpenyakit', [RiwayatpenyakitController::class, 'tambahriwayatpenyakit'])->name('tambahriwayatpenyakit');
// Route::post('/inputriwayatpenyakit', [RiwayatpenyakitController::class, 'store'])->name('inputriwayatpenyakit');
// Route::get('/editriwayatpenyakit/{id}', [RiwayatpenyakitController::class, 'edit'])->name('editriwayatpenyakit');
// Route::post('/updateriwayatpenyakit/{id}', [RiwayatpenyakitController::class, 'update'])->name('updateriwayatpenyakit');
// Route::get('/deleteriwayatpenyakit/{id}', [RiwayatpenyakitController::class, 'delete'])->name('deleteriwayatpenyakit');
// });


// DATA-SOLUSI//
Route::group(['middleware'=>['auth', 'ceklevel:Admin' ]], function(){
Route::get('/solusi', [SolusiController::class, 'index'])->name('datasolusi');
Route::get('/tambahdatasolusi', [SolusiController::class, 'tambahdatasolusi'])->name('tambahdatasolusi');
Route::post('/inputdatasolusi', [SolusiController::class, 'store'])->name('inputdatasolusi');
Route::get('/editdatasolusi/{id}', [SolusiController::class, 'edit'])->name('editdatasolusi');
Route::post('/updatedatasolusi/{id}', [SolusiController::class, 'update'])->name('updatedatasolusi');
Route::get('/deletedatasolusi/{id}', [SolusiController::class, 'delete'])->name('deletedatasolusi');
});

// ATURAN//
Route::group(['middleware'=>['auth', 'ceklevel:Admin']], function(){
Route::get('/aturan', [AturanController::class, 'index'])->name('aturan');
Route::get('/tambahdataaturan', [Aturancontroller::class, 'tambahdataaturan'])->name('tambahdataaturan');
Route::post('/inputaturan', [Aturancontroller::class, 'store'])->name('inputaturan');
Route::get('/editdataaturan/{id}', [SolusiController::class, 'edit'])->name('editdataaturan');
});
// Route::post('/inputdatasolusi', [PertanyaanController::class, 'store'])->name('inputdatasolusi');
// Route::get('/editdatasolusi/{id}', [PertanyaanController::class, 'edit'])->name('editdatasolusi');
// Route::post('/updatedatasolusi/{id}', [PertanyaanController::class, 'update'])->name('updatedatasolusi');
// Route::get('/deletedatasolusi/{id}', [PertanyaanController::class, 'delete'])->name('deletedatasolusi');

// Route::get('/perhitungan', [PerhitunganController::class, 'index'])->name('perhitungan');

// // DATA-GEJALA-PENYAKIT//
// Route::get('/datagejalapenyakit', [DatagejalapenyakitController::class, 'datagejalapenyakit'])->name('datagejalapenyakit');
// Route::get('/tambahdatagejalapenyakit', [DatagejalapenyakitController::class, 'tambahdatagejalapenyakit'])->name('tambahdatagejalapenyakit');
// Route::post('/inputdatagejalapenyakit', [DatagejalapenyakitController::class, 'inputdatagejalapenyakit'])->name('inputdatagejalapenyakit');

Route::group(['middleware'=>['auth', 'ceklevel:Pengguna']], function(){
Route::get('/konsultasi', [KonsultasiController::class, 'index'])->name('konsultasi');
Route::post('/konsultasi', [KonsultasiController::class, 'diagnosa'])->name('diagnosa');
Route::get('/riwayat-diagnosa', [KonsultasiController::class, 'riwayat_diagnosa'])->name('riwayat_diagnosa');
Route::get('/detail-riwayat-diagnosa/{id}', [KonsultasiController::class, 'detail_riwayat_diagnosa'])->name('detail_riwayat_diagnosa');
// Route::post('/updatekonsultasi', [KonsultasiController::class, 'update'])->name('updatekonsultasi');
});
Route::post('/gejala_pasien', [KonsultasiController::class, 'store']);
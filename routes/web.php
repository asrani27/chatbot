<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KPAController;
use App\Http\Controllers\KPPController;
use App\Http\Controllers\DesaController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\TkrkController;
use App\Http\Controllers\AgamaController;
use App\Http\Controllers\JaksaController;
use App\Http\Controllers\LahirController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\NikahController;
use App\Http\Controllers\UsahaController;
use App\Http\Controllers\BotManController;
use App\Http\Controllers\DaftarController;
use App\Http\Controllers\KorbanController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\ProfilController;
use App\Http\Controllers\AdminSKController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\AdminKrkController;
use App\Http\Controllers\KematianController;
use App\Http\Controllers\PendudukController;
use App\Http\Controllers\PenyidikController;
use App\Http\Controllers\InformasiController;
use App\Http\Controllers\KelahiranController;
use App\Http\Controllers\PengajuanController;
use App\Http\Controllers\TersangkaController;
use App\Http\Controllers\PendidikanController;
use App\Http\Controllers\PercakapanController;
use App\Http\Controllers\TpermohonanController;
use App\Http\Controllers\LupaPasswordController;
use App\Http\Controllers\DaftarLayananController;
use App\Http\Controllers\GantiPasswordController;
use App\Http\Controllers\AdminPermohonanController;

Route::get('/', function () {
    return view('welcome');
});
Route::match(['get', 'post'], 'botman', [BotManController::class, 'handle']);

Route::get('login', [LoginController::class, 'index'])->name('login');
Route::post('login', [LoginController::class, 'login']);
Route::get('daftar', [DaftarController::class, 'index']);
Route::post('daftar', [DaftarController::class, 'daftar']);
Route::get('lupa-password', [LupaPasswordController::class, 'index']);
Route::get('/reload-captcha', [LoginController::class, 'reloadCaptcha']);
Route::get('/logout', [LogoutController::class, 'logout']);


Route::group(['middleware' => ['auth', 'role:superadmin']], function () {
    Route::get('superadmin', [HomeController::class, 'superadmin']);
    Route::get('superadmin/gp', [GantiPasswordController::class, 'index']);
    Route::post('superadmin/gp', [GantiPasswordController::class, 'update']);
    Route::post('superadmin/sk/updatelurah', [HomeController::class, 'updatelurah']);

    Route::get('superadmin/informasi', [InformasiController::class, 'index']);
    Route::get('superadmin/informasi/create', [InformasiController::class, 'create']);
    Route::post('superadmin/informasi/create', [InformasiController::class, 'store']);
    Route::get('superadmin/informasi/edit/{id}', [InformasiController::class, 'edit']);
    Route::post('superadmin/informasi/edit/{id}', [InformasiController::class, 'update']);
    Route::get('superadmin/informasi/delete/{id}', [InformasiController::class, 'delete']);

    Route::get('superadmin/percakapan', [PercakapanController::class, 'index']);
    Route::get('superadmin/percakapan/detail/{chat_id}', [PercakapanController::class, 'detail']);
});

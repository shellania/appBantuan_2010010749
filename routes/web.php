<?php

use App\Http\Controllers\PendudukController;
use App\Http\Controllers\SembakoController;
use App\Http\Controllers\TunaiController;
use App\Http\Controllers\RumahController;
use App\Http\Controllers\PDFController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('template.master');
// });

Route::get('/', function () {
    return view('home');
});


Route::resource('penduduk', PendudukController::class);
// Route::get('/penduduk', function () {
//     return view('penduduk.penduduk');
//     echo "Data Penduduk";
// })->name('datapenduduk');

Route::resource('sembako', SembakoController::class);
// Route::get('/sembako', function () {
//     return view('sembako.sembako');
//     echo "Data Sembako";
// })->name('datasembako');

Route::resource('tunai', TunaiController::class);
// Route::get('/tunai', function () {
//     return view('tunai.tunai');
//     echo "Data Tunai";
// })->name('datablt');


Route::resource('rumah', RumahController::class);
//     return view('rumah.rumah');
//     echo "Data Rumah";
// })->name('bedahrumah');
Route::get('/cetak', [PDFController::class, 'cetakPDF'])->name('cetak');

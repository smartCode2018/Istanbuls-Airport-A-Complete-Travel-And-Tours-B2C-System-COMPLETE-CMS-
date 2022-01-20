<?php

use App\Http\Controllers\AdminDashboard;
use App\Http\Controllers\EvisaController;
use App\Http\Controllers\FlightStatusController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

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

//Public Routes
Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/flight/status', [FlightStatusController::class, 'index'])->name('flight.status');
Route::get('/evisa/booking', [EvisaController::class, 'index'])->name('evisa.booking');
Route::post('/evisa/booking', [EvisaController::class, 'store'])->name('evisa.submit');






// Admin Routes
Route::get('/admin/dashboard', [AdminDashboard::class, 'index'])->name('admin.home');
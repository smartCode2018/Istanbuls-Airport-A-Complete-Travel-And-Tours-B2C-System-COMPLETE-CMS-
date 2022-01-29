<?php
use App\Http\Controllers\AdminDashboard;
use App\Http\Controllers\AirportServicesController;
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
Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/flight/status', [FlightStatusController::class, 'index'])->name('flight.status');
Route::get('/evisa', [EvisaController::class, 'index'])->name('evisa');
Route::get('/evisa/booking', [EvisaController::class, 'create'])->name('evisa.booking');
Route::post('/evisa/booking', [EvisaController::class, 'store'])->name('evisa.submit');
Route::post('/airport_services/airport_taxi/{type}', [AirportServicesController::class, 'create'])->name('airport-taxi-booking');
Route::put('/airport_services/airport_taxi/', [AirportServicesController::class, 'store'])->name('airport-taxi-booking-store');

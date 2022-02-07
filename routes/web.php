<?php
use App\Http\Controllers\AdminDashboard;
use App\Http\Controllers\AirportServicesController;
use App\Http\Controllers\CovidPCRTestController;
use App\Http\Controllers\EvisaController;
use App\Http\Controllers\FlightStatusController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MeetAndGreetController;
use App\Http\Controllers\MuseumPassController;
use App\Http\Controllers\TouristPassController;
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
Route::get('/evisa/booking', [EvisaController::class, 'create'])->name('evisa.booking');
Route::post('/evisa/booking', [EvisaController::class, 'store'])->name('evisa.submit');
Route::post('/airport_services/airport_taxi/{type}', [AirportServicesController::class, 'create'])->name('airport-taxi-booking');
Route::put('/airport_services/airport_taxi/', [AirportServicesController::class, 'store'])->name('airport-taxi-booking-store');
Route::get('/premium_services/meet_and_greet_booking_form/{type}',[MeetAndGreetController::class, 'index'])->name('mga-booking');
Route::get('/istanbul-tourist-pass', [TouristPassController::class, 'create'])->name('tourist-pass-booking');
Route::get('/istanbul-tour-booking', [TouristPassController::class, 'istanbulTour'])->name('istanbul-tour-booking');
Route::get('/museum-pass', [MuseumPassController::class, 'create'])->name('museum-pass-booking');
Route::get('/covid19-pcr-booking', [CovidPCRTestController::class, 'create'])->name('covid-pcr-test-booking');
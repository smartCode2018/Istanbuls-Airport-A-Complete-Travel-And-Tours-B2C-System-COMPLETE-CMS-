<?php
use App\Http\Controllers\AdminDashboardController;
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

Route::get('/airport_services/airport_taxi/{type?}', [AirportServicesController::class, 'create'])->name('airport-taxi-booking');
Route::put('/airport_services/airport_taxi/', [AirportServicesController::class, 'store'])->name('airport-taxi-booking-store');

Route::get('/premium_services/meet_and_greet_booking_form/{type}',[MeetAndGreetController::class, 'index'])->name('mga-booking');
Route::put('/premium_services/meet_and_greet_booking_form',[MeetAndGreetController::class, 'store'])->name('mga-booking-store');
Route::get('/premium_services/vip_pass_form',[MeetAndGreetController::class, 'vipPassBooking'])->name('vip-pass-booking');
Route::put('/premium_services/vip_pass_form',[MeetAndGreetController::class, 'vipPassBookingStore'])->name('vip-pass-booking-store');
Route::get('/premium_services/lounge-form',[MeetAndGreetController::class, 'loungeBooking'])->name('lounge-booking');
Route::put('/premium_services/lounge-form',[MeetAndGreetController::class, 'loungeBookingStore'])->name('lounge-booking-store');
Route::get('/premium_services/rent-car-booking',[MeetAndGreetController::class, 'rentCarBooking'])->name('rent-car-booking');
Route::get('/premium_services/rent-car-booking-store',[MeetAndGreetController::class, 'rentCarStore'])->name('rent-car-store');

Route::get('/istanbul-tourist-pass', [TouristPassController::class, 'createPass'])->name('tourist-pass-booking');
Route::put('/istanbul-tourist-pass', [TouristPassController::class, 'storePass'])->name('tourist-pass-booking-store');
Route::get('/istanbul-tour-booking', [TouristPassController::class, 'createTour'])->name('istanbul-tour-booking');
Route::put('/istanbul-tour-booking', [TouristPassController::class, 'storeTour'])->name('istanbul-tour-booking-store');

Route::get('/museum-pass-booking', [MuseumPassController::class, 'create'])->name('museum-pass-booking');
Route::put('/museum-pass-booking', [MuseumPassController::class, 'store'])->name('museum-pass-booking-store');

Route::get('/covid19-pcr-booking', [CovidPCRTestController::class, 'create'])->name('covid-pcr-test-booking');
Route::put('/covid19-pcr-booking', [CovidPCRTestController::class, 'store'])->name('covid-pcr-test-booking-store');
 

// Admin Routes
Route::middleware(['adminfinance'])->group(function(){
    Route::get('/super-admin/dashboard', [AdminDashboardController::class, 'index'])->name('super-admin-dashboard');
    Route::get('/super-admin/tourist-pass', [TouristPassController::class, 'getPassBookings'])->name('super-admin-tourist-pass');
    Route::get('/super-admin/museum-pass', [MuseumPassController::class, 'getPassBookings'])->name('super-admin-museum-pass');
    Route::get('/super-admin/istanbul-tours', [TouristPassController::class, 'getToursBookings'])->name('super-admin-istanbul-tours');
    Route::get('/super-admin/covidpcr-test', [CovidPCRTestController::class, 'getTestBookings'])->name('super-admin-covidpcr-test');
    Route::get('/super-admin/istanbul-taxi', [AirportServicesController::class, 'getTaxiBookings'])->name('super-admin-istanbul-taxi');
    Route::get('/super-admin/evisa', [EvisaController::class, 'getEvisaBookings'])->name('super-admin-evisa');
    Route::get('/super-admin/meet-and-greet', [MeetAndGreetController::class, 'getMGABookings'])->name('super-admin-mga');
    Route::get('/super-admin/rent-car', [MeetAndGreetController::class, 'getRentCarBookings'])->name('super-admin-rent-car');
    Route::get('/super-admin/lounge', [MeetAndGreetController::class, 'getLoungeBookings'])->name('super-admin-lounge');
});


//language helper
Route::get('lang/{lang}', ['as' => 'lang.switch', 'uses' => 'App\Http\Controllers\LanguageController@switchLang']);

// Route::get('/super-admin/dashboard', [AdminDashboardController::class, 'index'])->name('super-admin-dashboard');
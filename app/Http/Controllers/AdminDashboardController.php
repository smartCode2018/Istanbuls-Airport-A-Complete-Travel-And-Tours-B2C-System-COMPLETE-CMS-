<?php

namespace App\Http\Controllers;

use App\Models\AirportServices;
use App\Models\CovidPCRTest;
use App\Models\Evisa;
use App\Models\Lounge;
use App\Models\MeetAndGreet;
use App\Models\MuseumPass;
use App\Models\Order;
use App\Models\TouristPass;
use App\Models\Tours;
use Auth;
use Botble\Page\Models\Page;
use DB;
use Illuminate\Http\Request;

class AdminDashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $totalTouristPass = TouristPass::all()->count(); 
        // $museumPass = Order::orderByRaw('updated_at - created_at DESC')->join('contacts', 'users.id', '=', 'contacts.user_id')->get()->chunk(100, function(){});
        $museumPass = DB::select("select orders.*, museum_passes.* from orders join museum_passes ON orders.product_id = museum_passes.id ORDER BY orders.updated_at limit 8");
        $totalMuseumPass = count($museumPass);
        $tours = DB::select("select orders.*, tours.* from orders join tours ON orders.product_id = tours.id ORDER BY orders.updated_at limit 8");
        $totalTours = count($tours);
        $totalTaxi = AirportServices::all()->count();
        $totalPcrText = CovidPCRTest::all()->count();
        $totalEvisa = Evisa::all()->count();
        $totalMGA = MeetAndGreet::all()->count();
        $totalLounge = Lounge::all()->count();

        return view('admin.index', compact('totalTouristPass','museumPass','totalMuseumPass','tours','totalTours','totalTaxi','totalPcrText','totalEvisa','totalMGA','totalLounge'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

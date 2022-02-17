<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\TouristPass;
use DB;
use Illuminate\Http\Request;

class TouristPassController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        dd('here');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function createPass()
    {
        $countries = Country::all();
        return view('tourist_pass_booking', compact('countries'));
    }

    public function createTour(){
        $countries = Country::all();
        return view('istanbul_tour_booking', compact('countries'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    // store tourist pass 
    public function storePass(Request $request)
    {
        $this->validate($request, [
            'firstname' => 'required|max:255',
            'lastname' => 'required|max:255',
            'country' => 'required|max:255',
            'pass_type' => 'required|max:255',
            'request_date' => 'required|max:255',
            'code' => 'required|max:255',
            'phone' => 'required|max:255',
            'email' => 'required'
        ]);
        // save to db here
        dd($request->all());
    }

    // store tours 
    public function storeTour(Request $request)
    {
        $this->validate($request, [
            'firstname' => 'required|max:255',
            'lastname' => 'required|max:255',
            'tour_type' => 'required|max:255',
            'start_type' => 'required|max:255',
            'request_date' => 'required|max:255',
            'code' => 'required|max:255',
            'phone' => 'required|max:255',
            'email' => 'required'
        ]);
        // save to db here
        dd($request->all());
    }


    //admin finance functions

    public function getPassBookings(){
        $touristPass = DB::select("select orders.*, tourist_passes.* from orders join tourist_passes ON orders.product_id = tourist_passes.id ORDER BY orders.updated_at ASC");
        return view('admin.tourist_pass_table', compact('touristPass'));
    }

    public function getToursBookings(){
        $tours = DB::select("select orders.*, tours.* from orders join tours ON orders.product_id = tours.id ORDER BY orders.updated_at ASC");
        return view('admin.tour_booking_table', compact('tours'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TouristPass  $touristPass
     * @return \Illuminate\Http\Response
     */
    public function show(TouristPass $touristPass)
    {
    
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TouristPass  $touristPass
     * @return \Illuminate\Http\Response
     */
    public function edit(TouristPass $touristPass)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TouristPass  $touristPass
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TouristPass $touristPass)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TouristPass  $touristPass
     * @return \Illuminate\Http\Response
     */
    public function destroy(TouristPass $touristPass)
    {
        //
    }
}

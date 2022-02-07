<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\TouristPass;
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
    public function create()
    {
        $countries = Country::all();
        return view('tourist_pass_booking', compact('countries'));
    }

    public function istanbulTour(){
        $countries = Country::all();
        return view('istanbul_tour_booking', compact('countries'));
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
     * @param  \App\Models\TouristPass  $touristPass
     * @return \Illuminate\Http\Response
     */
    public function show(TouristPass $touristPass)
    {
        //
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

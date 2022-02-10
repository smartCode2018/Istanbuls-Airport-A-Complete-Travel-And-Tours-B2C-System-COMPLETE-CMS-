<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\Traveldocument;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AirportServicesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request, $type = 'personal_taxi')
    {
        $countries = Country::all();
        $travel_docs = Traveldocument::all();
        $form = $request->all();
        $taxi_type = $type;
        return view('airport_taxi_booking', compact('countries','travel_docs','form', 'taxi_type'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'firstname' => 'required|max:255',
            'lastname' => 'required|max:255',
            'email' => 'required',
            'arival_date' => 'required|max:255',
            'flight_company' => 'required|max:255',
            'flight_no' => 'required|max:255',
            'code' => 'required|max:255',
            'phone' => 'required',
            'passport_number' => 'required|max:255',
            'arival_country' => 'required|max:255',
            'adult' => 'required|max:255',
            'kids' => 'required|max:255',
            'taxi_type' => 'required|max:255',
            'location' => 'required|max:255'
        ]);
        // save to db
        dd($request->all());
    }



    //admin finance functions

    public function getTaxiBookings(){
        return view('admin.taxi_booking_table');
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

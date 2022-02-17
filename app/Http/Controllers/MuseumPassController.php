<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\MuseumPass;
use DB;
use Illuminate\Http\Request;

class MuseumPassController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $countries = Country::all();
        return view('museum_pass_booking', compact('countries'));
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
            'country' => 'required|max:255',
            'pass_type' => 'required|max:25',
            'request_date' => 'required|max:255',
            'gender' => 'required|max:255',
            'code' => 'required|max:255',
            'phone' => 'required|max:255',
            'email' => 'required'
        ]);
        dd($request->all());
    }
    
    //admin finance functions

    public function getPassBookings(){
        $museum_pass = DB::select("select orders.*, museum_passes.* from orders join museum_passes ON orders.product_id = museum_passes.id ORDER BY orders.updated_at ASC");
        return view('admin.museum_pass_table', compact('museum_pass'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MuseumPass  $museumPass
     * @return \Illuminate\Http\Response
     */
    public function show(MuseumPass $museumPass)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MuseumPass  $museumPass
     * @return \Illuminate\Http\Response
     */
    public function edit(MuseumPass $museumPass)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MuseumPass  $museumPass
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MuseumPass $museumPass)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MuseumPass  $museumPass
     * @return \Illuminate\Http\Response
     */
    public function destroy(MuseumPass $museumPass)
    {
        //
    }
}

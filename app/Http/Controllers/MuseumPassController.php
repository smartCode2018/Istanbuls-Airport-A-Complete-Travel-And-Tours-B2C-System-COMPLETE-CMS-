<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\MuseumPass;
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
        //
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

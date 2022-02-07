<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\CovidPCRTest;
use Illuminate\Http\Request;

class CovidPCRTestController extends Controller
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
        return view('covidpcr_test', compact('countries'));
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
     * @param  \App\Models\CovidPCRTest  $covidPCRTest
     * @return \Illuminate\Http\Response
     */
    public function show(CovidPCRTest $covidPCRTest)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CovidPCRTest  $covidPCRTest
     * @return \Illuminate\Http\Response
     */
    public function edit(CovidPCRTest $covidPCRTest)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CovidPCRTest  $covidPCRTest
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CovidPCRTest $covidPCRTest)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CovidPCRTest  $covidPCRTest
     * @return \Illuminate\Http\Response
     */
    public function destroy(CovidPCRTest $covidPCRTest)
    {
        //
    }
}

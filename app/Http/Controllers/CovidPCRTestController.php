<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\CovidPCRTest;
use DB;
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
        $this->validate($request, [
            'firstname' => 'required|max:255',
            'lastname' => 'required|max:255',
            'email' => 'required',
            'request_date' => 'required|max:255',
            'persons' => 'required|max:255',
            'code' => 'required|max:255',
            'phone' => 'required|max:255',
            'nationality' => 'required|max:255',
            'passport_number' => 'required|max:255',
            'location' => 'required|max:255'
        ]);
        dd($request->all());
    }

    //admin finance functions

    public function getTestBookings(){
        $covids = DB::select("select orders.*, covid_p_c_r_tests.* from orders join covid_p_c_r_tests ON orders.product_id = covid_p_c_r_tests.id ORDER BY orders.updated_at ASC");
        return view('admin.covid_pcr_table', compact('covids'));
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

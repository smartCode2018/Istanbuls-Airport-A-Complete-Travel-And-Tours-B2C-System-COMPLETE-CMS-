<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\Evisa;
use App\Models\Traveldocument;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EvisaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       return view('evisa');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $date = Carbon::now();
        $countries = Country::all();
        $travel_docs = Traveldocument::all();
        return view('evisabooking', compact('countries','travel_docs'));
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
            'firstname' => 'required',
            'lastname' => 'required',
            'country' => 'required',
            'country_of_birth' => 'required',
            'place_of_birth' => 'required',
            'arrival_date' => 'required',
            'dob' => 'required',
            'gender' => 'required',
            'mother_name' => 'required',
            'father_name' => 'required',
            'passport_number' => 'required',
            'passport_issue_date' => 'required',
            'passport_exp_date' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'address' => 'required',
            'zipcode' => 'required'
        ]);
        
        $evisa = Evisa::create($request->all());
        return view('evisa_success', $request->all());
    }

    //admin finance functions

    public function getEvisaBookings(){
        return view('admin.evisa_table');
    }




    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Evisa  $evisa
     * @return \Illuminate\Http\Response
     */
    public function show(Evisa $evisa)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Evisa  $evisa
     * @return \Illuminate\Http\Response
     */
    public function edit(Evisa $evisa)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Evisa  $evisa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Evisa $evisa)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Evisa  $evisa
     * @return \Illuminate\Http\Response
     */
    public function destroy(Evisa $evisa)
    {
        //
    }
}

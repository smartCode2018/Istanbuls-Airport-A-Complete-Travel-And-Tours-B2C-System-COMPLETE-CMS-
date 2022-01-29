<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FlightStatusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $flight_status = [
            ['airline'=>"TK", 'flight_no'=>"TK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
            ['airline'=>"SK", 'flight_no'=>"SK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
            ['airline'=>"JU", 'flight_no'=>"JU 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
            ['airline'=>"SQ", 'flight_no'=>"SQ 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
            ['airline'=>"TK", 'flight_no'=>"TK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
            ['airline'=>"SK", 'flight_no'=>"SK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
            ['airline'=>"TK", 'flight_no'=>"TK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
            ['airline'=>"SK", 'flight_no'=>"SK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
            ['airline'=>"JU", 'flight_no'=>"JU 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
            ['airline'=>"SQ", 'flight_no'=>"SQ 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"]
       ];
        return view('flight_status', [
            'flight_status' => $flight_status
        ]);
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

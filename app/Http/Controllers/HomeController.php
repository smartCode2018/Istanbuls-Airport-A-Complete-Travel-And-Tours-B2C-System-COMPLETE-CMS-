<?php

namespace App\Http\Controllers;

use App\Models\Home;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Call function to fetch flight details from API endpoint.

        // Dummy flight data
        $flight_status = [
             ['airline'=>"TK", 'flight_no'=>"TK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
             ['airline'=>"SK", 'flight_no'=>"SK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
             ['airline'=>"JU", 'flight_no'=>"JU 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
             ['airline'=>"SQ", 'flight_no'=>"SQ 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
             ['airline'=>"TK", 'flight_no'=>"TK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"],
             ['airline'=>"SK", 'flight_no'=>"SK 211", 'schedule'=>"08:15", 'estimated'=>"08:10", 'gate'=>"H", 'departure'=>"ANKARA", 'status'=>"Last Bag Unloaded"]
        ];

        //var_dump($flight_status);

        $menus = DB::select('select * from menu_nodes where position != 0 ORDER BY position');
        $recent_news = DB::select('select * from posts ORDER BY updated_at ASC LIMIT 6');
        // dd($recent_news);

        return view('index', [
            'flight_status' => $flight_status,
            'menus' => $menus,
            'recent_news' => $recent_news
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
     * @param  \App\Models\Home  $home
     * @return \Illuminate\Http\Response
     */
    public function show(Home $home)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Home  $home
     * @return \Illuminate\Http\Response
     */
    public function edit(Home $home)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Home  $home
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Home $home)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Home  $home
     * @return \Illuminate\Http\Response
     */
    public function destroy(Home $home)
    {
        //
    }
}

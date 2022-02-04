<?php

namespace App\Http\Controllers;

use App\Models\MeetAndGreet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MeetAndGreetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($type)
    {
        $type = $type;
        return view('meet_and_greet_form', compact('type'));
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
     * @param  \App\Models\MeetAndGreet  $meetAndGreet
     * @return \Illuminate\Http\Response
     */
    public function show(MeetAndGreet $meetAndGreet)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MeetAndGreet  $meetAndGreet
     * @return \Illuminate\Http\Response
     */
    public function edit(MeetAndGreet $meetAndGreet)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MeetAndGreet  $meetAndGreet
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MeetAndGreet $meetAndGreet)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MeetAndGreet  $meetAndGreet
     * @return \Illuminate\Http\Response
     */
    public function destroy(MeetAndGreet $meetAndGreet)
    {
        //
    }
}

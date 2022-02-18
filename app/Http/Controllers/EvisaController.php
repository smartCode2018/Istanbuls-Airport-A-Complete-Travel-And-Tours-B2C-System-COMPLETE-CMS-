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

        $bookings = DB::table('evisas')->get()->count();
        $paid = DB::select("select sum(orders.price) as total, evisas.id from orders join evisas ON orders.product_id = evisas.id where orders.product_id = evisas.id and orders.status = 'paid' group by evisas.id");
        $amount = DB::select("select sum(orders.price) as total, evisas.id from orders join evisas ON orders.product_id = evisas.id where orders.product_id = evisas.id group by evisas.id");
        $evisa = DB::select("select orders.*, evisas.* from orders join evisas ON orders.product_id = evisas.id where orders.product_id = evisas.id ORDER BY orders.updated_at ASC");
        return view('admin.evisa_table', compact('evisa','amount','paid','bookings'));
    }

    public function updateEvisaBookings(Request $request){
        DB::table('orders')->where('product_id', $request->id)->update(['status'=>$request->status]);
        return true;
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

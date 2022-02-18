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
        $bookings = DB::table('airport_services')->get()->count();
        $paid = DB::select("select sum(orders.price) as total, airport_services.id from orders join airport_services ON orders.product_id = airport_services.id where orders.product_id = airport_services.id and orders.status = 'paid' group by airport_services.id");
        $amount = DB::select("select sum(orders.price) as total, airport_services.id from orders join airport_services ON orders.product_id = airport_services.id where orders.product_id = airport_services.id group by airport_services.id");
        $taxi = DB::select("select orders.*, airport_services.* from orders join airport_services ON orders.product_id = airport_services.id where orders.product_id = airport_services.id ORDER BY orders.updated_at ASC");
        return view('admin.taxi_booking_table', compact('taxi','bookings','paid','amount'));
    }

    public function updateTaxiBookings(Request $request){
        DB::table('orders')->where('product_id', $request->id)->update(['status'=>$request->status]);
        return true;
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

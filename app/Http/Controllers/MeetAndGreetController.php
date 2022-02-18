<?php

namespace App\Http\Controllers;

use App\Models\Country;
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

    public function vipPassBooking(){
        $countries = Country::all();
        return view('vip_pass', compact('countries'));
    }

    public function loungeBooking(){
        return view('cip_lounges_booking');
    }

    public function rentCarBooking(){
        return view('rent_car');
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
        $this->validate($request, [
            'firstname' => 'required|max:255',
            'lastname' => 'required|max:255',
            'country' => 'required|max:255',
            'dept_flight_number' => 'required|max:255',
            'request_date' => 'required|max:255',
            'gender' => 'required|max:255',
            'code' => 'required|max:255',
            'phone' => 'required|max:255',
            'email' => 'required',
            'driver_name' => 'required|max:255',
            'driver_phone' => 'required|max:255',
            'adult' => 'required|max:255',
            'kids' => 'required|max:255',
        ]);
        dd($request->all());
    }

    //admin finance functions

    public function getMGABookings(){
        $bookings = DB::table('meet_and_greets')->get()->count();
        $paid = DB::select("select sum(orders.price) as total, meet_and_greets.id from orders join meet_and_greets ON orders.product_id = meet_and_greets.id where orders.product_id = meet_and_greets.id and orders.status = 'paid' group by meet_and_greets.id");
        $amount = DB::select("select sum(orders.price) as total, meet_and_greets.id from orders join meet_and_greets ON orders.product_id = meet_and_greets.id where orders.product_id = meet_and_greets.id group by meet_and_greets.id");
        
        $mga = DB::select("select orders.*, meet_and_greets.* from orders join meet_and_greets ON orders.product_id = meet_and_greets.id where orders.product_id = meet_and_greets.id ORDER BY orders.updated_at ASC");
        return view('admin.mga_table', compact('mga','amount','paid','bookings'));
    } 
    public function getLoungeBookings(){
        $bookings = DB::table('lounges')->get()->count();
        $paid = DB::select("select sum(orders.price) as total, lounges.id from orders join lounges ON orders.product_id = lounges.id where orders.product_id = lounges.id and orders.status = 'paid' group by lounges.id");
        $amount = DB::select("select sum(orders.price) as total, lounges.id from orders join lounges ON orders.product_id = lounges.id where orders.product_id = lounges.id group by lounges.id");
        
        $lounge = DB::select("select orders.*, lounges.* from orders join lounges ON orders.product_id = lounges.id where orders.product_id = lounges.id ORDER BY orders.updated_at ASC");
        return view('admin.lounge_table', compact('lounge','amount','paid','bookings')); 
    } 
    public function getRentCarBookings(){
        $bookings = DB::table('rent_cars')->get()->count();
        $paid = DB::select("select sum(orders.price) as total, rent_cars.id from orders join rent_cars ON orders.product_id = rent_cars.id where orders.product_id = rent_cars.id and orders.status = 'paid' group by rent_cars.id");
        $amount = DB::select("select sum(orders.price) as total, rent_cars.id from orders join rent_cars ON orders.product_id = rent_cars.id where orders.product_id = rent_cars.id group by rent_cars.id");
        
        $rentCar = DB::select("select orders.*, rent_cars.* from orders join rent_cars ON orders.product_id = rent_cars.id where orders.product_id = rent_cars.id ORDER BY orders.updated_at ASC");
        return view('admin.rent_car_table', compact('rentCar','amount','paid','bookings'));
    }
    
    public function updateMGABookings(Request $request){
        DB::table('orders')->where('product_id', $request->id)->update(['status'=>$request->status]);
        return true;
    }

    public function updateLoungeBookings(Request $request){
        DB::table('orders')->where('product_id', $request->id)->update(['status'=>$request->status]);
        return true;
    }

    public function updateRentCarBookings(Request $request){
        DB::table('orders')->where('product_id', $request->id)->update(['status'=>$request->status]);
        return true;
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

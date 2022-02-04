@extends('layouts.welcome')
@section('title')
   Meet and Greet Service 
@endsection
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">Meet and Greet Service Booking</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="{{route('home')}}">HOME</a></li>
            <li class="">Premium Service</li>
            <li class="active">Meet and Greet</li>
        </ul>
    </div>
</div>
<section style="background:#0000001f" id="content" class="gray-area">
    <div class="container">
        <div class="row">
            <div id="main" class="col-sm-12 col-md-9">
                <div class="booking-section travelo-box">
                    <form action="{{route('evisa.submit')}}" method="POST" class="cruise-booking-form">
                        @csrf
                        <div>
                            {{-- <h2 style="margin-bottom: 30px; font-weight:bold; color:#e01514">APPLY FOR E-VISA</h2> --}}
                            <div style="border-style: solid; border-width:1px; padding:20px 0px 20px 0px;" class="row">
                                <div class="col-md-6">
                                    <img style="float: left; margin-right:10px;" src="{{asset('images/logo/logo.png')}}" alt="" width="auto" height="63">
                                </div>
                                <div class="col-md-6" ></div>
                            </div>
                            <hr />   
                        </div>
                        <div>
                            <div class="stepwizard">
                                <div class="stepwizard-row setup-panel">
                                    <div class="stepwizard-step col-xs-6"> 
                                        <a href="#step-1" type="button" class="btn btn-success btn-circle">1</a>
                                        <p>Personal Information</p>
                                    </div>
                                    <div class="stepwizard-step col-xs-6"> 
                                        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                                        <p><small>Payment</small></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel setup-content" id="step-1">
                            <div style="padding-bottom: 25px;" class="row">
                                <div class="col-xs-12 col-md-4">
                                    <div class="mga-type right-shadow">
                                        <label  class="radio radio-inline radio-square ftype">
                                            <input style="margin-left: 5px;"  id="arival" type="radio" name="mgatype" {{$type == 'arrival' ? 'checked' : ''}}/>
                                            MEET & GREET ARIVAL - €140 
                                        </label>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-4">
                                    <div class="mga-type right-shadow">
                                        <label style="" class="radio radio-inline radio-square ftype ">
                                            <input id="departure" type="radio" name="mgatype" {{$type == 'departure' ? 'checked' : ''}}/> MEET & GREET DEPATURE - €140 
                                        </label>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-4">
                                    <div class="mga-type right-shadow">
                                        <label style="" class="radio radio-inline radio-square ftype">
                                            <input id="domestic" type="radio" name="mgatype" {{$type == 'transfer' ? 'checked' : ''}}/>MEET & GREET TRANSFER - €140 
                                        </label>

                                    </div>
                                </div>
                                
                            </div>
                            <div  style="background: #ff000005; margin-bottom:30px;"  class="panel-heading">
                                <h1 style="font-size: 20px;" class="panel-title">Personal Information</h1>
                            </div>
                            <div>
                               
                                   <div>
                                       <div class="row">
                                           <div class="form-group col-sm-6 col-md-6">
                                               <label class="control-label text-custom-size">Given/First Name</label>
                                               <input required type="text" name="firstname" class="input-text full-width f-input-custom-style" value="" placeholder="" />
                                           </div>
                                           <div class="form-group col-sm-6 col-md-6">
                                               <label class="control-label text-custom-size">Given/last name</label>
                                               <input required type="text" name="lastname" class="input-text full-width f-input-custom-style" value="" placeholder="" />
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="form-group col-sm-6 col-md-3">
                                            <label class="text-custom-size">Contry | Region</label>
                                            <div class="selector">
                                                <select required name="country_of_birth f-input-custom-style" class="full-width">
                                                    {{-- @foreach ($countries as $country)
                                                        <option value="{{$country->id}}">{{$country->name}}</option>
                                                    @endforeach --}}
                                                </select>
                                            </div>
                                           </div>
                                           <div class="form-group col-sm-6 col-md-3">
                                               <label class="text-custom-size">Departure Flight NO</label>
                                               <input required name="place_of_birth" type="text" class="input-text full-width f-input-custom-style" value="" placeholder="" />
                                           </div>
                                           <div class="form-group col-sm-6 col-md-6">
                                               <div class="row">
                                                   <div class="col-xs-6">
                                                       <label class="text-custom-size">Request Date</label>
                                                       <div class="">
                                                           <input required name="dob" type="date" class="input-text full-width f-input-custom-style">
                                                       </div>
                                                   </div>
                                                   <div class="col-xs-6">
                                                       <label class="text-custom-size">Gender</label>
                                                       <div>
                                                           <label class="radio radio-inline radio-square">
                                                               <input class="f-input-custom-style" required type="radio" name="gender" checked="checked">Male
                                                           </label>
                                                           <label class="radio radio-inline radio-square text-custom-size">
                                                               <input class="f-input-custom-style" required type="radio" name="gender">Female
                                                           </label>
                                                       </div>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                    
                                       <div class="row">
                                           <div class="form-group col-sm-1 col-md-1">
                                               <label class="text-custom-size">code</label>
                                               <div class="selector">
                                                   <select required name="code" class="full-width f-input-custom-style">
                                                       <option>+44</option>
                                                       <option>+1</option>
                                                   </select>
                                               </div>
                                           </div>
                                           <div class="form-group col-sm-5 col-md-5">
                                               <label class="text-custom-size">Phone number</label>
                                               <input required name="phone" type="text" class="input-text full-width f-input-custom-style" value="" placeholder="" />
                                           </div>
                                           <div class="form-group col-sm-6 col-md-6">
                                               <label class="text-custom-size">Email Address</label>
                                               <input required name="email" type="email" class="input-text full-width f-input-custom-style" value="" placeholder="" />
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="form-group col-sm-6 col-md-3">
                                               <label class="text-custom-size">Driver Phone</label>
                                               <input required name="address" type="text" class="input-text full-width f-input-custom-style" value="" placeholder="" />
                                           </div>
                                           <div class="form-group col-sm-6 col-md-3">
                                               <label class="text-custom-size">Driver Name</label>
                                                   <input required name="zipcode" type="text" class="input-text full-width f-input-custom-style">
                                           </div>
                                           <div class="form-group col-sm-6 col-md-3">
                                                <label class="text-custom-size">Adult(s)</label>
                                                <div class="selector">
                                                    <select required name="code" class="full-width f-input-custom-style">
                                                        <option>+44</option>
                                                        <option>+1</option>
                                                    </select>
                                                </div>
                                           </div>
                                           <div class="form-group col-sm-6 col-md-3">
                                                <label class="text-custom-size">Kid(s)</label>
                                                <div class="selector">
                                                    <select required name="code" class="full-width f-input-custom-style">
                                                        <option>+44</option>
                                                        <option>+1</option>
                                                    </select>
                                                </div>
                                            </div>
                                       </div>
                                       <div class="form-group">
                                           <div class="checkbox">
                                               <label class="text-custom-size">
                                                   <input required type="checkbox" /> I can prove that I hold a return ticket, hotel reservation and at least 50 $ per each day of my stay.
                                               </label>
                                           </div>
                                       </div>
                                       <button class="banner-action-bt nextBtn pull-right f-input-custom-style" type="button">Next</button>
                                   </div>
                               
                            </div>
                            
                        </div>
                        
                        <div class="panel setup-content"id="step-2">
                            <div style="background: #ff000005; margin-bottom:30px;" class="panel-heading">
                                <h3 class="panel-title"><strong>Fee Details</strong></h3>
                           </div>
                            <div class="card-information">
                                <h2 style="margin-bottom:20px;">Fee Details</h2>
                                <div class="row">
                                    <div style="font-size: 14px;" class="col-md-6">
                                        Fee
                                    </div>
                                    <div style="text-align: end" class="col-md-6">
                                        <h4>$ 80</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div style="font-size: 14px;" class="col-md-6">
                                        Tax
                                    </div>
                                    <div style="text-align: end" class="col-md-6">
                                        <h4>$ 6.00</h4>
                                    </div>
                                </div>
                                <hr style="margin:3px 0px 0px 0px; padding:0px;">
                                <div class="row">
                                    <div style="font-size: 14px;" class="col-md-6">
                                        Total Price
                                    </div>
                                    <div style="text-align: end; " class="col-md-6">
                                        <h2 style="color:#e01514"><strong>$ 86.00</strong></h2>
                                    </div>
                                </div>
                                <button class="banner-action-bt nextBtn pull-right" type="submit">Next</button>
                            </div>
                            
                        </div>
                    </form>
                </div>
            </div>
            <div class="sidebar col-sm-4 col-md-3">
                <div class="booking-details travelo-box">
                    {{-- <h4>Booking Details</h4> --}}
                    <article class="image-box cruise listing-style1">
                        <figure class="clearfix">
                            <img class="img-responsive" src="{{asset('images/assets/others/2.jpg')}}" alt="">
                        </figure>
                        <div class="details">
                            <p style="text-align: justify">
                                Traveling can be very stressful when you try to move through strange terminals in a busy airport on your own. 
                                Now and due to our MEET, GREET & ASSIST (MGA) service, you actually can have an escort in your new journey to guide you within your first contact with Turkey. Help you get through all the airport processes and pass the language barriers easily and quickly.
                            </p>
                        </div>
                    </article>
                    
                    {{-- <h4>What You Have To Know</h4>
                    <table style="" class="table">
                        <tbody style="font-size: 12px;">
                            <tr>
                                <td style="text-align:start; border-style:none; "><a href="">Is covid test result required to enter Turkey?</a><hr style="margin:3px 0px 0px 0px; padding:0px;"></td>
                            </tr> 
                            <tr>
                                <td style="text-align:start; border-style:none; "><a href="">Turkey Entry Statement - HES Code</a><hr style="margin:3px 0px 0px 0px; padding:0px;"></td>
                            </tr> 
                            <tr>
                                <td style="text-align:start; border-style:none; "><a href="">Turkey Travel Restrictions</a><hr style="margin:3px 0px 0px 0px; padding:0px;"></td>
                            </tr> 
                            <tr>
                                <td style="text-align:start; border-style:none; "><a href="">Tips for better travel experience with your pet</a><hr style="margin:3px 0px 0px 0px; padding:0px;"></td>
                            </tr> 
                            <tr>
                                <td style="text-align:start; border-style:none; "><a href="">Current travel restrictions in all the world (always updated).</a><hr style="margin:3px 0px 0px 0px; padding:0px;"></td>
                            </tr> 
                             
                            
                           
                        </tbody>
                    </table>
                    <p></p> --}}
                </div>
                
                <div class="travelo-box contact-box">
                    <h4>Need Help?</h4>
                    <p>We would be more than happy to help you. Our team advisor are 24/7 at your service to help you.</p>
                    <address class="contact-details">
                        <span class="contact-phone"><i class="soap-icon-phone"></i> 0-000-000-HELLO</span>
                        <br>
                        <a class="contact-email" href="#">help@istanbulairport.com</a>
                    </address>
                </div>
            </div>
        </div>
    </div>   
</section>
@endsection
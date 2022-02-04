@extends('layouts.welcome')
@section('title')
    Airport Taxi
@endsection

@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">AIRPORT TAXI BOOKING</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="#">HOME</a></li>
            <li class="active">AIRPORT TAXI</li> 
        </ul>
    </div>
</div>
<section style="background:#0000001f" id="content" class="gray-area">
    <div class="container">
        <div class="row">
            <div id="main" class="col-sm-8 col-md-9">
                <div class="booking-section travelo-box">
                    <form action="{{route('airport-taxi-booking-store')}}" method="POST" class="cruise-booking-form">
                        @csrf
                        @method('PUT')
                        <div>
                            <h2 style="margin-bottom: 30px; font-weight:bold; color:#e01514">Taxi Booking Form</h2>
                            <input name="taxi_type" value="{{$taxi_type}}" type="hidden">
                            <hr />   
                        </div>
                        <div>
                            <div class="stepwizard">
                                <div class="stepwizard-row setup-panel">
                                    <div class="stepwizard-step col-xs-6"> 
                                        <a href="#step-1" type="button" class="btn btn-success btn-circle">1</a>
                                        <p><small>Personal Information</small></p>
                                    </div>
                                    <div class="stepwizard-step col-xs-6"> 
                                        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                                        <p><small>Make Payment</small></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel setup-content" id="step-1">
                            <div  style="background: #ff000005; margin-bottom:30px;"  class="panel-heading">
                                <h3 class="panel-title">Personal Information</h3>
                            </div>
                            
                            <div>
                              
                               <h2>Your Personal Information</h2>
                               
                                   <div>
                                       <div class="row">
                                           <div class="form-group col-sm-6 col-md-6">
                                               <label class="control-label">Given/First Name</label>
                                               <input required type="text" name="firstname" class="input-text full-width" value="" placeholder="" />
                                           </div>
                                           <div class="form-group col-sm-6 col-md-6">
                                               <label class="control-label">Given/last name</label>
                                               <input required type="text" name="lastname" class="input-text full-width" value="" placeholder="" />
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="form-group col-sm-12 col-md-6">
                                            <label>Email Address</label>
                                               <input required name="email" type="email" class="input-text full-width" value="" placeholder="" />
                                           </div>
                                           
                                           <div class="form-group col-sm-12 col-md-6">
                                               <div class="row">
                                                   <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label>Arrival DATE</label>
                                                        <div class="datepicker-wrap">
                                                            <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                        </div>
                                                    </div>
                                                   </div>
                                                   <div class="col-xs-6">
                                                    <label>Flight Company</label>
                                                    <div class="selector">
                                                        <select required name="" class="full-width">
                                                            @foreach ($countries as $country)
                                                                <option value="{{$country->id}}">{{$country->name}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="form-group col-sm-12 col-md-2">
                                               <label>Flight Number</label>
                                               <input required name="" type="text" class="input-text full-width" value="" placeholder="" />
                                           </div>
                                           <div class="form-group col-sm-1 col-md-1">
                                            <label>code</label>
                                            <div class="selector">
                                                <select required name="code" class="full-width">
                                                    <option>+44</option>
                                                    <option>+1</option>
                                                </select>
                                                </div>
                                            </div>
                                        <div class="form-group col-sm-5 col-md-3">
                                            <label>Phone number</label>
                                            <input required name="phone" type="text" class="input-text full-width" value="" placeholder="" />
                                        </div>
                                           <div class="form-group col-sm-12 col-md-3">
                                                <label>Passort Number</label>
                                                <input required name="passport_number" type="text" class="input-text full-width" value="" placeholder="" />
                                            </div>
                                            <div class="form-group col-sm-6 col-md-3">
                                                <label>Arrival Country</label>
                                                <div class="selector">
                                                    <select required name="" class="full-width">
                                                        @foreach ($countries as $country)
                                                            <option value="{{$country->id}}">{{$country->name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                       </div>

                                       <div class="row">
                                        <div class="col-md-12">
                                            <h3>Passengers</h3>
                                        </div>
                                        <div class="form-group col-sm-1 col-md-3">
                                            <label>Adult</label>
                                            <div class="selector">
                                                <select required name="code" class="full-width">
                                                    <option value="{{$form['num_adult']}}" selected>{{$form['num_adult']}}</option>
                                                    <option>+1</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group col-sm-1 col-md-3">
                                            <label>Children</label>
                                            <div class="selector">
                                                <select required name="code" class="full-width">
                                                    <option value="{{$form['num_kids']}}" selected>{{$form['num_kids']}}</option>
                                                    <option>+1</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label>SELECT TYPE</label>
                                            <div>
                                                @if ($form['taxi_type'] == 'frpm')
                                                <label class="radio radio-inline radio-square">
                                                    <input required name="gender" type="radio" name="gender" checked="checked">FROM ISTANBUL'S AIRPORT
                                                </label>
                                                <label class="radio radio-inline radio-square">
                                                    <input required type="radio" name="gender">TO ISTANBUL'S AIRPORT
                                                </label>
                                                @else
                                                <label class="radio radio-inline radio-square">
                                                    <input required name="gender" type="radio" name="gender" >FROM ISTANBUL'S AIRPORT
                                                </label>
                                                <label class="radio radio-inline radio-square">
                                                    <input required type="radio" name="gender" checked="checked">TO ISTANBUL'S AIRPORT
                                                </label>
                                                @endif
                                                
                                                
                                            </div>
                                        </div>
                                     </div> 
                                     <div class="row">
                                        <div class="form-group col-sm-12 col-md-12">
                                            <label>Search for location</label>
                                            <input value="{{$form['location']}}" style="height:40px;" name="location" required id="pac-input" type="text" class="input-text full-width" placeholder="Search For Location" />
                                        </div>
                                        <div style="display:flex; justify-content:center; align-items:center" class="form-group col-md-12">
                                            <div style="height: 350px !important; width:100%;" id="map"></div>
                                            <div id="infowindow-content">
                                                <span id="place-name" class="title"></span><br />
                                                <span id="place-address"></span>
                                            </div>
                                        </div>
                                    </div>
 
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input required type="checkbox">  confirm that I meet each and every one of the conditions listed above.
                                            </label>
                                        </div>
                                    </div>
                                       <button class="banner-action-bt nextBtn pull-right" type="button">Next</button>
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
                            <img class="img-responsive" src="{{asset('images/assets/tours/taxi3.jpg')}}" alt="">
                        </figure>
                        <div class="details">
                            <p style="text-align: justify">
                                Istanbul Airport Taxi is one of the best transfer service providers when it comes to reliability, comfort, and quality of service. Our team provides the fastest way of transfer to ensure the convenience of visitors and travellers.
                            </p>
                        </div>
                    </article>
                    
                    <h4>What You Have To Know</h4>
                    <table style="" class="table">
                        {{-- <thead class="flight-table-head">
                          <tr>
                            <th></th>
                          </tr>
                        </thead> --}}
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
                    <p></p>
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



</section
@endsection
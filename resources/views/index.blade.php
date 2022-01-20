@extends('layouts.welcome')
        @section('content')
        <div style="background-image: url('images/assets/slider/6.jpg');
        background-size: cover;" id="slideshow">
            <div class="fullwidthbanner-container">
                <div style="padding-top: 180px; padding-bottom: 150px;" class="container">
                	<div class="row" >
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<div  class="bg-dark" >
										<h1 style=" margin-bottom: 10px; font-size: 50px; font-weight: bold; color: rgb(46, 46, 46);" >AIRPORT SERVICES</h1>
										<h2 style="margin-bottom: 40px; font-weight:bold; font-size: 25px; font-family: 'Mulish', sans-serif; color: rgb(46, 46, 46);;">All in one place</h2>
										<div style="text-align: left !important;">
											<a  href="#" class="banner-action-btn fw-bold">Explore Services</a>
										</div>
									</div>
									
								</div>
							</div>
                </div>
            </div>
        </div>
        <section id="content">
            <div class="search-box-wrapper">
                <div class="search-box container">
                    <ul class="search-tabs clearfix">
                        <li class="active"><a href="#flight-status-tab" data-toggle="tab">FLIGHT STATUS</a></li>
                        <li><a href="#e-visa" data-toggle="tab">E-VISA</a></li>
                        <li><a href="#cruises-tab" data-toggle="tab">CRUISES</a></li>
                        <li><a href="#hotels-tab" data-toggle="tab">HOTELS</a></li>
                        <li><a href="#flights-tab" data-toggle="tab">FLIGHTS</a></li>
                        <li><a href="#flight-and-hotel-tab" data-toggle="tab">FLIGHT &amp; HOTELS</a></li>
                        <li><a href="#cars-tab" data-toggle="tab">CARS</a></li>
                        
                       
                        
                    </ul>
                    <div class="visible-mobile">
                        <ul id="mobile-search-tabs" class="search-tabs clearfix">
                            <li class="active"><a href="#flight-status-tab">FLIGHT STATUS</a></li>
                            <li><a href="#e-visa">E-VISA</a></li>
                            <li><a href="#hotels-tab">HOTELS</a></li>
                            <li><a href="#flights-tab">FLIGHTS</a></li>
                            <li><a href="#flight-and-hotel-tab">FLIGHT &amp; HOTELS</a></li>
                            <li><a href="#cars-tab">CARS</a></li>
                            <li><a href="#cruises-tab">CRUISES</a></li>
                            
                        </ul>
                    </div>
                    
                    <div class="search-tab-content">
                        <div class="tab-pane fade active in" id="flight-status-tab">
                            <form action="{{route('flight.status')}}" method="get">
                                <div class="container">
                                    
                                </div>
                                <div class="row">
                                    {{-- <h4 class="title text-align-center">Search Flight Details</h4> --}}
                                    <div class="col-lg-12 ftype-wrapper">
                                        <div class="row">
                                            <div class="col-xs-6 col-md-3">
                                                <label class="radio radio-inline radio-square ftype">
                                                    <input id="arival" type="radio" name="ftype" checked="checked">ARIVAL
                                                </label>
                                            </div>
                                            <div class="col-xs-6 col-md-3">
                                                <label style="" class="radio radio-inline radio-square ftype">
                                                    <input id="departure" type="radio" name="ftype">DEPATURE
                                                </label>
                                            </div>
                                            <div class="col-xs-6 col-md-3">
                                                <label style="" class="radio radio-inline radio-square ftype">
                                                    <input id="domestic" type="radio" name="fterminal" checked="checked">DOMESTIC
                                                </label>
                                            </div>
                                            <div class="col-xs-6 col-md-3">
                                                <label style="" class="radio radio-inline radio-square ftype">
                                                    <input id="international" type="radio" name="fterminal" >INTERNATIONAL
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        
                                        <div class="form-group row">
                                            
                                            <div class="col-xs-6">
                                                <label>FLIGHT NUMBER</label>
                                                <input id="flight-num" type="text" class="input-text full-width" placeholder="Enter flight No (TK 2522)" />
                                            </div>
                                            <div class="col-xs-6">
                                                <label>CITY</label>
                                                <input id="flight-city" type="text" class="input-text full-width" placeholder="enter a city or place name " />
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-6 col-md-2">
                                        {{-- <h4 class="title">When</h4> --}}
                                        <div class="form-group">
                                            <label>FLIGHT DATE</label>
                                            <div class="datepicker-wrap">
                                                <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-6 col-md-2">
                                        {{-- <h4 class="title">Who</h4> --}}
                                        <div class="form-group">
                                            <label>AIRLINE</label>
                                            <input type="text" class="input-text full-width" placeholder="Airline" />
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label class="hidden-xs">&nbsp;</label>
                                        <button class="icon-check btn-block full-width">SEARCH NOW</button>
                                    </div>
                                </div>
                            </form>
                            <div style="margin-top: 30px;" class="row">
                                <div style="text-align: center; display:none" class="t-spinner col-xs-12">
                                    <img height="100" width="150" src="images/spina.gif" alt="">
                                </div>
                                <div style="display:none; border-raidus:5px; " class="autocom-box col-xs-12 table-responsive">

                                    <table style="" class="flight-table-wrapper table table-striped ">
                                        <thead class="flight-table-head">
                                          <tr>
                                            <th>AIRLINE</th>
                                            <th>FLIGHT NO</th>
                                            <th>SCHEDULE</th>
                                            <th>ESTIMATED</th>
                                            <th>GATE</th>
                                            <th>DEPATURE</th>
                                            <th>STATUS</th>
                                          </tr>
                                        </thead>
                                        <tbody style="font-size: 14px; font-weight:bold">
                                            @foreach ($flight_status as $item)
                                            <tr>
                                                <td style="padding: 12px;"><img height="25" width="100" src="images/airline_logo/{{$item['airline']}}.png" alt=""></td>
                                                <td>{{$item['flight_no']}}</td>
                                                <td>{{$item['schedule']}}</td>
                                                <td>{{$item['estimated']}}</td>
                                                <td>{{$item['gate']}}</td>
                                                <td>{{$item['departure']}}</td>
                                                <td>{{$item['status']}}</td>
                                              </tr>
                                            @endforeach
                                          
                                        </tbody>
                                    </table>
                                    
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="hotels-tab">
                            <form action="hotel-list-view.html" method="post">
                                <div class="row">
                                    <div class="form-group col-sm-6 col-md-3">
                                        <h4 class="title">Where</h4>
                                        <label>Your Destination</label>
                                        <input type="text" class="input-text full-width" placeholder="enter a destination or hotel name" />
                                    </div>
                                    
                                    <div class="form-group col-sm-6 col-md-4">
                                        <h4 class="title">When</h4>
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <label>Check In</label>
                                                <div class="datepicker-wrap">
                                                    <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <label>Check Out</label>
                                                <div class="datepicker-wrap">
                                                    <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group col-sm-6 col-md-3">
                                        <h4 class="title">Who</h4>
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <label>Rooms</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-4">
                                                <label>Adults</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-4">
                                                <label>Kids</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group col-sm-6 col-md-2 fixheight">
                                        <label class="hidden-xs">&nbsp;</label>
                                        <button type="submit" class="full-width icon-check animated" data-animation-type="bounce" data-animation-duration="1">SEARCH NOW</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="flights-tab">
                            <form action="flight-list-view.html" method="post">
                                <div class="row">
                                    <div class="col-md-4">
                                        <h4 class="title">Where</h4>
                                        <div class="form-group">
                                            <label>Leaving From</label>
                                            <input type="text" class="input-text full-width" placeholder="city, distirct or specific airpot" />
                                        </div>
                                        <div class="form-group">
                                            <label>Going To</label>
                                            <input type="text" class="input-text full-width" placeholder="city, distirct or specific airpot" />
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <h4 class="title">When</h4>
                                        <label>Departing On</label>
                                        <div class="form-group row">
                                            <div class="col-xs-6">
                                                <div class="datepicker-wrap">
                                                    <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">anytime</option>
                                                        <option value="2">morning</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <label>Arriving On</label>
                                        <div class="form-group row">
                                            <div class="col-xs-6">
                                                <div class="datepicker-wrap">
                                                    <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">anytime</option>
                                                        <option value="2">morning</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <h4 class="title">Who</h4>
                                        <div class="form-group row">
                                            <div class="col-xs-3">
                                                <label>Adults</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-3">
                                                <label>Kids</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <label>Promo Code</label>
                                                <input type="text" class="input-text full-width" placeholder="type here" />
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-xs-3">
                                                <label>Infants</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 pull-right">
                                                <label>&nbsp;</label>
                                                <button class="full-width icon-check">SERACH NOW</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                        <div class="tab-pane fade" id="flight-and-hotel-tab">
                            <form action="flight-list-view.html" method="post">
                                <div class="row">
                                    <div class="col-md-4">
                                        <h4 class="title">Where</h4>
                                        <div class="form-group">
                                            <label>Leaving From</label>
                                            <input type="text" class="input-text full-width" placeholder="city, distirct or specific airpot" />
                                        </div>
                                        <div class="form-group">
                                            <label>Going To</label>
                                            <input type="text" class="input-text full-width" placeholder="city, distirct or specific airpot" />
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <h4 class="title">When</h4>
                                        <label>Departing On</label>
                                        <div class="form-group row">
                                            <div class="col-xs-6">
                                                <div class="datepicker-wrap">
                                                    <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">anytime</option>
                                                        <option value="2">morning</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <label>Arriving On</label>
                                        <div class="form-group row">
                                            <div class="col-xs-6">
                                                <div class="datepicker-wrap">
                                                    <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">anytime</option>
                                                        <option value="2">morning</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <h4 class="title">Who</h4>
                                        <div class="form-group row">
                                            <div class="col-xs-3">
                                                <label>Adults</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-3">
                                                <label>Kids</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <label>Promo Code</label>
                                                <input type="text" class="input-text full-width" placeholder="type here" />
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-xs-3">
                                                <label>Rooms</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 pull-right">
                                                <label>&nbsp;</label>
                                                <button class="full-width icon-check">SERACH NOW</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                        <div class="tab-pane fade" id="cars-tab">
                            <form action="car-list-view.html" method="post">
                                <div class="row">
                                    <div class="col-md-4">
                                        <h4 class="title">Where</h4>
                                        <div class="form-group">
                                            <label>Pick Up</label>
                                            <input type="text" class="input-text full-width" placeholder="city, distirct or specific airpot" />
                                        </div>
                                        <div class="form-group">
                                            <label>Drop Off</label>
                                            <input type="text" class="input-text full-width" placeholder="city, distirct or specific airpot" />
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <h4 class="title">When</h4>
                                        <div class="form-group">
                                            <label>Pick-Up Date / Time</label>
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <div class="datepicker-wrap">
                                                        <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="selector">
                                                        <select class="full-width">
                                                            <option value="1">anytime</option>
                                                            <option value="2">morning</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Drop-Off Date / Time</label>
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <div class="datepicker-wrap">
                                                        <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="selector">
                                                        <select class="full-width">
                                                            <option value="1">anytime</option>
                                                            <option value="2">morning</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <h4 class="title">Who</h4>
                                        <div class="form-group row">
                                            <div class="col-xs-3">
                                                <label>Adults</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-3">
                                                <label>Kids</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <label>Promo Code</label>
                                                <input type="text" class="input-text full-width" placeholder="type here" />
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-xs-6">
                                                <label>Car Type</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="">select a car type</option>
                                                        <option value="economy">Economy</option>
                                                        <option value="compact">Compact</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <label>&nbsp;</label>
                                                <button class="full-width icon-check">SERACH NOW</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                        <div class="tab-pane fade" id="cruises-tab">
                            <form action="cruise-list-view.html" method="post">
                                <div class="row">
                                    <div class="col-md-4">
                                        <h4 class="title">Where</h4>
                                        <div class="form-group">
                                            <label>Your Destination</label>
                                            <input type="text" class="input-text full-width" placeholder="enter a destination or hotel name" />
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <h4 class="title">When</h4>
                                        <div class="form-group row">
                                            <div class="col-xs-6">
                                                <label>Departure Date</label>
                                                <div class="datepicker-wrap">
                                                    <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <label>Cruise Length</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="">select length</option>
                                                        <option value="1">1-2 Nights</option>
                                                        <option value="2">3-4 Nights</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <h4 class="title">Who</h4>
                                        <div class="form-group row">
                                            <div class="col-xs-6">
                                                <label>Cruise Line</label>
                                                <div class="selector">
                                                    <select class="full-width">
                                                        <option value="">select cruise line</option>
                                                        <option>Azamara Club Cruises</option>
                                                        <option>Carnival Cruise Lines</option>
                                                        <option>Celebrity Cruises</option>
                                                        <option>Costa Cruise Lines</option>
                                                        <option>Cruise &amp; Maritime Voyages</option>
                                                        <option>Crystal Cruises</option>
                                                        <option>Cunard Line Ltd.</option>
                                                        <option>Disney Cruise Line</option>
                                                        <option>Holland America Line</option>
                                                        <option>Hurtigruten Cruise Line</option>
                                                        <option>MSC Cruises</option>
                                                        <option>Norwegian Cruise Line</option>
                                                        <option>Oceania Cruises</option>
                                                        <option>Orion Expedition Cruises</option>
                                                        <option>P&amp;O Cruises</option>
                                                        <option>Paul Gauguin Cruises</option>
                                                        <option>Peter Deilmann Cruises</option>
                                                        <option>Princess Cruises</option>
                                                        <option>Regent Seven Seas Cruises</option>
                                                        <option>Royal Caribbean International</option>
                                                        <option>Seabourn Cruise Line</option>
                                                        <option>Silversea Cruises</option>
                                                        <option>Star Clippers</option>
                                                        <option>Swan Hellenic Cruises</option>
                                                        <option>Thomson Cruises</option>
                                                        <option>Viking River Cruises</option>
                                                        <option>Windstar Cruises</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <label>&nbsp;</label>
                                                <button class="icon-check full-width">SEARCH NOW</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                       
                        
                        <div class="tab-pane fade" id="e-visa">
                            <form>
                                <div class="row flight-table-wrapper">
                                    <div style="margin:10px; padding-top:10px; background:#ebebeb0d" class="col-md-7">
                                        <h3 style="font-weight:bold; background:#80808014; padding:13px;" class="title">Turkey E-Visa Application</h3>
                                       <div style="font-size: 14px; text-align:justify">
                                        <p>
                                            The Turkish Government has launched an online visa service, which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish land. 
                                        </p>
                                        <p>You can apply for Electronic Visa in Turkey quickly, smoothly from anywhere in the World.</p>
                                        <p>
                                            Easy and simple steps are all you need to follow in order to get your visa to enter Turkey :

                                            First of all, choose your Nationality, fill out the form below with your passport information.

                                            And then make payment using your credit or debit card. Check your email for the confirmation letter.

                                           
                                        </p>
                                       </div>
                                        <div style="width: 50%" class="form-group">
                                            <label class="hidden-xs">&nbsp;</label>
                                            <a href="#" class="banner-action-btn fw-bold full-width">APPLY FOR E-VISA</a>
                                        </div>
                                    </div>
                                    
                                    <div style="margin-top: 20px; text-align:center" class="col-xs-12 col-md-4">
                                        <img   class="img-responsive" src="{{asset('images/evisa.jpg')}}" alt="">
                                        
                                    </div>
                                    
                                    {{-- <div class="col-xs-6 col-md-2">
                                        <h4 class="title">Who</h4>
                                        <div class="form-group">
                                            <label>Full Name</label>
                                            <input type="text" class="input-text full-width" placeholder="enter your full name" />
                                        </div>
                                    </div>
                                    <div class="form-group col-md-2 fixheight">
                                        <label class="hidden-xs">&nbsp;</label>
                                        <button class="icon-check full-width">SEARCH NOW</button>
                                    </div> --}}
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
	          <section class="tg-sectionspace tg-haslayout">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<div class="tg-sectionhead tg-sectionheadvtwo">
									<div class="">
										<h2 style="font-size: 30px;">Popular <span style="color: #E01514;" class="">Tours</span></h2>
									</div>
									<div class="tg-description">
										<p>Explore All Conners Of The World With Us</p>
									</div>
								</div>
								<div id="tg-populartoursslider" class="tg-populartoursslider tg-populartours owl-carousel">
									<div class="item tg-populartour">
										<figure>
											<a href="javascript:void(0);"><img src="images/tours/1.jpeg" alt="image destinations"></a>
											<span class="tg-descount">New</span>
										</figure>
										<div class="tg-populartourcontent">
											<div class="tg-populartourtitle">
												<h3><a href="javascript:void(0);">City Tours in Europe, Paris</a></h3>
											</div>
											<div class="tg-description">
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh...</p>
											</div>
											<div class="tg-populartourfoot">
												<div class="tg-durationrating">
													<a class="tour-btn" href="#">View Location</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="item tg-populartour">
										<figure><a href="javascript:void(0);"><img src="images/tours/2.jpg" alt="image destinations"></a></figure>
										<div class="tg-populartourcontent">
											<div class="tg-populartourtitle">
												<h3><a href="javascript:void(0);">Best of Canada Tours and Travel</a></h3>
											</div>
											<div class="tg-description">
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh...</p>
											</div>
											<div class="tg-populartourfoot">
												<div class="tg-durationrating">
													<a class="tour-btn" href="#">View Location</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="item tg-populartour">
										<figure><a href="javascript:void(0);"><img src="images/tours/3.jpg" alt="image destinations"></a></figure>
										<div class="tg-populartourcontent">
											<div class="tg-populartourtitle">
												<h3><a href="javascript:void(0);">Italy – 3 Days in Rome</a></h3>
											</div>
											<div class="tg-description">
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh...</p>
											</div>
											<div class="tg-populartourfoot">
												<div class="tg-durationrating">
													<a class="tour-btn" href="#">View Location</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="item tg-populartour">
										<figure><a href="javascript:void(0);"><img src="images/tours/1.jpeg" alt="image destinations"></a></figure>
										<div class="tg-populartourcontent">
											<div class="tg-populartourtitle">
												<h3><a href="javascript:void(0);">Best of Canada Tours and Travel</a></h3>
											</div>
											<div class="tg-description">
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh...</p>
											</div>
											<div class="tg-populartourfoot">
												<div class="tg-durationrating">
													<a class="tour-btn" href="#">View Location</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			  </section>

			  <div class="section container">
                <h2 style="font-size: 30px;">Explore Our <span style="color: #E01514;" class="fw-bold">Top Destinations</span></h2>
                <div class="row image-box hotel listing-style1">
                    <div class="col-sms-6 col-sm-6 col-md-3">
                        <article class="box">
                            <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                                <a class="hover-effect popup-gallery" href="ajax/slideshow-popup.html" title=""><img width="270" height="160" src="images/tours/3.jpg" alt=""></a>
                            </figure>
                            <div class="details">
                                <span class="price">
                                    <small>avg/night</small>
                                    $360
                                </span>
                                <h4 class="box-title">Hotel Hilton<small>Paris france</small></h4>
                                <div class="feedback">
                                    <div title="4 stars" class="five-stars-container" data-toggle="tooltip" data-placement="bottom"><span class="five-stars" style="width: 80%;"></span></div>
                                    <span class="review">270 reviews</span>
                                </div>
                                <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                                <div class="action">
                                    <a href="hotel-detailed.html" class="button btn-small">SELECT</a>
                                    <a href="#" class="button btn-small yellow popup-map" data-box="48.856614, 2.352222">VIEW ON MAP</a>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sms-6 col-sm-6 col-md-3">
                        <article class="box">
                            <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0.6">
                                <a class="hover-effect popup-gallery" href="ajax/slideshow-popup.html" title=""><img width="270" height="160" src="images/tours/2.jpg" alt=""></a>
                            </figure>
                            <div class="details">
                                <span class="price"><small>avg/night</small>$188</span>
                                <h4 class="box-title">Forte Do Vale<small>Albufeira</small></h4>
                                <div class="feedback">
                                    <div title="4 stars" class="five-stars-container" data-toggle="tooltip" data-placement="bottom"><span class="five-stars" style="width: 80%;"></span></div>
                                    <span class="review">170 reviews</span>
                                </div>
                                <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                                <div class="action">
                                    <a href="hotel-detailed.html" class="button btn-small">SELECT</a>
                                    <a href="#" class="button btn-small yellow popup-map" data-box="37.089072, -8.247880">VIEW ON MAP</a>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sms-6 col-sm-6 col-md-3">
                        <article class="box">
                            <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0.9">
                                <a class="hover-effect popup-gallery" href="ajax/slideshow-popup.html" title=""><img width="270" height="160" src="images/tours/1.jpeg" alt=""></a>
                            </figure>
                            <div class="details">
                                <span class="price"><small>avg/night</small>$322</span>
                                <h4 class="box-title">Gran Canaria<small>spain</small></h4>
                                <div class="feedback">
                                    <div title="4 stars" class="five-stars-container" data-toggle="tooltip" data-placement="bottom"><span class="five-stars" style="width: 80%;"></span></div>
                                    <span class="review">485 reviews</span>
                                </div>
                                <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                                <div class="action">
                                    <a href="hotel-detailed.html" class="button btn-small">SELECT</a>
                                    <a href="#" class="button btn-small yellow popup-map" data-box="40.463667, -3.749220">VIEW ON MAP</a>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-sms-6 col-sm-6 col-md-3">
                        <article class="box">
                            <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="1.2">
                                <a class="hover-effect popup-gallery" href="ajax/slideshow-popup.html" title=""><img width="270" height="160" src="images/tours/3.jpg" alt=""></a>
                            </figure>
                            <div class="details">
                                <span class="price"><small>avg/night</small>$170</span>
                                <h4 class="box-title">Roosevelt Hotel<small>New york</small></h4>
                                <div class="feedback">
                                    <div title="4 stars" class="five-stars-container" data-toggle="tooltip" data-placement="bottom"><span class="five-stars" style="width: 80%;"></span></div>
                                    <span class="review">75 reviews</span>
                                </div>
                                <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                                <div class="action">
                                    <a href="hotel-detailed.html" class="button btn-small">SELECT</a>
                                    <a href="#" class="button btn-small yellow popup-map" data-box="40.705631, -73.978003">VIEW ON MAP</a>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>

        </section>
    <div class="global-map-area section parallax" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="text-center description">
                        <h1 style="font-size: 30px;">We Provide You An Ultimate Tour Experience</h1>
                        <p>Nunc cursus libero purusac congue arcu cursus utsed vitae pulvinar massa idporta neque.</p>
                        <p>Etiam elerisque mi id faucibus iaculis vitae pulvinar.</p>
                    </div>
                    <br />
                    <div class="row image-box style8">
                        <div class="col-md-4">
                            <article class="box animated" data-animation-type="fadeInUp">
                                <figure class="middle-block">
                                    <img src="http://placehold.it/100x172" alt="" class="middle-item" width="100" height="172" />
                                    <span class="opacity-wrapper"></span>
                                </figure>
                                <div class="details">
                                    <h2 class="box-title">Travel</h2>
                                    <p>
                                        Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam elerisque mi id faucibus iaculis vitae pulvinar.
                                    </p>
                                </div>
                            </article>
                        </div>
                        <div class="col-md-4">
                            <article class="box animated" data-animation-type="fadeInUp">
                                <figure class="middle-block">
                                    <img src="http://placehold.it/100x172" alt="" class="middle-item" width="100" height="172" />
                                    <span class="opacity-wrapper"></span>
                                </figure>
                                <div class="details">
                                    <h2 class="box-title">Discover</h2>
                                    <p>
                                        Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam elerisque mi id faucibus iaculis vitae pulvinar.
                                    </p>
                                </div>
                            </article>
                        </div>
                        <div class="col-md-4">
                            <article class="box animated" data-animation-type="fadeInUp">
                                <figure class="middle-block">
                                    <img src="http://placehold.it/100x172" alt="" class="middle-item" width="100" height="172" />
                                    <span class="opacity-wrapper"></span>
                                </figure>
                                <div class="details">
                                    <h2 class="box-title">Enjoy</h2>
                                    <p>
                                        Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam elerisque mi id faucibus iaculis vitae pulvinar.
                                    </p>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                let flight_status = {!! json_encode($flight_status)!!};
                const tspinner = document.querySelector(".t-spinner")
                const input = document.querySelector("#flight-num")
                const input_city = document.querySelector("#flight-city")
                const autocomBox = document.querySelector(".autocom-box")

                const arival = document.querySelector("#arival")
                const depart = document.querySelector("#departure")
                const domestic = document.querySelector("#domestic")
                const inter = document.querySelector("#international")
            

                input.onkeyup = (e) => {
                    showTable(e)
                }
                input_city.onkeyup = (e) => {
                    showTable(e)
                }

                arival.onclick = (e) => {
                    showTable(e)
                }

                depart.onclick = (e) => {
                    showTable(e)
                }
                domestic.onclick = (e) => {
                    showTable(e)
                }
                inter.onclick = (e) => {
                    showTable(e)
                }

                const showTable = (e) =>{
                    if(autocomBox.style.display ='block'){
                        autocomBox.style.display ='none'
                    }
                    tspinner.style.display = 'block'
                    setTimeout(() => {
                        tspinner.style.display = 'none'
                        if(input && input.value){
                            autocomBox.style.display ='block'
                        }
                        
                    }, 1000)();
                }
                
                
            </script>
            @endsection
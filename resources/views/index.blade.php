@extends('layouts.welcome')
@section('title')
   Istanbuls Airport 
@endsection
@section('menus')
@foreach ($menus as $menu)
<li class="">
    @if ($menu->title == 'Contact')
      {{-- skip   --}}
    @else
    <a href="{{ url($menu->url) }}">{{$menu->title}}</a>
    @endif
</li>
@endforeach
@endsection
        @section('content')
        <div style="background-image: url('{{asset('images/assets/slider/6.jpg')}}');
        background-size: cover;" id="slideshow">
            <div class="fullwidthbanner-container">
                <div style="padding-top: 160px; padding-bottom: 150px;" class="container">
                	<div class="row" >
								<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
									<div  class="bg-dark" >
										<h1 style=" margin-bottom: 10px; font-size: 50px; font-weight: bold; color:#000;" >AIRPORT SERVICES</h1>
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
                        <li><a href="#airport-service-tab" data-toggle="tab">AIRPORT ACCESS</a></li>
                        <li><a href="#premium-service-tab" data-toggle="tab">PREMIUM SERVICES</a></li>
                        <li><a href="#visit-istanbul-tab" data-toggle="tab">VISIT ISTANBUL</a></li>
                        {{-- <li><a href="#flight-and-hotel-tab" data-toggle="tab">FLIGHT &amp; HOTELS</a></li> --}}
                        <li><a href="#covid-tab" data-toggle="tab">COVID-19</a></li>
                        
                       
                        
                    </ul>
                    <div class="visible-mobile">
                        <ul id="mobile-search-tabs" class="search-tabs clearfix">
                            <li class="active"><a href="#flight-status-tab">FLIGHT STATUS</a></li>
                            <li><a href="#e-visa">E-VISA</a></li>
                            <li><a href="#airport-service-tab">AIRPORT ACCESS</a></li>
                            <li><a href="#premium-service-tab">PREMIUM SERVICES</a></li>
                            <li><a href="#visit-istanbul-tab">VISIT ISTANBUL</a></li>
                            {{-- <li><a href="#flight-and-hotel-tab" data-toggle="tab">FLIGHT &amp; HOTELS</a></li> --}}
                            <li><a href="#covid-tab">COVID-19</a></li>
                            
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

                        <div class="tab-pane fade" id="e-visa">
                            <form>
                                <div class="row flight-table-wrapper">
                                    
                                    <div style=" padding:10px; background:#fdfdfd0d" class="col-md-6">
                                        <h3 style="font-weight:bold; background:#80808014; padding:13px;" class="title">Turkey E-Visa Application</h3>
                                       <div style="font-size: 14px; text-align:justify; padding:13px 13px 0px 13px;">
                                        <p>
                                            The Turkish Government has launched an online visa service, which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish land. 
                                        </p>
                                        <p>You can apply for Electronic Visa in Turkey quickly, smoothly from anywhere in the World.</p>
                                        <p>
                                            Easy and simple steps are all you need to follow in order to get your visa to enter Turkey :

                                            Click the button below to start
                                           
                                        </p>
                                       </div>
                                        <div style="width: 50%; margin-left:13px;" class="form-group">
                                            <label class="hidden-xs">&nbsp;</label>
                                            <a href="{{route('evisa.booking')}}" class="banner-action-btn fw-bold full-width">APPLY FOR E-VISA</a>
                                        </div>
                                    </div>
                                    
                                   
                                        <div class="col-sm-12 col-md-3 ">
                                            <div class="panel ">
                                                <div class="panel-heading ">
                                                    <img class="img-responsive right-shadow" src="{{asset('images/evisa.jpg')}}" alt="">
                                                </div>
                                                <div class="panel-body">
                                                    <h3>How to obtain an evisa</h3>
                                                    <div style="width: 80%" class="form-group">
                                                        <label class="hidden-xs">&nbsp;</label>
                                                        <a href="#" class="tour-btn fw-bold full-width">Read More</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-12 col-md-3 ">
                                            <div class="panel ">
                                                <div class="panel-heading ">
                                                    <img style="min-height: 175px;" class="img-responsive right-shadow" src="{{asset('images/tours/12.jpg')}}" alt="">
                                                </div>
                                                <div class="panel-body">
                                                    <h3>How to obtain an evisa</h3>
                                                    <div style="width: 80%" class="form-group">
                                                        <label class="hidden-xs">&nbsp;</label>
                                                        <a href="#" class="tour-btn fw-bold full-width">Read More</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </form>
                        </div>

                        <div class="tab-pane fade" id="airport-service-tab">
                            <form action="{{route('airport-taxi-booking', ['type' => 'personal_taxi'])}}" method="post">
                               @csrf
                                <div class="row">
                                    <div class="col-md-12">
                                        <h2>Book Qick Taxi</h2>
                                    </div>
                                    <div class="form-group col-sm-6 col-md-3">
                                        <label>SELECT TYPE</label>
                                        <div class="selector">
                                            <select name="taxi_type" id="access-type" onchange="showForm()" class="full-width">
                                                <option value="from">FROM ISTANBUL AIRPORT (IST)</option>
                                                <option value="to">TO ISTANBUL AIRPORT (IST)</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div   class="form-group col-sm-6 col-md-3">
                                        <label id="dropoff">DROP OFF LOCATION</label>
                                        <label style="display: none" id="pickup">PICK UP LOCATION</label>
                                        <input name="location" required id="pac-input" type="text" class="input-text full-width" placeholder="Search For Location" />
                                        
                                    </div>
                                    
                                    <div class="form-group col-sm-6 col-md-3">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <label>Adults</label>
                                                <div class="selector">
                                                    <select name="num_adult" id="adults" required class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                        <option value="5+">5 - 10</option>
                                                        <option value="10+">10+</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <label>Kids</label>
                                                <div class="selector">
                                                    <select name="num_kids" id="kids" required class="full-width">
                                                        <option value="1">01</option>
                                                        <option value="2">02</option>
                                                        <option value="3">03</option>
                                                        <option value="4">04</option>
                                                        <option value="5+">5 - 10</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div style="margin-top: 22px;" class="form-group col-sm-6 col-md-3">
                                        {{-- <label class="hidden-xs">&nbsp;</label> --}}
                                        <button  type="submit" class="full-width icon-check animated" data-animation-type="bounce" data-animation-duration="1">CONTINUE</button>
                                    </div>
                                </div>
                            </form>
                                <div class="row">
                                    <div style="display:flex; justify-content:center; align-items:center" class="form-group col-md-12">
                                        <div style="height: 350px !important; width:100%; display:none;" id="map"></div>
                                        <div id="infowindow-content">
                                            <span id="place-name" class="title"></span><br />
                                            <span id="place-address"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <h2>Browse More Services</h2>
                                    </div>
                                    <div class="col-md-6">
                                        <ul class="list-group airport-service-ul">
                                            <li class="list-group-item airport-service-list"><a href=""><div> AIRPORT TO CITY CENTER <span class="airport-service-span"><i  class="airport-service-li fa fa-arrow-circle-right fa-2x"></i></span></div></a></li>
                                            <li class="list-group-item airport-service-list"><a href=""><div>CITY CENTER TO AIRPORT<span class="airport-service-span" ><i class=" airport-service-li fa fa-arrow-circle-right fa-2x"></i></span></div></a></li>
                                            <li class="list-group-item airport-service-list"><a href=""><div>FASTEST WAY TO|FROM THE AIRPORT<span class="airport-service-span"><i class=" airport-service-li fa fa-arrow-circle-right fa-2x"></i></span></div></a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6">
                                        <ul  class="list-group airport-service-ul">
                                            <li class="list-group-item airport-service-list"><a href=""><div>AIRPORT SHUTTLE BUS <span class="airport-service-span"><i class="airport-service-li fa fa-arrow-circle-right fa-2x"></i></span></div></a></li>
                                            <li class="list-group-item airport-service-list"><a href=""><div>TERMINAL SERVICES <span class="airport-service-span"><i  class=" airport-service-li fa fa-arrow-circle-right fa-2x"></i></span></div></a></li>
                                            <li class="list-group-item airport-service-list"><a href=""><div>PRIVATE AIRPORT TAXI<span class="airport-service-span"><i  class="airport-service-li fa fa-arrow-circle-right fa-2x"></i></span></div></a></li>
                                          </ul>
                                    </div>
                                </div>
                            
                        </div>
                        <div class="tab-pane fade" id="premium-service-tab">
                            <form action="flight-list-view.html" method="post">
                                {{-- <div class="row">
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
                                </div> --}}
                            </form>
                        </div>
                        
                        <div class="tab-pane fade" id="visit-istanbul-tab">
                            <form action="flight-list-view.html" method="post">
                                {{-- <div class="row">
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
                                </div> --}}
                            </form>
                        </div>
                        
                        <div class="tab-pane fade" id="covid-tab">
                            <form action="car-list-view.html" method="post">
                                {{-- <div class="row">
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
                                </div> --}}
                            </form>
                        </div>         
                    </div>
                </div>
            </div>

            <div style="background: #e9e9e91f;">
                <div style="padding-top: 30px !important"  class="container section">
                    <h2 style="font-size: 30px; text-align:center">Things <span style="color: #E01514;" class="">To Do</span></h2>
                    <div  class="tg-description text-center">
                        <p>Explore All Conners Of Istanbul With Us</p>
                    </div>
                    <div class="row image-box style3">
                        <div class="col-sms-6 col-sm-6 col-md-3">
                            <article class="box">
                                <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                                    <a href="" class=""><img width="270" height="160" alt="" src="{{asset('images/tours/culture2.jpg')}}"></a>
                                </figure>
                                <div style="text-align: start !important" class="details text-center">
                                    <h4 style="margin-bottom: 20px;" class="box-title"><strong>Culture</strong></h4>
                                    {{-- <p class="offers-content">(15 deal offers)</p> --}}
                                    {{-- <div data-placement="bottom" data-toggle="tooltip" title="4 stars" class="five-stars-container">
                                        <span style="width: 80%;" class="five-stars"></span>
                                    </div> --}}
                                    {{-- <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar.</p> --}}
                                    <a class="tour-btn" href="#">Explore Culture</a>
                                </div>
                            </article>
                        </div>
                        <div class="col-sms-6 col-sm-6 col-md-3">
                            <article class="box">
                                <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                                    <a href="#" class=""><img width="270" height="160" alt="" src="{{asset('images/tours/event3.jpg')}}"></a>
                                </figure>
                                <div style="text-align: start !important" class="details text-center">
                                    <h4 style="margin-bottom: 20px;" class="box-title"><strong>Events</strong></h4>
                                    {{-- <p class="offers-content">(15 deal offers)</p> --}}
                                    {{-- <div data-placement="bottom" data-toggle="tooltip" title="4 stars" class="five-stars-container">
                                        <span style="width: 80%;" class="five-stars"></span>
                                    </div> --}}
                                    {{-- <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar.</p> --}}
                                    <a class="tour-btn" href="#">Read More</a>
                                </div>
                            </article>
                        </div>
                        <div class="col-sms-6 col-sm-6 col-md-3">
                            <article class="box">
                                <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                                    <a href="" class=""><img width="270" height="160" alt="" src="{{asset('images/tours/food1.jpg')}}"></a>
                                </figure>
                                <div style="text-align: start !important" class="details text-center">
                                    <h4 style="margin-bottom: 20px;" class="box-title"><strong>Food</strong></h4>
                                    {{-- <p class="offers-content">(15 deal offers)</p> --}}
                                    {{-- <div data-placement="bottom" data-toggle="tooltip" title="4 stars" class="five-stars-container">
                                        <span style="width: 80%;" class="five-stars"></span>
                                    </div> --}}
                                    {{-- <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar.</p> --}}
                                    <a class="tour-btn" href="#">Explore Food</a>
                                </div>
                            </article>
                        </div>
                        <div class="col-sms-6 col-sm-6 col-md-3">
                            <article class="box">
                                <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                                    <a href="" class=""><img width="270" height="160" alt="" src="{{asset('images/tours/lifestyle3.jpg')}}"></a>
                                </figure>
                                <div style="text-align: start !important" class="details text-center">
                                    <h4 style="margin-bottom: 20px;" class="box-title"><strong>Lifestyle</strong></h4>
                                    <a class="tour-btn" href="#">Learn More</a>
                                </div>
                            </article>
                        </div>
                        <div class="col-sms-6 col-sm-6 col-md-3">
                            <article class="box">
                                <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                                    <a href="" class=""><img width="270" height="160" alt="" src="{{asset('images/tours/tours1.jpg')}}"></a>
                                </figure>
                                <div style="text-align: start !important" class="details text-center">
                                    <h4 style="margin-bottom: 20px !important;" class="box-title"><strong>Tours</strong></h4>
                                    <a class="tour-btn" href="#">Explore</a>
                                </div>
                            </article>
                        </div>
                        <div class="col-sms-6 col-sm-6 col-md-3">
                            <article class="box">
                                <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                                    <a href="#" class=""><img width="270" height="160" alt="" src="{{asset('images/tours/park1.jpg')}}"></a>
                                </figure>
                                <div style="text-align: start !important" class="details text-center">
                                    <h4 style="margin-bottom: 20px;" class="box-title"><strong>Parks</strong></h4>
                                    <a class="tour-btn" href="#">Explore</a>
                                </div>
                            </article>
                        </div>
                        <div class="col-sms-6 col-sm-6 col-md-3">
                            <article class="box">
                                <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                                    <a href="#" class=""><img width="270" height="160" alt="" src="{{asset('images/tours/locals2.jpg')}}"></a>
                                </figure>
                                <div style="text-align: start !important" class="details text-center">
                                    <h4 style="margin-bottom: 20px;" class="box-title"><strong>Locals</strong></h4>
                                    <a class="tour-btn" href="#">Read More</a>
                                </div>
                            </article>
                        </div>
                        <div class="col-sms-6 col-sm-6 col-md-3">
                            <article class="box">
                                <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                                    <a href="#" class=""><img width="270" height="160" alt="" src="{{asset('images/tours/12.jpg')}}"></a>
                                </figure>
                                <div style="text-align: start !important" class="details text-center">
                                    <h4 style="margin-bottom: 20px;" class="box-title"><strong>Covid Checks</strong></h4>
                                    <a class="tour-btn" href="#">Read More</a>
                                </div>
                            </article>
                        </div>
                        
                    </div>
                </div>
            </div>
                
	          <section style="  margin-bottom:60px !important;" class=" tg-haslayout">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<div class="tg-sectionhead tg-sectionheadvtwo">
									<div class="">
										<h2 style="font-size: 30px;">Popular <span style="color: #E01514;" class="">Tours</span></h2>
									</div>
									<div class="tg-description">
										<p>Explore All Conners Of Istanbul With Us</p>
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
												<h3><a href="javascript:void(0);">Istanbul Mall</a></h3>
											</div>
											<div class="tg-description">
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh...</p>
											</div>
											<div class="tg-populartourfoot">
												<div class="tg-durationrating">
													<a class="tour-btn" href="#">Read More</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="item tg-populartour">
										<figure><a href="javascript:void(0);"><img src="images/tours/2.jpg" alt="image destinations"></a></figure>
										<div class="tg-populartourcontent">
											<div class="tg-populartourtitle">
												<h3><a href="javascript:void(0);">Mega Park</a></h3>
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
												<h3><a href="javascript:void(0);">Musium</a></h3>
											</div>
											<div class="tg-description">
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh...</p>
											</div>
											<div class="tg-populartourfoot">
												<div class="tg-durationrating">
													<a class="tour-btn" href="#">Read More</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="item tg-populartour">
										<figure><a href="javascript:void(0);"><img src="images/tours/1.jpeg" alt="image destinations"></a></figure>
										<div class="tg-populartourcontent">
											<div class="tg-populartourtitle">
												<h3><a href="javascript:void(0);">Subways</a></h3>
											</div>
											<div class="tg-description">
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh...</p>
											</div>
											<div class="tg-populartourfoot">
												<div class="tg-durationrating">
													<a class="tour-btn" href="#">Read More</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			  </section>

			  <div class="section container tg-sectionspace">
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
            <h2 style="font-size: 30px; color:#fff">Recent <span style="color: #E01514;" class="">News</span></h2>
            <div class="image-carousel style2" data-animation="slide" data-item-width="370" data-item-margin="30">
                <ul class="slides image-box style10">
                    @foreach ($recent_news as $item)
                    <li class="box post">
                        <figure>
                            <a href="pages-blog-read.html" class="hover-effect"><img src="{{asset('images/assets/blog/1.jpg')}}" alt="" /></a>
                            <figcaption class="entry-date">
                                <label class="date">04</label>
                                <label class="month">Jan</label>
                            </figcaption>
                        </figure>
                        <div class="details">
                            <a href="pages-blog-read.html" class="button">MORE</a>
                            <h4 class="post-title entry-title">TURKEY ENTRY - HES CODE</h4>
                            <div class="post-meta single-line-meta vcard">
                                By <span class="fn"><a rel="author" href="#" class="author">admin</a></span>
                                <span class="sep">|</span>
                                <a href="#" class="comment">1 COMMENT</a>
                                <span class="hidden updated">Aug 29, 2013</span>
                            </div>
                        </div>
                    </li>
                    @endforeach
                    
                </ul>
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

                    tspinner.style.display = 'none'
                        if(input && input.value || input_city && input_city.value){
                            autocomBox.style.display ='block'
                        };
                }

                const showForm = () => {
                    let access_type = document.querySelector("#access-type").value;
                    let dropoff = document.querySelector("#dropoff")
                    let pickup = document.querySelector("#pickup")

                    if(access_type == 'from'){
                        pickup.style.display = 'none'
                        dropoff.style.display = 'block'
                    }else if(access_type == 'to'){
                        dropoff.style.display = 'none'
                        pickup.style.display = 'block'
                    }
                }

                const smap = document.querySelector("#pac-input")
                const dmap = document.querySelector('#map')
                smap.onkeyup = (e) => {
                    if(smap && smap.value){
                        dmap.style.display='block'
                    }else{
                        dmap.style.display='none'
                    }
                }

            </script>
            @endsection
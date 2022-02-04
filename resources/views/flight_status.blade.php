@extends('layouts.welcome')
@section('title')
   Flight Status 
@endsection
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">Flight Status</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="#">HOME</a></li>
            <li class="active">Flight Status</li>
        </ul>
    </div>
</div>
<section style="padding-top:50px;">
    <div class="container">
        <div class="row">    
                <div class="col-lg-12 ftype-wrapper">
                    <div class="row">
                        <div class="col-xs-6 col-md-3">
                            <label class="radio radio-inline radio-square ftype">
                                <input id="arival" type="radio" name="ftype" checked="checked">ARIVAL
                            </label>
                        </div>
                        <div  class="col-xs-6 col-md-3">
                            <label style="" class="radio radio-inline radio-square ftype">
                                <input id="departure" type="radio" name="ftype">DEPATURE
                            </label>
                        </div>
                        <div  class="col-xs-6 col-md-3">
                            <label style="" class="radio radio-inline radio-square ftype">
                                <input id="domestic" type="radio" name="fterminal">DOMESTIC
                            </label>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <label style="" class="radio radio-inline radio-square ftype">
                                <input id="international" type="radio" name="fterminal" checked="checked">INTERNATIONAL
                            </label>
                        </div>
                    </div>
                </div>
                <div style="margin-bottom: 10px;" class="col-xs-6 col-md-4">
                    <label>FLIGHT NUMBER</label>
                    <input id="flight-num" type="text" class="input-text full-width" placeholder="Enter flight No (TK 2522)" />
                </div>
                <div style="margin-bottom: 10px;" class="col-xs-6 col-md-4">
                    <label>CITY</label>
                    <input id="flight-city" type="text" class="input-text full-width" placeholder="enter a city or place name " />
                </div>
                <div class="form-group col-md-4">
                    <label class="hidden-xs">&nbsp;</label>
                    <button id="searchbtn" class="icon-check btn-block full-width">SEARCH NOW</button>
                </div>

                <div style="text-align: center; display:none" class="t-spinner col-xs-12">
                    <img height="100" width="150" src="../images/spina.gif" alt="here">
                </div>
        </div>
    </div>
</section>


<div style="margin-top: 50px !important" class="container">
    <div class="row">
        <div  class="autocom-box col-xs-12 table-responsive">
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
                        <td style="padding: 12px;"><img height="25" width="100" src="../images/airline_logo/{{$item['airline']}}.png" alt=""></td>
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
        <div style="text-align: center; padding-top:20px;" class="col-xs 12">
            <a href="">Load More <span><i class="fa fa-arrow-right"></i></span></a>
        </div>
    </div>
</div>

@endsection

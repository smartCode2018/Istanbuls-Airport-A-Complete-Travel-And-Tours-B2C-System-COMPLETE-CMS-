@extends('layouts.welcome')
@section('title')
   E-visa booking 
@endsection
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">E-VISA APPLICATION RECIEVED</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="#">HOME</a></li>
            <li class="active">E-visa Application RECIEVED</li>
        </ul>
    </div>
</div>
<section id="content" class="gray-area">
    <div class="container">
        <div class="row">
            <div id="main" class="col-sm-8 col-md-9">
                <div class="booking-section travelo-box">
                    <form  class="cruise-booking-form">
                        <div>
                            <h2 style="margin-bottom: 30px; font-weight:bold; color:green">APPLICATION SUBMITTED</h2>
                            <div style="border-style: solid; border-width:1px; padding:20px 0px 20px 0px;" class="row">
                                <div class="col-xs-6 col-md-6">
                                    <img style="float: left; margin-right:10px;" src="{{asset('images/visaicon.jpg')}}" alt="" width="63" height="63">
                                    <div style="">
                                        <h4 style="padding:13px 0px 0px 0px; margin:0px; font-weight:bold">Electronic Visa</h4>
                                        <p>Aplication Recieved</p>
                                    </div>
                                </div>
                                 <div style="text-align: end; padding-right:30px;" class="col-xs-6 .col-md-6">
                                    <img style="" src="{{asset('images/check.png')}}" alt="" width="55" height="55">
                                </div>
                            </div>
                            <hr /> 
                        </div>
                        <div class="person-information">
                            <h2>Application Information</h2>
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-12">
                                    <table style="" class="table">
                                        {{-- <thead class="flight-table-head">
                                          <tr>
                                            <th></th>
                                          </tr>
                                        </thead> --}}
                                        <tbody style="font-size: 15px;">
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">First Name</td>
                                                <td style="text-align:start; border-style:none">{{$firstname}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Last Name</td>
                                                <td style="text-align:start; border-style:none">{{$lastname}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Date of birth</td>
                                                <td style="text-align:start; border-style:none">{{$dob}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Country of birth</td>
                                                <td style="text-align:start; border-style:none">{{$country_of_birth}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Place of birth</td>
                                                <td style="text-align:start; border-style:none">{{$place_of_birth}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Gender</td>
                                                <td style="text-align:start; border-style:none">{{$gender}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Mother name</td>
                                                <td style="text-align:start; border-style:none">{{$mother_name}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Father name</td>
                                                <td style="text-align:start; border-style:none">{{$father_name}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Passport No</td>
                                                <td style="text-align:start; border-style:none">{{$passport_number}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Passport issued date</td>
                                                <td style="text-align:start; border-style:none">{{$passport_issue_date}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Passport exp date</td>
                                                <td style="text-align:start; border-style:none">{{$passport_exp_date}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Phone</td>
                                                <td style="text-align:start; border-style:none">{{$phone}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Email</td>
                                                <td style="text-align:start; border-style:none">{{$email}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Zipcode</td>
                                                <td style="text-align:start; border-style:none">{{$zipcode}}</td>
                                            </tr>
                                            <tr >
                                                <td style="text-align:start; font-weight:bold; border-style:none ">Home Address</td>
                                                <td style="text-align:start; border-style:none">{{$address}}</td>
                                            </tr>
                                               
                                        </tbody>
                                    </table>
                                    <div style="text-align: center; margin-top:40px; font-size:16px; "><a class="tour-btns " href="{{route('home')}}">Go Back to Home</a></div>
                                </div>
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
                            <img class="img-responsive" src="{{asset('images/visa-form2.jpg')}}" alt="">
                        </figure>
                        <div class="details">
                            <p style="text-align: justify">
                                You are on the right page. Here you can complete the online Turkey visa by following the simple steps. All you need
                                is your passport and a stable internet connection in addition to your credit card for the payment.
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
</section>
@endsection
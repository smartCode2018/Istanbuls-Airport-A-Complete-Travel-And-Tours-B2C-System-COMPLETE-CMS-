@extends('layouts.welcome')
@section('title')
   CIP & Loinges
@endsection
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">Make A Reservation</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="{{route('home')}}">HOME</a></li>
            <li class="">Visit istanbul</li>
            <li class="active">Lounge</li>
        </ul>
    </div>
</div>
<section style="background:#0000001f" id="content" class="gray-area">
    <div class="container">
        <div class="row">
            <div id="main" class="col-sm-12 col-md-9">
                <div class="booking-section travelo-box">
                    @if ($errors->any())
                        <div style="background-color:#e01514; color:#ff; font-size:16px;" class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div> 
                    @endif
                    <form action="{{route('lounge-booking-store')}}" method="POST" class="cruise-booking-form">
                        @csrf
                        @method('PUT');
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
                            
                            <div  style="background: #ff000005; margin-bottom:30px;"  class="panel-heading">
                                <h1 style="font-size: 20px;" class="panel-title">Personal Information</h1>
                            </div>
                            <div>
                               
                                   <div>
                                    <div class="row">
                                        <div class="form-group col-sm-6 col-md-6">
                                            <label class="control-label text-custom-size">Given/First Name</label>
                                            <input required type="text" name="firstname" class="input-text full-width f-input-custom-style" value="{{ old('firstname') }}" placeholder="" />
                                        </div>
                                        <div class="form-group col-sm-6 col-md-6">
                                            <label class="control-label text-custom-size">Given/last name</label>
                                            <input required type="text" name="lastname" class="input-text full-width f-input-custom-style" value="{{ old('lastname') }}" placeholder="" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-sm-12 col-md-6">
                                         <label class="control-label text-custom-size">Email Address</label>
                                            <input required name="email" type="text" class="input-text full-width f-input-custom-style" value="{{ old('email') }}" placeholder="" />
                                        </div>
                                        
                                        <div class="form-group col-sm-12 col-md-6">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                 <div class="form-group">
                                                     <label class="control-label text-custom-size">Request DATE</label>
                                                     <div class="datepicker-wrap">
                                                         <input type="text" name="arival_date" required class="input-text full-width f-input-custom-style" placeholder="mm/dd/yy" value="{{ old('arival_date') }}" />
                                                     </div>
                                                 </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    
                                                        <label class="control-label text-custom-size">Flight No</label>
                                                        <input required name="flight_number" type="text" class="input-text full-width f-input-custom-style" value="{{ old('flight_number') }}" placeholder="" />
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        
                                        <div class="form-group col-sm-1 col-md-1">
                                         <label class="control-labe text-custom-size">code</label>
                                         <div class="selector">
                                             <select  name="code" class="full-width">
                                                 <option>+44</option>
                                                 <option>+1</option>
                                             </select>
                                             </div>
                                         </div>
                                     <div class="form-group col-sm-5 col-md-5">
                                         <label class="control-label text-custom-size">Phone number</label>
                                         <input required name="phone" type="text" class="input-text full-width f-input-custom-style" value="{{ old('phone') }}" placeholder="" />
                                     </div>
                                     <div class="form-group col-sm-1 col-md-3">
                                        <label class="text-custom-size">Adult</label>
                                        <div class="selector">
                                            <select name="adult" class="full-width">
                                                @isset($form['num_adult'])  
                                                <option value="{{$form['num_adult']}}" selected>{{$form['num_adult']}}</option>
                                                @endisset
                                                <option>+1</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-1 col-md-3">
                                        <label class="text-custom-size">No Kids</label>
                                        <div class="selector">
                                            <select name="kids" class="full-width">
                                                @isset($form['num_kids'])
                                                <option value="{{isset($form['num_kids']) ? $form['num_kids'] : ''}}" selected>{{$form['num_kids']}}</option>
                                                @endisset
                                                <option>+1</option>
                                            </select>
                                        </div>
                                    </div>
                                         
                                    </div>
                                       
                                       <div class="form-group">
                                           <div class="checkbox">
                                               <label class="text-custom-size">
                                                   <input name="policy" type="checkbox" checked/> By submitting this form, you agree to our terms and conditions.
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
                                <button name="submit" class="banner-action-bt nextBtn pull-right" type="submit">Submit</button>
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
                            <img class="img-responsive" src="{{asset('images/assets/others/www.jpg')}}" alt="">
                        </figure>
                        <div class="details">
                            <p style="text-align: justify">
                                Istanbul has so many incredible places to visit, due to the cultural heritage and mixture that can offer to its travelers as a big city. Although easy accession to each location can add up much more to your overall budget.
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
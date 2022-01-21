@extends('layouts.welcome')
@section('title')
   E-visa booking 
@endsection
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">E-VISA APPLICATION</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="#">HOME</a></li>
            <li class="active">E-visa Application</li>
        </ul>
    </div>
</div>
<section id="content" class="gray-area">
    <div class="container">
        <div class="row">
            <div id="main" class="col-sm-8 col-md-9">
                <div class="booking-section travelo-box">
                    <form action="{{route('evisa.submit')}}" method="POST" class="cruise-booking-form">
                        @csrf
                        <div>
                            <h2 style="margin-bottom: 30px; font-weight:bold; color:#e01514">APPLY E-VISA</h2>
                            <div style="border-style: solid; border-width:1px; padding:20px 0px 20px 0px;" class="row">
                                <div class="col-md-6">
                                    <img style="float: left; margin-right:10px;" src="{{asset('images/visaicon.jpg')}}" alt="" width="63" height="63">
                                    <div style="">
                                        <h4 style="padding:13px 0px 0px 0px; margin:0px; font-weight:bold">Electronic Visa</h4>
                                        <small>Normal Processing</small>
                                    </div>
                                </div>
                                <div class="col-md-6" >
                                    <a style="margin-top: 10px !important;"  href="" class="banner-action-btn pull-right" type="button"> ONGOING APPLICATION ?</a>
                                </div>
                            </div>
                            <hr />   
                        </div>
                        <div>
                            <div class="stepwizard">
                                <div class="stepwizard-row setup-panel">
                                    <div class="stepwizard-step col-xs-3"> 
                                        <a href="#step-1" type="button" class="btn btn-success btn-circle">1</a>
                                        <p><small>Shipper</small></p>
                                    </div>
                                    <div class="stepwizard-step col-xs-3"> 
                                        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                                        <p><small>Destination</small></p>
                                    </div>
                                    <div class="stepwizard-step col-xs-3"> 
                                        <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                                        <p><small>Schedule</small></p>
                                    </div>
                                    <div class="stepwizard-step col-xs-3"> 
                                        <a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                                        <p><small>Cargo</small></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel setup-content" id="step-1">
                            <div style="background: #ff000005; margin-bottom:30px;" class="panel-heading">
                                 <h3 class="panel-title">Shipper</h3>
                            </div>
                            <div >
                                <div style="padding-bottom: 30px;" class="row">
                                    <div class="form-group col-sm-6 col-md-6">
                                        <label>Contry | Region</label>
                                        <div class="selector">
                                            <select required name="" class="full-width">
                                                <option>Uinted Kingdom</option>
                                                <option>United Emirates</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-6 col-md-6">
                                        <label>Travel Document</label>
                                        <div class="selector">
                                            <select required name="" class="full-width">
                                                <option>Uinted Kingdom</option>
                                                <option>United Emirates</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <button class="banner-action-bt nextBtn pull-right" type="button">Next</button>
                            </div>
                            
                        </div>
                        
                        <div class="panel panel-primary setup-content" id="step-2">
                            <div class="panel-heading">
                                 <h3 class="panel-title">Destination</h3>
                            </div>
                            <div class="panel-body">
                               
                                <h2>Your Personal Information</h2>
                                
                                    <div class="panel-body">
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
                                            <div class="form-group col-sm-6 col-md-3">
                                                <label>Country of Birth</label>
                                                <div class="selector">
                                                    <select required name="country_of_birth" class="full-width">
                                                        <option value="United Kingdom">United Kingdom</option>
                                                        <option value="United States">United States</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-6 col-md-3">
                                                <label>Place of Birth</label>
                                                <input required name="place_of_birth" type="text" class="input-text full-width" value="" placeholder="" />
                                            </div>
                                            <div class="form-group col-sm-6 col-md-6">
                                                <div class="row">
                                                    <div class="col-xs-6">
                                                        <label>Date of Birth</label>
                                                        <div class="">
                                                            <input required name="dob" type="date" class="input-text full-width">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        <label>Gender</label>
                                                        <div>
                                                            <label class="radio radio-inline radio-square">
                                                                <input required name="gender" type="radio" name="gender" checked="checked">Male
                                                            </label>
                                                            <label class="radio radio-inline radio-square">
                                                                <input required type="radio" name="gender">Female
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-6 col-md-6">
                                                <label>Mother's Name</label>
                                                <input required name="mother_name" type="text" class="input-text full-width" value="" placeholder="" />
                                            </div>
                                            <div class="form-group col-sm-6 col-md-6">
                                                <label>Father's Name</label>
                                                <input required name="father_name" type="text" class="input-text full-width" value="" placeholder="" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-6 col-md-6">
                                                <label>Passort Number</label>
                                                <input required name="passport_number" type="text" class="input-text full-width" value="" placeholder="" />
                                            </div>
                                            <div class="form-group col-sm-3 col-md-3">
                                                <label>Passport Issue Date</label>
                                                        <div class="">
                                                            <input required name="passport_issue_date" type="date" class="input-text full-width">
                                                        </div>
                                            </div>
                                            <div class="form-group col-sm-3 col-md-3">
                                                <label>Passport Exp Date</label>
                                                        <div class="">
                                                            <input required name="passport_exp_date" type="date" class="input-text full-width">
                                                        </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-1 col-md-1">
                                                <label>code</label>
                                                <div class="selector">
                                                    <select required name="code" class="full-width">
                                                        <option>+44</option>
                                                        <option>+1</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-5 col-md-5">
                                                <label>Phone number</label>
                                                <input required name="phone" type="text" class="input-text full-width" value="" placeholder="" />
                                            </div>
                                            <div class="form-group col-sm-6 col-md-6">
                                                <label>Email Address</label>
                                                <input required name="email" type="email" class="input-text full-width" value="" placeholder="" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-6 col-md-6">
                                                <label>Home Address</label>
                                                <input required name="address" type="text" class="input-text full-width" value="" placeholder="" />
                                            </div>
                                            <div class="form-group col-sm-6 col-md-6">
                                                <label>Zipcode</label>
                                                    <input required name="zipcode" type="text" class="input-text full-width">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox"> I want to receive <span class="skin-color">Istanbuls Airport</span> promotional offers in the future
                                                </label>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                                    </div>
                                
                            </div>
                            
                        </div>
                        
                        <div class="panel panel-primary setup-content" id="step-3">
                            <div class="panel-heading">
                                 <h3 class="panel-title">Schedule</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="control-label">Company Name</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Company Address</label>
                                    <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                                </div>
                                <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                            </div>
                        </div>
                        
                        <div class="panel panel-primary setup-content" id="step-4">
                            <div class="panel-heading">
                                 <h3 class="panel-title">Cargo</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="form-group">
                                        <label class="control-label">Company Name</label>
                                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Company Address</label>
                                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                                    </div>
                                </div>
                                <button class="btn btn-success pull-right" type="submit">Finish!</button>
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



    {{-- <div class="container">
       
        
        <form role="form">
            <div class="panel panel-primary setup-content" id="step-1">
                <div class="panel-heading">
                     <h3 class="panel-title">Shipper</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="control-label">First Name</label>
                        <input maxlength="100" type="text" required="required" class="form-control" placeholder="Enter First Name" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Last Name</label>
                        <input maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Last Name" />
                    </div>
                    <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                </div>
            </div>
            
            <div class="panel panel-primary setup-content" id="step-2">
                <div class="panel-heading">
                     <h3 class="panel-title">Destination</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="control-label">Company Name</label>
                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Company Address</label>
                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                    </div>
                    <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                </div>
            </div>
            
            <div class="panel panel-primary setup-content" id="step-3">
                <div class="panel-heading">
                     <h3 class="panel-title">Schedule</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="control-label">Company Name</label>
                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Company Address</label>
                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                    </div>
                    <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                </div>
            </div>
            
            <div class="panel panel-primary setup-content" id="step-4">
                <div class="panel-heading">
                     <h3 class="panel-title">Cargo</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="control-label">Company Name</label>
                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Company Address</label>
                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                    </div>
                    <button class="btn btn-success pull-right" type="submit">Finish!</button>
                </div>
            </div>
        </form>
    </div> --}}
    
    

</section>
@endsection
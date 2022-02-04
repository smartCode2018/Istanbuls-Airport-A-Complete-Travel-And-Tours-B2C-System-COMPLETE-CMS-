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
<section style="background:#0000001f" id="content" class="gray-area">
    <div class="container">
        <div class="row">
            <div id="main" class="col-sm-8 col-md-9">
                <div class="booking-section travelo-box">
                    <form action="{{route('evisa.submit')}}" method="POST" class="cruise-booking-form">
                        @csrf
                        <div>
                            <h2 style="margin-bottom: 30px; font-weight:bold; color:#e01514">APPLY FOR E-VISA</h2>
                            <div style="border-style: solid; border-width:1px; padding:20px 0px 20px 0px;" class="row">
                                <div class="col-md-6">
                                    <img style="float: left; margin-right:10px;" src="{{asset('images/visaicon.jpg')}}" alt="" width="63" height="63">
                                    <div style="">
                                        <h4 style="padding:13px 0px 0px 0px; margin:0px; font-weight:bold">Electronic Visa</h4>
                                        <small>Normal Processing</small>
                                    </div>
                                </div>
                                {{-- <div class="col-md-6" >
                                    <a style="margin-top: 10px !important;"  href="" class="banner-action-btn pull-right" type="button"> ONGOING APPLICATION ?</a>
                                </div> --}}
                            </div>
                            <hr />   
                        </div>
                        <div>
                            <div class="stepwizard">
                                <div class="stepwizard-row setup-panel">
                                    <div class="stepwizard-step col-xs-3"> 
                                        <a href="#step-1" type="button" class="btn btn-success btn-circle">1</a>
                                        <p><small>Country | Region</small></p>
                                    </div>
                                    <div class="stepwizard-step col-xs-3"> 
                                        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                                        <p><small>Arrival Date</small></p>
                                    </div>
                                    <div class="stepwizard-step col-xs-3"> 
                                        <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                                        <p><small>Personal Information</small></p>
                                    </div>
                                    <div class="stepwizard-step col-xs-3"> 
                                        <a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                                        <p><small>Payment</small></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel setup-content" id="step-1">
                            <div style="background: #ff000005; margin-bottom:30px;" class="panel-heading">
                                 <h3 class="panel-title"><strong>Select Country | Travel Document</strong></h3>
                            </div>
                            <div >
                                <div style="padding-bottom: 30px;" class="row">
                                    <div class="form-group col-sm-6 col-md-6">
                                        <label>Contry | Region</label>
                                        <div class="selector">
                                            <select required name="" class="full-width">
                                                @foreach ($countries as $country)
                                                    <option value="{{$country->id}}">{{$country->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-6 col-md-6">
                                        <label>Travel Document</label>
                                        <div class="selector">
                                            <select required name="" class="full-width">
                                                @foreach ($travel_docs as $traveldoc)
                                                    <option value="{{$traveldoc->id}}">{{$traveldoc->name}}</option>
                                                @endforeach
                                                
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <button class="banner-action-bt nextBtn pull-right" type="button">Next</button>
                            </div>
                            
                        </div>
                        
                        <div class="panel setup-content"id="step-2">
                            <div style="background: #ff000005; margin-bottom:30px;" class="panel-heading">
                                <h3 class="panel-title"><strong>Arrival Date</strong></h3>
                           </div>
                            <div >
                                <div style="padding-bottom: 30px;" class="row">
                                    <div class="form-group col-sm-6 col-md-5">
                                        <label>Arrival Date</label>
                                        <div class="datepicker-wrap">
                                            <input required id="adate" type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                        </div>
                                        <div style="text-align: center; padding-top:20px; display:none" class="t-spinner col-xs-12">
                                            <img height="80" width="90" src="{{asset('images/spina.gif')}}" alt="">
                                        </div>
                                        <div id="datetext" style="margin-top: 30px;">
                                            
                                        </div>
                                    </div>
                                    <div style="text-align: justify;" class="form-group col-sm-12 col-md-7 right-shadow">
                                        <h2 style="color:#e01514">Information Note <i class="fa fa-exclamation-circle"></i></h2>
                                        <div>
                                        <p>Please, type the date you plan to enter Turkey to the related field.</p>
                                        <p>The validity period of your e-Visa will begin as of the date you enter Turkey.</p>
                                        <p>
                                            Please note that the validity period is different than the period of stay. The period of stay cannot exceed the duration stated on the left-hand side. If you wish to stay longer, you must apply to your local Police Station for a residency permit.
                                        </p>
                                        <p>
                                            If you exceed the duration stated on the left-hand side on a single entry without having a residency permit, you may be required to pay fines, deported, or banned from future travel to Turkey for a period of time.
                                        </p>
                                        <p>
                                            The e-Visa system does not inform you the number of days you stay in Turkey. It is your responsibility to make sure that you do not overstay your visa.
                                        </p>
                                    </div>
                                    </div>
                                    {{-- <div id="arrivaldate" style="text-align: center" class="col-md-12">
                                        <div>
                                            <p style="background: #e9e3e30f; padding:10px; font-size:14px; border: 1px solid #ccc;">
                                                Your e- visa is valid from <strong>24 January 2022 to 22 July 2022</strong> <br>  for a total period of 180 days. Your stay cannot exceed 30 days.
                                            </p>
                                        </div>
                                        <div class="col-md-4" style="text-align: center">
                                            <div style="position: relative">
                                                <img src="{{asset('images/c6.png')}}" height="150" width="150" alt="">
                                                <h2 style="position: absolute; top:50%; right:28%; "><strong style="font-size:30px;">25</strong>/Jan/22</h2>
                                            </div>
                                        </div>
                                        <div class="col-md-4" style="text-align: center; margin-top:30px; ">
                                            <h1><strong style="font-size: 35px;">30</strong> Days</h1>
                                            <p style="border:1px solid #ccc; margin:0px 40px 0px 40px; background:cornsilk; padding:10px;">180 Days</p>
                                        </div>
                                        <div class="col-md-4" style="text-align: center">
                                            <div style="position: relative">
                                                <img src="{{asset('images/c6.png')}}" height="150" width="150" alt="">
                                                <h2 style="position: absolute; top:50%; left:28%; "><strong style="font-size:30px;">25</strong>/Jan/22</h2>
                                            </div>
                                        </div>

                                    </div> --}}
                                </div>
                                <button class="banner-action-bt nextBtn pull-right" type="button">Next</button>
                            </div>
                            
                        </div>
                        
                        <div class="panel setup-content" id="step-3">
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
                                           <div class="form-group col-sm-6 col-md-3">
                                            <label>Contry | Region</label>
                                            <div class="selector">
                                                <select required name="country_of_birth" class="full-width">
                                                    @foreach ($countries as $country)
                                                        <option value="{{$country->id}}">{{$country->name}}</option>
                                                    @endforeach
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
                                                   <input required type="checkbox" /> I can prove that I hold a return ticket, hotel reservation and at least 50 $ per each day of my stay.
                                               </label>
                                           </div>
                                       </div>
                                       <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input required type="checkbox" /> I have a valid Supporting Document (Valid visa OR valid residence permit from one of the Schengen Countries, USA, UK or Ireland). E-visas are not accepted as supporting documents.
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input required type="checkbox"> My passport covers the period that I will be staying in Turkey.
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input required type="checkbox"> I am travelling for the purposes of tourism or business.
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input required type="checkbox"> My passport covers the period that I will be staying in Turkey.
                                            </label>
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
                        
                        <div class="panel setup-content" id="step-4">
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
    
   
<script>
    const adate = document.querySelector("#adate")
    const datetext = document.querySelector("#datetext")
    const tspinner = document.querySelector(".t-spinner")
    

    adate.onchange = (e) =>{
        showTable(e)
    }

    const showTable = (e) =>{
                    if(datetext.style.display ='block'){
                        datetext.style.display ='none'
                    }
                    tspinner.style.display = 'block'

                    let z = moment(e.target.value).add(180, 'days').format('MMMM Do YYYY');
                    let y = moment(e.target.value).format('MMMM Do YYYY');
                    tspinner.style.display = 'none'
                    datetext.style.display ='block'
                    datetext.innerHTML = `
                    <p style=" background: #e9e3e30f; padding:10px; font-size:14px; border: 1px solid #ccc;">
                        Your e- visa is valid from <strong>${y} to ${z}</strong> <br>  for a total period of 180 days. Your stay cannot exceed 30 days.
                    </p>
                    `
    }
</script>   

</section>
@endsection
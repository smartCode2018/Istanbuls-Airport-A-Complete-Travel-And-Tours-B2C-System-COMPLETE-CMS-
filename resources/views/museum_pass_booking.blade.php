@extends('layouts.welcome')
@section('title')
   Istanbul Museum Pass
@endsection
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">Get a Museum Pass Today</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="{{route('home')}}">HOME</a></li>
            <li class="">Visit istanbul</li>
            <li class="active">Museum Pass</li>
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

                        <div style="padding-bottom: 25px;" class="row">
                            <div style="text-align: center;" class="col-xs-12 col-md-6">
                                <div class="">
                                    <label  class="radio radio-inline radio-square ftype">
                                        <input id="ist" value="49" type="radio" name="museum-type" />
                                        <h3><strong>Museum Pass Istanbul</strong> </h3>
                                        <img height="100" src="{{asset('images/assets/others/m1.png')}}" alt="">
                                    </label>
                                </div>
                            </div>
                            <div style="text-align: center" class="col-xs-12 col-md-6">
                                <div class="">
                                    <label style="" class="radio radio-inline radio-square ftype ">
                                        <input id="turk" type="radio" value="72" name="museum-type" />
                                        <h3><strong>Museum Pass Turkey</strong></h3>
                                        <img height="100" src="{{asset('images/assets/others/m2.jpg')}}" alt=""> 
                                    </label>
                                </div>
                            </div>    
                        </div>
                        <div style="display: none" id="ist-museum-pass" class="col-md-12 museum-type">
                            <h2 style="">BUY MUSEUM PASS ISTANBUL AND SAVE 100 EURO</h2>
                            {{-- <h3>Museum Pass Istanbul include Single Entry To</h3> --}}
                            <ul>
                                <li><p><span>Topkapı Palace Museum and Harem Apartments</span> - <span class="museum-price"><strong>24€</strong></span></p></li>
                                <li><p><span>Hagia Irene Monument Museum</span> - <span class="museum-price"><strong>14€</strong></span></p></li>
                                <li><p><span>Istanbul Archaeological Museums</span> - <span class="museum-price"><strong>13€</strong></span></p></li>
                                <li><p><span>Turkish and Islamic Arts Museum</span> - <span class="museum-price"><strong>13€</strong></span></p></li>
                                <li><p><span>Turbes Museum</span> - <span class="museum-price"><strong>FREE</strong></span></p></li>
                                <li><p><span>Galata Tower Museum</span> - <span class="museum-price"><strong>12</strong></span></p></li>
                                <li><p><span>Istanbul Airport Museum</span> - <span class="museum-price"><strong>11€</strong></span></p></li>
                                <li><p><span>Chora Museum</span> - <span class="museum-price"><strong>12€</strong></span></p></li>
                                <li><p><span>Istanbul Great Palace Mosaic Museum</span> - <span class="museum-price"><strong>12€</strong></span></p></li>
                                <li><p><span>Istanbul Islamic Science and Technology History Museum</span> - <span class="museum-price"><strong>8€</strong></span></p></li>
                                <li><p><span>Istanbul Fethiye (Pammakaristos) Museum</span> - <span class="museum-price"><strong>12€</strong></span></p></li>
                                <li><p><span>Galata Mevlevi House Museum</span> - <span class="museum-price"><strong>9€</strong></span></p></li>
                                <li><p><span>Istanbul Rumeli Fortress Museum (Rumeli̇ Hi̇sari)</span> - <span class="museum-price"><strong>9€</strong></span></p></li>
                                <li><p><span style="font-size: 20px;">TOTAL</span> <span class="museum-price"><span style="text-decoration-line: line-through">149€ </span> &nbsp &nbsp <strong> 49€ EURO</strong></span></p></li>
                                
                            </ul>
                            <h5 style="text-align:center">Valid for single entry at designated museums for 5 days. The validity starts after your first visit.</h5>
                        </div>
                        <div style="display: none" id="turk-museum-pass" class="col-md-12 museum-type">
                            <h2 style="">BUY MUSEUM PASS TURKEY AND SAVE 249 EURO</h2>
                            {{-- <h3>Museum Pass Istanbul include Single Entry To</h3> --}}
                            <ul>
                                <li><p><span>Museum Pass Turkey Single Entry To all Turkey Museums and Archaeological sites CHECK THE FULL LIST</span></p></li>
                                
                                <li><p><span style="font-size: 20px;">TOTAL</span> <span class="museum-price"><span style="text-decoration-line: line-through">321€ </span> &nbsp &nbsp <strong> 72€ EURO</strong></span></p></li>
                                
                            </ul>
                            <h5 style="text-align:center">Valid for single entry to more than 300 turkish museums and archaeological sites during 15 days . The validity starts after your first visit..</h5>
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
                                               <input required type="text" name="firstname" class="input-text full-width f-input-custom-style" value="" placeholder="" />
                                           </div>
                                           <div class="form-group col-sm-6 col-md-6">
                                               <label class="control-label text-custom-size">Given/last name</label>
                                               <input required type="text" name="lastname" class="input-text full-width f-input-custom-style" value="" placeholder="" />
                                           </div>
                                       </div>
                                       <div class="row">
                                           <div class="form-group col-sm-6 col-md-6">
                                            <label class="text-custom-size">Contry | Region</label>
                                            <div class="selector">
                                                <select required name="country_of_birth f-input-custom-style" class="full-width">
                                                    {{-- @foreach ($countries as $country)
                                                        <option value="{{$country->id}}">{{$country->name}}</option>
                                                    @endforeach --}}
                                                </select>
                                            </div>
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
                                       
                                       <div class="form-group">
                                           <div class="checkbox">
                                               <label class="text-custom-size">
                                                   <input required type="checkbox" /> By submitting this form, you agree to our terms and conditions.
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
                            <img class="img-responsive" src="{{asset('images/assets/others/www.jpg')}}" alt="">
                        </figure>
                        <div class="details">
                            <h4><strong>What is the Museum Pass Card?</strong></h4>
                            <p style="text-align: justify">
                                The Museum Pass is a card that will allow you to enter many museums only in Istanbul or in all of Turkey without having to go through checks point or waiting lines.
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

<script>
    const ist = document.querySelector("#ist")
    const turk = document.querySelector("#turk")
    const ist_mu = document.querySelector("#ist-museum-pass")
    const turk_mu = document.querySelector("#turk-museum-pass")
    

    ist.onclick = () =>{
        var mtype = 'ist'
        showTable(mtype)
    }

    turk.onclick = () =>{
        var mtype = 'turk'
        showTable(mtype)
    }

    const showTable = (mtype) =>{
        if(mtype == 'ist'){
            turk_mu.style.display ='none'
            ist_mu.style.display ='block'
        }else if(mtype == 'turk'){
            ist_mu.style.display ='none'
            turk_mu.style.display ='block'   
        }else{
            ist_mu.style.display ='none'
            turk_mu.style.display ='none' 
        }
                                
    }
</script> 

@endsection
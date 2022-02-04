<!DOCTYPE html>
<!--[if IE 8]>          <html class="ie ie8"> <![endif]-->
<!--[if IE 9]>          <html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->  <html> <!--<![endif]-->
    <head>
        <!-- Page Title -->
        <title>@yield('title')</title>
        <link rel="shortcut icon" type="image/jpg" href="{{asset('images/logo/logo.png')}}"/>
        
        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta name="keywords" content="Istanbul-Airport" />
        <meta name="description" content="Istanbul-Airport Services">
        <meta name="Justice" content="UI Redesign">

        {{-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> --}}
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, user-scalable=0, minimal-ui">
        
        <!-- Theme Styles -->
        @yield('bootstrap')
        <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
        <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="{{asset('css/animate.min.css')}}">
        
        <!-- Current Page Styles -->
        <link rel="stylesheet" type="text/css" href="{{asset('components/revolution_slider/css/settings.css')}}" media="screen" />
        <link rel="stylesheet" type="text/css" href="{{asset('components/revolution_slider/css/style.css')}}" media="screen" />
        <link rel="stylesheet" type="text/css" href="{{asset('components/jquery.bxslider/jquery.bxslider.css')}}" media="screen" />
        <link rel="stylesheet" type="text/css" href="{{asset('components/flexslider/flexslider.css')}}" media="screen" />

        {{-- <link rel="stylesheet" href="{{asset('css/tss.css')}}"> --}}
        
        <!-- Main Style -->
        <link id="main-style" rel="stylesheet" href="{{asset('css/style.css')}}">
        
        <!-- Custom Styles -->
        <link rel="stylesheet" href="{{asset('css/custom.css')}}">

        <!-- Updated Styles -->
        <link rel="stylesheet" href="{{asset('css/updates.css')}}">


        <link rel="stylesheet" href="{{asset('css/owl.carousel.css')}}">

        
        <!-- Responsive Styles -->
        <link rel="stylesheet" href="{{asset('css/responsive.css')}}">
        <script src="{{asset('js/vendor/modernizr-2.8.3-respond-1.4.2.min.js')}}"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js" integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="text/javascript" src="{{asset('js/jquery-1.11.1.min.js')}}"></script>
        <!-- CSS for IE -->
        <!--[if lte IE 9]>
            <link rel="stylesheet" type="text/css" href="css/ie.css" />
        <![endif]-->
        

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script type='text/javascript' src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script type='text/javascript' src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
        <![endif]-->
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
        <script>
            
            function initMap() {
                const map = new google.maps.Map(document.getElementById("map"), {
                    center: { lat: 40.749933, lng: -73.98633 },
                    zoom: 13,
                    mapTypeControl: false,
                });
                const card = document.getElementById("pac-card");
                const input = document.getElementById("pac-input");
                const biasInputElement = document.getElementById("use-location-bias");
                const strictBoundsInputElement = document.getElementById("use-strict-bounds");
                const options = {
                    fields: ["formatted_address", "geometry", "name"],
                    strictBounds: false,
                    types: ["establishment"],
                };

                map.controls[google.maps.ControlPosition.TOP_LEFT].push(card);

                const autocomplete = new google.maps.places.Autocomplete(input, options);

                // Bind the map's bounds (viewport) property to the autocomplete object,
                // so that the autocomplete requests use the current map bounds for the
                // bounds option in the request.
                autocomplete.bindTo("bounds", map);

                const infowindow = new google.maps.InfoWindow();
                const infowindowContent = document.getElementById("infowindow-content");

                infowindow.setContent(infowindowContent);

                const marker = new google.maps.Marker({
                    map,
                    anchorPoint: new google.maps.Point(0, -29),
                });

                autocomplete.addListener("place_changed", () => {
                    infowindow.close();
                    marker.setVisible(false);

                    const place = autocomplete.getPlace();

                    if (!place.geometry || !place.geometry.location) {
                    // User entered the name of a Place that was not suggested and
                    // pressed the Enter key, or the Place Details request failed.
                    window.alert("No details available for input: '" + place.name + "'");
                    return;
                    }

                    // If the place has a geometry, then present it on a map.
                    if (place.geometry.viewport) {
                    map.fitBounds(place.geometry.viewport);
                    } else {
                    map.setCenter(place.geometry.location);
                    map.setZoom(17);
                    }

                    marker.setPosition(place.geometry.location);
                    marker.setVisible(true);
                    infowindowContent.children["place-name"].textContent = place.name;
                    infowindowContent.children["place-address"].textContent =
                    place.formatted_address;
                    infowindow.open(map, marker);
                });
}

        </script>

        {{-- @livewireStyles --}}
    </head>
<body>
    {{-- {{$me = \Botble\Menu\Models\MenuNode::select('title')->where('position', '!=0')->get()}} --}}
  <div id="page-wrapper">
    <header id="header" class="navbar-static-top">
        <div class="topnav hidden-xs">
            <div class="container">
                <ul class="quick-menu pull-left">
                   
                    <li class="ribbon">
                        <a href="#">English</a>
                        <ul class="menu mini">
                            <li><a href="#" title="Dansk">Dansk</a></li>
                            <li><a href="#" title="Deutsch">Deutsch</a></li>
                            <li class="active"><a href="#" title="English">English</a></li>
                            <li><a href="#" title="Español">Español</a></li>
                            <li><a href="#" title="Français">Français</a></li>
                            <li><a href="#" title="Italiano">Italiano</a></li>
                            <li><a href="#" title="Magyar">Magyar</a></li>
                            <li><a href="#" title="Nederlands">Nederlands</a></li>
                            <li><a href="#" title="Norsk">Norsk</a></li>
                            <li><a href="#" title="Polski">Polski</a></li>
                            <li><a href="#" title="Português">Português</a></li>
                            <li><a href="#" title="Suomi">Suomi</a></li>
                            <li><a href="#" title="Svenska">Svenska</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="quick-menu pull-right">
                   
                    <li class="ribbon currency">
                        <a href="#" title="">USD</a>
                        <ul class="menu mini">
                            <li><a href="#" title="AUD">AUD</a></li>
                            <li><a href="#" title="BRL">BRL</a></li>
                            <li class="active"><a href="#" title="USD">USD</a></li>
                            <li><a href="#" title="CAD">CAD</a></li>
                            <li><a href="#" title="CHF">CHF</a></li>
                            <li><a href="#" title="CNY">CNY</a></li>
                            <li><a href="#" title="CZK">CZK</a></li>
                            <li><a href="#" title="DKK">DKK</a></li>
                            <li><a href="#" title="EUR">EUR</a></li>
                            <li><a href="#" title="GBP">GBP</a></li>
                            <li><a href="#" title="HKD">HKD</a></li>
                            <li><a href="#" title="HUF">HUF</a></li>
                            <li><a href="#" title="IDR">IDR</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        
        <div class="main-header">
            
            <a href="#mobile-menu-01" data-toggle="collapse" class="mobile-menu-toggle">
                Mobile Menu Toggle
            </a>

            <div class="container">
                <h1 class="logo navbar-brand">
                    <a href="index.html" title="Istanbul Airport - home">
                        <img style="height: 60px !important; width:150px !important;" class="img-responsive" src="{{asset('images/logo/logo.png')}}" alt="Istanbuls Airport" />
                    </a>
                </h1>
                
                <nav id="main-menu" role="navigation">
                    <ul class="menu">
                        <li class="f-title text-custom-size">
                            <a href="{{ route('home') }}"><b>Home</b></a>
                        </li>
                        @foreach (\Botble\Menu\Models\MenuNode::where('position', '>', 0)->get() as $item)
                        @if ($item->title == 'Contact')  
                        @else
                        <li  class="text-custom-size">
                        <a href="{{ url($item->url) }}">{{$item->title}}</a>
                        </li>
                        @endif
                        @endforeach
                    </ul>
                </nav>
            </div>
            
            <nav id="mobile-menu-01" class="mobile-menu collapse">
                <ul id="mobile-primary-menu" class="menu">
                    <li class="">
                        <a href="{{route('home')}}">Home</a>
                    </li>
                    @foreach (\Botble\Menu\Models\MenuNode::where('position', '>', 0)->get() as $item)
                    @if ($item->title == 'Contact')  
                    @else
                    <li class="">
                    <a href="{{ url($item->url) }}">{{$item->title}}</a>
                    </li>
                    @endif
                    @endforeach
                </ul>
                
                <ul class="mobile-topnav container">
                    
                    <li class="ribbon language menu-color-skin">
                        <a href="#" data-toggle="collapse">ENGLISH</a>
                        <ul class="menu mini">
                            <li><a href="#" title="Dansk">Dansk</a></li>
                            <li><a href="#" title="Deutsch">Deutsch</a></li>
                            <li class="active"><a href="#" title="English">English</a></li>
                            <li><a href="#" title="Español">Español</a></li>
                            <li><a href="#" title="Français">Français</a></li>
                            <li><a href="#" title="Italiano">Italiano</a></li>
                            <li><a href="#" title="Magyar">Magyar</a></li>
                            <li><a href="#" title="Nederlands">Nederlands</a></li>
                            <li><a href="#" title="Norsk">Norsk</a></li>
                            <li><a href="#" title="Polski">Polski</a></li>
                            <li><a href="#" title="Português">Português</a></li>
                            <li><a href="#" title="Suomi">Suomi</a></li>
                            <li><a href="#" title="Svenska">Svenska</a></li>
                        </ul>
                    </li>
                    
                    <li class="ribbon currency menu-color-skin">
                        <a href="#">USD</a>
                        <ul class="menu mini">
                            <li><a href="#" title="AUD">AUD</a></li>
                            <li><a href="#" title="BRL">BRL</a></li>
                            <li class="active"><a href="#" title="USD">USD</a></li>
                            <li><a href="#" title="CAD">CAD</a></li>
                            <li><a href="#" title="CHF">CHF</a></li>
                            <li><a href="#" title="CNY">CNY</a></li>
                            <li><a href="#" title="CZK">CZK</a></li>
                            <li><a href="#" title="DKK">DKK</a></li>
                            <li><a href="#" title="EUR">EUR</a></li>
                            <li><a href="#" title="GBP">GBP</a></li>
                            <li><a href="#" title="HKD">HKD</a></li>
                            <li><a href="#" title="HUF">HUF</a></li>
                            <li><a href="#" title="IDR">IDR</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div> 
    </header>
    @yield('content')
    <footer id="footer">
        <div class="footer-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <h2>About Istanbul Airport</h2>
                        <p>Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massaidp nequetiam lore elerisque.</p>
                        <br />
                        <address class="contact-details">
                            <span class="contact-phone"><i class="soap-icon-phone"></i> 0-000-000-HELLO</span>
                            <br />
                            <a href="#" class="contact-email">help@istanbulairport.com</a>
                        </address>
                        <ul class="social-icons clearfix">
                            <li class="twitter"><a title="twitter" href="#" data-toggle="tooltip"><i class="soap-icon-twitter"></i></a></li>
                            <li class="googleplus"><a title="googleplus" href="#" data-toggle="tooltip"><i class="soap-icon-googleplus"></i></a></li>
                            <li class="facebook"><a title="facebook" href="#" data-toggle="tooltip"><i class="soap-icon-facebook"></i></a></li>
                            <li class="linkedin"><a title="linkedin" href="#" data-toggle="tooltip"><i class="soap-icon-linkedin"></i></a></li>
                            <li class="vimeo"><a title="vimeo" href="#" data-toggle="tooltip"><i class="soap-icon-vimeo"></i></a></li>
                            <li class="dribble"><a title="dribble" href="#" data-toggle="tooltip"><i class="soap-icon-dribble"></i></a></li>
                            <li class="flickr"><a title="flickr" href="#" data-toggle="tooltip"><i class="soap-icon-flickr"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <h2>Quick Links</h2>
                        <ul class="discover triangle hover row">
                        @foreach (\Botble\Menu\Models\MenuNode::where('position', '>', 0)->get() as $item)
                        @if ($item->title == 'Contact')  
                        @else
                        <li class="col-xs-6">
                        <a href="{{ url($item->url) }}">{{$item->title}}</a>
                        </li>
                        @endif
                        @endforeach
                            <li class="col-xs-6"><a href="#">Blog Posts</a></li>
                            <li class="col-xs-6"><a href="#">Policies</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-5">
                        <h2>Travel News</h2>
                        <ul class="travel-news">
                            @foreach (\Botble\Blog\Models\Post::where('status', 'published')->take(2)->get() as $item)
                            <li>
                                <div class="thumb">
                                    <a href="#">
                                        <img src="{{asset('storage/'.$item->image)}}" alt="" width="73" height="63" />
                                    </a>
                                </div>
                                <div class="description">
                                    <h5 class="s-title"><a href="#">{{\Illuminate\Support\Str::limit($item->name, 20, $end='...')}}</a></h5>
                                    <p>{{\Illuminate\Support\Str::limit($item->description, 50, $end='...')}}</p>
                                    <span class="date">{{ \Carbon\Carbon::parse($item->updated_at)->diffForHumans() }}</span>
                                </div>
                            </li>
                            @endforeach
                            
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom gray-area">
            <div class="container">
                <div class="logo pull-left">
                    <a href="index.html" title="Istanbul Airport - home">
                        <!-- <img src="images/logo.png" alt="Istanbul-Airport" /> -->
                    </a>
                </div>
                <div class="pull-right">
                    <a id="back-to-top" href="#" class="animated" data-animation-type="bounce"><i class="soap-icon-longarrow-up circle"></i></a>
                </div>
                <div class="copyright pull-right">
                    <p>&copy; 2022 Istanbul Airport Services</p>
                </div>
            </div>
        </div>
    </footer>
  </div>
  <!-- Javascript -->

  {{-- imported using laravel mix --}}
  {{-- <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> --}}
  <script type="text/javascript" src="{{asset('js/jquery.noconflict.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/modernizr.2.7.1.min.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/jquery-migrate-1.2.1.min.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/jquery.placeholder.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/jquery-ui.1.10.4.min.js')}}"></script>



  
  <script src="{{asset('js/jquery-scrolltofixed.js')}}"></script>
  <script src="{{asset('js/owl.carousel.min.js')}}"></script>
  <script src="{{asset('js/scrollbar.min.js')}}"></script>
  {{-- <script src="{{asset('js/main.js')}}"></script> --}}

  
  <!-- Twitter Bootstrap -->
  <script type="text/javascript" src="{{asset('js/bootstrap.js')}}"></script>
  
  <!-- load revolution slider scripts -->
  <script type="text/javascript" src="{{asset('components/revolution_slider/js/jquery.themepunch.plugins.min.js')}}"></script>
  <script type="text/javascript" src="{{asset('components/revolution_slider/js/jquery.themepunch.revolution.min.js')}}"></script>
  
  <!-- load BXSlider scripts -->
  <script type="text/javascript" src="{{asset('components/jquery.bxslider/jquery.bxslider.min.js')}}"></script>

  <!-- Flex Slider -->
  <script type="text/javascript" src="{{asset('components/flexslider/jquery.flexslider-min.js')}}"></script>

  <!-- Google Map Api -->
  <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCIU0A3mNHA1Y90-dmcx2xZQPV_G6Hi-9E&callback=initMap&libraries=places&v=weekly"
      async
    ></script>
  
  <!-- parallax -->
  <script type="text/javascript" src="{{asset('js/jquery.stellar.min.js')}}"></script>
  
  <!-- waypoint -->
  <script type="text/javascript" src="{{asset('js/waypoints.min.js')}}"></script>

  <!-- load page Javascript -->
  <script type="text/javascript" src="{{asset('js/theme-scripts.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/theme-scripts.js')}}"></script>
  
  <script type="text/javascript">
      tjq(document).ready(function() {
          tjq('.revolution-slider').revolution(
          {
              dottedOverlay:"none",
              delay:9000,
              startwidth:1170,
              startheight:646,
              onHoverStop:"on",
              hideThumbs:10,
              fullWidth:"on",
              forceFullWidth:"on",
              navigationType:"none",
              shadow:0,
              spinner:"spinner4",
              hideTimerBar:"on",
          });
      });
  </script>
  
  <script>
       (function($) {
    $(document).ready(function () {

        var navListItems = $('div.setup-panel div a'),
            allWells = $('.setup-content'),
            allNextBtn = $('.nextBtn');

        allWells.hide();

        navListItems.click(function (e) {
            e.preventDefault();
            var $target = $($(this).attr('href')),
                $item = $(this);

            if (!$item.hasClass('disabled')) {
                navListItems.removeClass('btn-success').addClass('btn-default');
                $item.addClass('btn-success');
                allWells.hide();
                $target.show();
                $target.find('input:eq(0)').focus();
            }
        });

        allNextBtn.click(function () {
            var curStep = $(this).closest(".setup-content"),
                curStepBtn = curStep.attr("id"),
                nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
                curInputs = curStep.find("input[type='text'],input[type='url']"),
                isValid = true;

            $(".form-group").removeClass("has-error");
            for (var i = 0; i < curInputs.length; i++) {
                if (!curInputs[i].validity.valid) {
                    isValid = false;
                    $(curInputs[i]).closest(".form-group").addClass("has-error");
                }
            }

            if (isValid) nextStepWizard.removeAttr('disabled').trigger('click');
        });

        $('div.setup-panel div a.btn-success').trigger('click');
    });
})(jQuery);
</script>
{{-- @livewireScripts --}}
</body>
</html>

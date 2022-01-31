@extends('layouts/welcome')
@section('title')
    Evisa
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
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">TURKEY E-VISA </h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="#">HOME</a></li>
            <li class="active">E-visa</li>
        </ul>
    </div>
</div>
<section class="bg-color" id="content">
    <div class="container">
        <div class="row">
            <div id="main" class="col-sm-8 col-md-9">
                <div class="page">
                    <div class="post-content">
                        <div class="blog-infinite">
                            <div class="post">
                                <div class="post-content-wrapper">
                                    <figure class="image-container">
                                        <a href="pages-blog-read.html" class="hover-effect"><img src="http://placehold.it/870x342" alt="" /></a>
                                    </figure>
                                    <div class="details">
                                        <h2 class="entry-title"><a href="pages-blog-read.html">How to Get Turkey e-Visa (Turkey Electronic Visa)</a></h2>
                                        <div class="excerpt-container">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's stand dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a neque a tortor tempor in porta sem vulputate. Donec varius felis fermentum nis type specimen book. It has survived not only five centuries.</p>
                                        </div>
                                        <div class="post-meta">
                                            <div class="entry-date">
                                                <label class="date">29</label>
                                                <label class="month">Aug</label>
                                            </div>
                                            <div class="entry-author fn">
                                                <i class="icon soap-icon-user"></i> Posted By:
                                                <a href="#" class="author">Jessica Browen</a>
                                            </div>
                                            <div class="entry-action">
                                                <a href="#" class="button entry-comment btn-small"><i class="soap-icon-comment"></i><span>30 Comments</span></a>
                                                <a href="#" class="button btn-small"><i class="soap-icon-wishlist"></i><span>22 Likes</span></a>
                                                <span class="entry-tags"><i class="soap-icon-features"></i><span><a href="#">Adventure</a>, <a href="#">Romance</a></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-content-wrapper">
                                    <div class="flexslider photo-gallery style3">
                                        <ul class="slides">
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                        </ul>
                                    </div>
                                    <div class="details">
                                        <h2 class="entry-title"><a href="pages-blog-read.html">Slideshow post with slider</a></h2>
                                        <div class="excerpt-container">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's stand dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a neque a tortor tempor in porta sem vulputate. Donec varius felis fermentum nis type specimen book. It has survived not only five centuries.</p>
                                        </div>
                                        <div class="post-meta">
                                            <div class="entry-date">
                                                <label class="date">29</label>
                                                <label class="month">Aug</label>
                                            </div>
                                            <div class="entry-author fn">
                                                <i class="icon soap-icon-user"></i> Posted By:
                                                <a href="#" class="author">Jessica Browen</a>
                                            </div>
                                            <div class="entry-action">
                                                <a href="#" class="button entry-comment btn-small"><i class="soap-icon-comment"></i><span>30 Comments</span></a>
                                                <a href="#" class="button btn-small"><i class="soap-icon-wishlist"></i><span>22 Likes</span></a>
                                                <span class="entry-tags"><i class="soap-icon-features"></i><span><a href="#">Adventure</a>, <a href="#">Romance</a></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-content-wrapper">
                                    <div class="video-container">
                                        <div class="full-video">
                                            <iframe src="http://www.youtube.com/embed/mcixldqDIEQ?wmode=transparent" allowfullscreen></iframe>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <h2 class="entry-title"><a href="pages-blog-read.html">Travelo 1 minute video post</a></h2>
                                        <div class="excerpt-container">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's stand dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a neque a tortor tempor in porta sem vulputate. Donec varius felis fermentum nis type specimen book. It has survived not only five centuries.</p>
                                        </div>
                                        <div class="post-meta">
                                            <div class="entry-date">
                                                <label class="date">29</label>
                                                <label class="month">Aug</label>
                                            </div>
                                            <div class="entry-author fn">
                                                <i class="icon soap-icon-user"></i> Posted By:
                                                <a href="#" class="author">Jessica Browen</a>
                                            </div>
                                            <div class="entry-action">
                                                <a href="#" class="button entry-comment btn-small"><i class="soap-icon-comment"></i><span>30 Comments</span></a>
                                                <a href="#" class="button btn-small"><i class="soap-icon-wishlist"></i><span>22 Likes</span></a>
                                                <span class="entry-tags"><i class="soap-icon-features"></i><span><a href="#">Adventure</a>, <a href="#">Romance</a></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-content-wrapper">
                                    <div class="flexslider photo-gallery style1" id="post-slideshow1" data-sync="#post-carousel1">
                                        <ul class="slides">
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                        </ul>
                                    </div>
                                    <div class="flexslider image-carousel style1" id="post-carousel1"  data-animation="slide" data-item-width="70" data-item-margin="10" data-sync="#post-slideshow1">
                                        <ul class="slides">
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                            <li><img src="http://placehold.it/70x70" alt="" /></li>
                                        </ul>
                                    </div>
                                    <div class="details">
                                        <h2 class="entry-title"><a href="pages-blog-read.html">Gallery post with slider</a></h2>
                                        <div class="excerpt-container">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's stand dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a neque a tortor tempor in porta sem vulputate. Donec varius felis fermentum nis type specimen book. It has survived not only five centuries.</p>
                                        </div>
                                        <div class="post-meta">
                                            <div class="entry-date">
                                                <label class="date">29</label>
                                                <label class="month">Aug</label>
                                            </div>
                                            <div class="entry-author fn">
                                                <i class="icon soap-icon-user"></i> Posted By:
                                                <a href="#" class="author">Jessica Browen</a>
                                            </div>
                                            <div class="entry-action">
                                                <a href="#" class="button entry-comment btn-small"><i class="soap-icon-comment"></i><span>30 Comments</span></a>
                                                <a href="#" class="button btn-small"><i class="soap-icon-wishlist"></i><span>22 Likes</span></a>
                                                <span class="entry-tags"><i class="soap-icon-features"></i><span><a href="#">Adventure</a>, <a href="#">Romance</a></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="post without-featured-item">
                                <div class="post-content-wrapper">
                                    <div class="details">
                                        <h2 class="entry-title"><a href="pages-blog-read.html">Post without a featured image</a></h2>
                                        <div class="excerpt-container">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's stand dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a neque a tortor tempor in porta sem vulputate. Donec varius felis fermentum nis type specimen book. It has survived not only five centuries.</p>
                                        </div>
                                        <div class="post-meta">
                                            <div class="entry-date">
                                                <label class="date">29</label>
                                                <label class="month">Aug</label>
                                            </div>
                                            <div class="entry-author fn">
                                                <i class="icon soap-icon-user"></i> Posted By:
                                                <a href="#" class="author">Jessica Browen</a>
                                            </div>
                                            <div class="entry-action">
                                                <a href="#" class="button entry-comment btn-small"><i class="soap-icon-comment"></i><span>30 Comments</span></a>
                                                <a href="#" class="button btn-small"><i class="soap-icon-wishlist"></i><span>22 Likes</span></a>
                                                <span class="entry-tags"><i class="soap-icon-features"></i><span><a href="#">Adventure</a>, <a href="#">Romance</a></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-content-wrapper">
                                    <div class="flexslider photo-gallery style4">
                                        <ul class="slides">
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                            <li><a href="pages-blog-read.html"><img src="http://placehold.it/870x342" alt=""></a></li>
                                        </ul>
                                    </div>
                                    <div class="details">
                                        <h2 class="entry-title"><a href="pages-blog-read.html">Slideshow post without slider</a></h2>
                                        <div class="excerpt-container">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's stand dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a neque a tortor tempor in porta sem vulputate. Donec varius felis fermentum nis type specimen book. It has survived not only five centuries.</p>
                                        </div>
                                        <div class="post-meta">
                                            <div class="entry-date">
                                                <label class="date">29</label>
                                                <label class="month">Aug</label>
                                            </div>
                                            <div class="entry-author fn">
                                                <i class="icon soap-icon-user"></i> Posted By:
                                                <a href="#" class="author">Jessica Browen</a>
                                            </div>
                                            <div class="entry-action">
                                                <a href="#" class="button entry-comment btn-small"><i class="soap-icon-comment"></i><span>30 Comments</span></a>
                                                <a href="#" class="button btn-small"><i class="soap-icon-wishlist"></i><span>22 Likes</span></a>
                                                <span class="entry-tags"><i class="soap-icon-features"></i><span><a href="#">Adventure</a>, <a href="#">Romance</a></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="button btn-large full-width">LOAD MORE POSTS</a>
                    </div>
                </div>
            </div>
            <div class="sidebar col-sm-4 col-md-3">
                <div class="travelo-box">
                    <h5 class="box-title">Search Stories</h5>
                    <div class="with-icon full-width">
                        <input type="text" class="input-text full-width" placeholder="story name or category">
                        <button class="icon green-bg white-color"><i class="soap-icon-search"></i></button>
                    </div>
                </div>
                <div class="travelo-box">
                    <h5 class="box-title">About Travelo</h5>
                    <p>Phasellus vehicula justo eget  sollicitudin eu tincidu ncurabitur ele sollicitu tincidu nulla curabitur magna ined and posuere lorem sollicitudin eu tin.</p>
                </div>
                <div class="tab-container box">
                    <ul class="tabs full-width">
                        <li><a data-toggle="tab" href="#recent-posts">Recent</a></li>
                        <li class="active"><a data-toggle="tab" href="#popular-posts">Popular</a></li>
                        <li><a data-toggle="tab" href="#new-posts">New</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="recent-posts" class="tab-pane fade">
                            
                        </div>
                        <div id="popular-posts" class="tab-pane fade in active">
                            <div class="image-box style14">
                                <article class="box">
                                    <figure><a href="#" title=""><img width="63" height="59" src="http://placehold.it/63x59" alt=""></a></figure>
                                    <div class="details">
                                        <h5 class="box-title"><a href="#">Half-Day Island Tour</a></h5>
                                        <label class="price-wrapper"><span class="price-per-unit">$35</span>Family Package</label>
                                    </div>
                                </article>
                                <article class="box">
                                    <figure><a href="#" title=""><img width="63" height="59" src="http://placehold.it/63x59" alt=""></a></figure>
                                    <div class="details">
                                        <h5 class="box-title"><a href="#">Ocean Park Tour</a></h5>
                                        <label class="price-wrapper"><span class="price-per-unit">$26</span>Per Person</label>
                                    </div>
                                </article>
                                <article class="box">
                                    <figure><a href="#" title=""><img width="63" height="59" src="http://placehold.it/63x59" alt=""></a></figure>
                                    <div class="details">
                                        <h5 class="box-title"><a href="#">Dream World Trip</a></h5>
                                        <label class="price-wrapper"><span class="price-per-unit">$11</span>holiday offer</label>
                                    </div>
                                </article>
                            </div>
                        </div>
                        <div id="new-posts" class="tab-pane fade">
                            
                        </div>
                    </div>
                </div>
                <div class="travelo-box filters-container">
                    <h4 class="box-title">All Categories</h4>
                    <ul class="check-square categories-filter filters-option">
                        <li><a href="#">All<small>(722)</small></a></li>
                        <li><a href="#">Family<small>(982)</small></a></li>
                        <li><a href="#">Romance<small>(127)</small></a></li>
                        <li class="active"><a href="#">Adventure<small>(222)</small></a></li>
                        <li class="active"><a href="#">Beach<small>(158)</small></a></li>
                        <li><a href="#">Wildlife<small>(439)</small></a></li>
                        <li><a href="#">Island &amp; parks<small>(52)</small></a></li>
                    </ul>
                    <a class="button btn-mini">MORE</a>
                </div>
                <div class="travelo-box twitter-box">
                    <h4 class="box-title">Twitter Feeds</h4>
                    <div class="twitter-holder">
                        <ul>
                            <li class="tweet">
                                <p class="tweet-text">
                                    <a href="#">@Travelo</a>, Proin feugiat mattis a sed adipiscing velit sodales.
                                </p>
                                <a class="tweet-date" href="http://twitter.com/">25 Minutes ago</a>
                            </li>
                            <li class="tweet">
                                <p class="tweet-text">
                                    Proin feugiat mattis antesmoke sed adipiscing velit sodales.
                                    <a href="#">http://travelo.com</a>
                                </p>
                                <a class="tweet-date" href="http://twitter.com/">25 Minutes ago</a>
                            </li>
                            <li class="tweet">
                                <p class="tweet-text">
                                    <a href="#">@Travelo</a>, Proin feugiat mattis a sed adipiscing velit sodales.
                                </p>
                                <a class="tweet-date" href="http://twitter.com/">25 Minutes ago</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="travelo-box contact-box">
                    <h4 class="box-title">Need Travelo Help?</h4>
                    <p>We would be more than happy to help you. Our team advisor are 24/7 at your service to help you.</p>
                    <address class="contact-details">
                        <span class="contact-phone"><i class="soap-icon-phone"></i> 1-800-123-HELLO</span>
                        <br />
                        <a href="#" class="contact-email">help@travelo.com</a>
                    </address>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
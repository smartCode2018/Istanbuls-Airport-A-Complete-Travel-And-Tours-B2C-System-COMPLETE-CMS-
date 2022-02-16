@extends('layouts.admin')
@section('content')
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Admin Finance</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Admin Finance</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-3 col-sm-6">
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{$totalTouristPass}}</h3>
                <h6>Tourist Pass Bookings</h6>
              </div>
                <div class="icon">
                  <i class="fas fa-shopping-cart"></i>
                </div>
              <a href="{route('super-admin-tourist-pass')}}" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{$totalMuseumPass}}</h3>
                <h6>Museum Pass bookings </h6>
              </div>
                <div class="icon">
                  <i class="fas fa-shopping-cart"></i>
                </div>
              <a href="{{route('super-admin-museum-pass')}}" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{$totalTours}}</h3>
                <h6>Istanbul Tours</h6>
              </div>
                <div class="icon">
                  <i class="fas fa-shopping-cart"></i>
                </div>
              <a href="{{route('super-admin-istanbul-tours')}}" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>{{$totalTaxi}}</h3>
                <h6>Taxi Booking</h6>
              </div>
                <div class="icon">
                  <i class="fas fa-shopping-cart"></i>
                </div>
              <a href="{{route('super-admin-istanbul-taxi')}}" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{$totalPcrText}}</h3>
                <h6>Covid PCR Test</h6>
              </div>
                <div class="icon">
                  <i class="fas fa-shopping-cart"></i>
                </div>
              <a href="{{route('super-admin-covidpcr-test')}}" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{$totalEvisa}}</h3>
                <h6>Evisa Appointments</h6>
              </div>
                <div class="icon">
                  <i class="fas fa-shopping-cart"></i>
                </div>
              <a href="{{route('super-admin-evisa')}}" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-info">
              <div class="inner">
                <h3>{{$totalMGA}}</h3>
                <h6>Meet and Greet</h6>
              </div>
                <div class="icon">
                  <i class="fas fa-shopping-cart"></i>
                </div>
              <a href="{{route('super-admin-mga')}}" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>{{$totalLounge}}</h3>
                <h6>Lounge Reservation</h6>
              </div>
                <div class="icon">
                  <i class="fas fa-shopping-cart"></i>
                </div>
              <a href="#" class="small-box-footer">
                More info <i class="fas fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-8">
            <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">Latest Tour Bookings</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                    <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Status</th>
                      <th>Amount</th>
                      <th>Tour Type</th>
                      <th>Date</th>
                    </tr>
                    </thead>
                    <tbody>
                      @foreach ($tours as $tour)
                        <tr>
                          <td><a href="pages/examples/invoice.html">{{$tour->id}}</a></td>
                          <td>{{$tour->firstname }} {{$tour->lastname}}</td>
                          <td><span class="badge <?php($tour->status == 'pending')?'badge-warning':($tour->status == 'paid')?'badge-success':($tour->status == 'cancelled')? 'badge-danger' : '' ?>">{{$tour->status}}</span></td>
                          <td>
                            <div class="sparkbar" data-color="#00a65a" data-height="20">{{$tour->price}}</div>
                          </td>
                          <td>{{$tour->tour_type}}</td>
                          <td>{{$tour->request_date}}</td>
                        </tr>
                      @endforeach
                      
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                {{-- <a href="javascript:void(0)" class="btn btn-sm btn-info float-left">Place New Order</a> --}}
                <a href="{{route('super-admin-istanbul-tours')}}" class="btn btn-sm btn-secondary float-right">View All Tours</a>
              </div>
              <!-- /.card-footer -->
            </div>
          </div>
          <div class="col-md-4">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Museum Pass Booking</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <ul class="products-list product-list-in-card pl-2 pr-2">
                  @foreach ($museumPass as $pass)
                    <li class="item">
                      <div class="product-img">
                        <img src="{{asset('images/assets/others/mu.png')}}" alt="Product Image" class="img-size-50">
                      </div>
                      <div class="product-info">
                        <a href="javascript:void(0)" class="product-title">{{$pass->passtype}}
                          <span class="badge badge-warning float-right">{{$pass->price}}</span></a>
                        <span class="product-description">
                          {{$pass->firstname}} {{$pass->lastname}}
                        </span>
                      </div>
                    </li>
                      
                  @endforeach
                  <!-- /.item -->
                </ul>
              </div>
              <!-- /.card-body -->
              <div class="card-footer text-center">
                <a href="{{route('super-admin-museum-pass')}}" class="uppercase">View All Tourist Pass</a>
              </div>
              <!-- /.card-footer -->
            </div>
          </div>
        </div>

        
      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
@endsection

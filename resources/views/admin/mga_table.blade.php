@extends('layouts.admin')
@section('title')
  Meet and Greet Bookings
@endsection
@section('script')
<link rel="stylesheet" href="{{asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{asset('plugins/datatables-buttons/css/buttons.bootstrap4.min.css')}}">

<link rel="stylesheet" href="{{asset('dist/css/adminlte.min.css')}}">
<script>(function(w,d){!function(a,e,t,r,z){a.zarazData=a.zarazData||{},a.zarazData.executed=[],a.zarazData.tracks=[],a.zaraz={deferred:[]};var s=e.getElementsByTagName("title")[0];a.zarazData.c=e.cookie,s&&(a.zarazData.t=e.getElementsByTagName("title")[0].text),a.zarazData.w=a.screen.width,a.zarazData.h=a.screen.height,a.zarazData.j=a.innerHeight,a.zarazData.e=a.innerWidth,a.zarazData.l=a.location.href,a.zarazData.r=e.referrer,a.zarazData.k=a.screen.colorDepth,a.zarazData.n=e.characterSet,a.zarazData.o=(new Date).getTimezoneOffset(),//
a.dataLayer=a.dataLayer||[],a.zaraz.track=(e,t)=>{for(key in a.zarazData.tracks.push(e),t)a.zarazData["z_"+key]=t[key]},a.zaraz._preSet=[],a.zaraz.set=(e,t,r)=>{a.zarazData["z_"+e]=t,a.zaraz._preSet.push([e,t,r])},a.dataLayer.push({"zaraz.start":(new Date).getTime()}),a.addEventListener("DOMContentLoaded",(()=>{var t=e.getElementsByTagName(r)[0],z=e.createElement(r);z.defer=!0,z.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a.zarazData))),t.parentNode.insertBefore(z,t)}))}(w,d,0,"script");})(window,document);</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
@endsection
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Meet and Greet Bookings Transaction Record</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('super-admin-dashboard')}}">Home</a></li>
              <li class="breadcrumb-item active">Meet and Greet Bookings Table</li>
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
            <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-shopping-cart"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Bookings</span>
                        <span class="info-box-number">{{$bookings}}</span>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-coins"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Amount</span>
                        <span class="info-box-number">{{isset($amount->total)? $amount->total : 0 }}</span>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-success elevation-1"><i class="fas fa-check"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Completed</span>
                        <span class="info-box-number">{{isset($paid->total)? $paid->total : 0 }}</span>
                    </div>
                </div>
            </div>

          </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Meet and Greet Bookings Transaction Table</h3>
                    </div>
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>BID</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Flight No</th>
                                    <th>Request Date</th>
                                    <th>Phone</th>
                                    <th>status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                              @foreach ($mga as $item)
                              <tr>
                                <td>{{$item->product_id}}</td>
                                <td>{{$item->firstname}}</td>
                                <td>{{$item->lastname}}</td>
                                <td>{{$item->email}}</td>
                                <td> {{$item->dept_flight_number}}</td>
                                <td> {{$item->request_date}}</td>
                                <td> {{$item->phone}}</td>
                                <td> {{$item->status}}</td>
                                <td>
                                  <div class="btn-group ">
                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-lg"><i class="fas fa-table"></i></button>
                                    <div class="btn-group">
                                    <button type="button" class="btn btn-info dropdown-toggle dropdown-icon" data-toggle="dropdown" aria-expanded="false">
                                    </button>
                                    <div class="dropdown-menu" style="">
                                      <button class="dropdown-item btn-success mb-1"  onclick="sAlert({{$item->product_id}}, 'paid')">Paid</button>
                                      <button class="dropdown-item btn-danger mb-1"  onclick="sAlert({{$item->product_id}}, 'cancelled')">Cancel</button>
                                      <button class="dropdown-item btn-warning"  onclick="sAlert({{$item->product_id}}, 'pending')">Pending</button>
                                    </div>
                                    </div>
                                  </div>
                                </td>
                              </tr>
                              @endforeach
                            </tbody>
                            <tfoot>
                                <tr>
                                  <th>BID</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Flight No</th>
                                    <th>Request Date</th>
                                    <th>Phone</th>
                                    <th>status</th>
                                    <th>Actions</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
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

 {{-- modal --}}
 <div class="modal fade" id="modal-lg">
  <div class="modal-dialog modal-lg">
      <div class="modal-content">
          <div class="modal-header">
              <h4 class="modal-title">Client Details - Booking ID : </h4>
              
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
              </button>
          </div>
          <div class="modal-body">
            <table class="table">
              <tr>
                <th style="width:50%">Client Name:</th>
                <td></td>
              </tr>
              <tr>
                <th style="width:50%">Email:</th>
                <td></td>
              </tr>
              <tr>
                <th>Country:</th>
                <td>$10.34</td>
              </tr>
              <tr>
                <th>Departing flight Number:</th>
                <td>$5.80</td>
              </tr>
              <tr>
                <th>Phone:</th>
                <td>$265.24</td>
              </tr>
              <tr>
                <th>Request Date:</th>
                <td>$265.24</td>
              </tr>
              <tr>
                <th>Number Of Adults:</th>
                <td>$265.24</td>
              </tr>
              <tr>
                <th>Number Of Kids:</th>
                <td>$265.24</td>
              </tr>
              <tr>
                <th>Gender:</th>
                <td>$265.24</td>
              </tr>
              <tr>
                <th>Driver name:</th>
                <td>$265.24</td>
              </tr>
              <tr>
                <th>Driver Phone:</th>
                <td>$265.24</td>
              </tr>
              <tr>
                <th>Amount:</th>
                <td>$265.24</td>
              </tr>
              <tr>
                <th>Status:</th>
                <td>$265.24</td>
              </tr>
            </table>
          </div>
          <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
          </div>
      </div>
  </div>
  <form name='token'>
    @csrf 
  </form>
</div>

@endsection
@section('footerscript')
<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../../plugins/jszip/jszip.min.js"></script>
<script src="../../plugins/pdfmake/pdfmake.min.js"></script>
<script src="../../plugins/pdfmake/vfs_fonts.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<script src="../../dist/js/adminlte.min.js"></script>

<script src="../../dist/js/demo.js"></script>

<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
<script>
    const sAlert = (id, status) => {
      let ulink = document.location.origin+'/super-admin/meet-and-greet'
      let _token = document.querySelector("form[name='token'] input[name='_token']").value;
      
        swal({
            title: "Are you sure?",
            text: "You want to modify this field",
            icon: "warning",
            buttons: true,
            dangerMode: true,
            })
            .then((willDelete) => {
            if (willDelete) {
                
                //update db
                $.ajax({
                  url: ulink,
                  type:"POST",
                  data:{
                    id:id,
                    status:status,
                    _token: _token
                  },
                  success:function(response){
                    swal("Product status updated sucessfully", {
                    icon: "success",
                    });
                    
                  },
                  error: function(error) {
                  console.log(error);
                  }
                });

                
            } else {
                swal("Action Teminated");
            }
            });
    }
</script>
@endsection
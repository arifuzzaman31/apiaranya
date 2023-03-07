@extends('layout.app')
@push('style')
<link href="{{ asset('admin-assets/plugins/apex/apexcharts.css')}}" rel="stylesheet" type="text/css">
<link href="{{ asset('admin-assets/assets/css/dashboard/dash_2.css')}}" rel="stylesheet" type="text/css" />
@endpush
@section('content')
<div class="row layout-top-spacing">
    @foreach($infos as $inf) 
    <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12 layout-spacing">
        <div class="widget widget-account-invoice-two">
            <div class="widget-content">
                <div class="account-box">
                    <div class="info">
                        <h5 class="">{{ $inf['title'] }}</h5>
                        <p class="inv-balance">{{ $inf['qty'] }}</p>
                    </div>
                    
                </div>
            </div>
        </div>
    </div> 
    @endforeach       
</div>
@endsection

@push('script')
<script src="{{ asset('admin-assets/plugins/apex/apexcharts.min.js')}}"></script>
@endpush
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
                    <div class="acc-action">
                        <div class="">
                            <a href="javascript:void(0);"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg></a>
                            <a href="javascript:void(0);"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg></a>
                        </div>
                        <a href="javascript:void(0);">Summary</a>
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
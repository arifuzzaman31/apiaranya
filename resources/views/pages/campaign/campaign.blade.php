@extends('layout.app')
@section('title', 'Campaign | Aranya')

@section('content')

<div id="tableHover" class="col-lg-12 col-12 layout-spacing" style="padding: 15px 0;">
    <div class="statbox widget box box-shadow">
        <div class="widget-header">
            <div class="row">
                <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                    <h4>Campaign</h4>
                    <a class="btn btn-primary mb-2 mr-3" href="{{ route('campaign.create')}}">Add New</a>
                </div>                          
            </div>
        </div>       
        <view-campaign />
    </div>
</div> 
@endsection

@push('script')
<script src="{{ asset('js/campaign.js') }}"></script>
@endpush

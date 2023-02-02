@extends('layout.app')
@section('title', 'Order | Aranya')
@push('style')
    <link href="{{ asset('admin-assets/assets/css/components/timeline/custom-timeline.css')}}" rel="stylesheet" type="text/css" />
@endpush
@section('content')
<div id="tableHover" class="col-lg-12 col-12 layout-spacing" style="padding: 15px 0;">
    <div class="statbox">
        <div class="widget-header">
            <view-order />
        </div>
    </div>
</div>    
<!-- end modal -->
@endsection

@push('script')
<script src="{{ asset('js/order.js') }}"></script>
@endpush
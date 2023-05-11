@extends('layout.app')
@section('title', 'Order Details | Aranya')
@push('style')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
@endpush
@section('content')
<div id="tableHover" class="col-lg-12 col-12 layout-spacing" style="padding: 15px 0;">
    <div class="statbox">
        <div class="widget-header">
            <detail-order :order="{{ $order }}" :details="{{ $details }}" />
        </div>
    </div>
</div>    
<!-- end modal -->
@endsection

@push('script')
<script src="{{ asset('js/order.js') }}"></script>
@endpush
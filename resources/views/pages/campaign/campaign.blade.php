@extends('layout.app')
@section('title', 'Campaign | Aranya')
@section('content')
<div id="tableHover" class="col-lg-12 col-12 layout-spacing" style="padding: 15px 0;">
    <view-campaign />
</div>    
<!-- end modal -->
@endsection

@push('script')
<script src="{{ asset('js/campaign.js') }}"></script>
@endpush

@extends('layout.app')
@section('title', 'Blog | Aranya')
@section('content')
<div id="tableHover" class="layout-spacing" style="padding: 15px 0;">
    <div class="statbox">
        <div class="widget-header">
            {{-- <story-blog /> --}}
            <h3>Under Development</h3>
        </div>
    </div>
</div>
@endsection
@push('script')
<script src="{{ asset('js/stories.js') }}"></script>
@endpush
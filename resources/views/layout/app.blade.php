<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
<title>@yield('title', "Aranya" )</title>
<link rel="icon" type="image/x-icon" href="{{ asset('admin-assets/assets/img/favicon.ico')}}" />
<!-- CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">

    @include('partials.header-assets')
        <style>
            .active_url   a  .menu_heading{
                color: #ffffff !important;
            }
        </style>
    @stack('style')
</head>
<body class="sidebar-noneoverflow">
    <!-- BEGIN LOADER -->
    <div id="load_screen"> <div class="loader"> <div class="loader-content">
        <div class="spinner-grow align-self-center"></div>
    </div></div></div>
    <!--  END LOADER -->

    <!--  BEGIN NAVBAR  -->
    @include('partials.admin_topbar')
    <!--  END NAVBAR  -->

    <!--  BEGIN MAIN CONTAINER  -->
    <div class="main-container" id="container">

        <div class="overlay"></div>
        <div class="search-overlay"></div>

        <!--  BEGIN SIDEBAR  -->
          @include('partials.admin_sidebar')
        <!--  END SIDEBAR  -->

        <!--  BEGIN CONTENT AREA  -->
        <div id="content" class="main-content">
            <router-view ></router-view>
            <div class="layout-px-spacing" id="app">
              @yield('content')
            </div>
            <div class="footer-wrapper">
                <div class="footer-section f-section-1">
                    <p class="">Copyright © {{ date('Y') }} <a target="_blank" href="https://webable.digital/">Webable Digital</a>, All rights reserved.</p>
                </div>
            </div>
        </div>
        <!--  END CONTENT AREA  -->


    </div>


    @include('partials.footer-assets')

    <script>
        $( document ).ready(function() {
            $(".active").parents(".menu").children("a").removeClass('collapsed');
            $(".active").parents(".menu").children("a").removeAttr('area-expanded');
            $(".active").parents(".menu").children("a").attr('area-expanded',true);
            $(".active").parents(".menu").children("a").attr('data-active',true);
            $(".active").parents().addClass('show');
        });
    </script>
    
    @stack('script')

</body>
</html>
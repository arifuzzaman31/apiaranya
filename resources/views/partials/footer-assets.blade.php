 <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
<script src="{{ asset('admin-assets/assets/js/libs/jquery-3.1.1.min.js')}}"></script>
<script src="{{ asset('admin-assets/bootstrap/js/popper.min.js')}}"></script>
<script src="{{ asset('admin-assets/bootstrap/js/bootstrap.min.js')}}"></script>
<script src="{{ asset('admin-assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js')}}"></script>
<script src="{{ asset('admin-assets/assets/js/app.js')}}"></script>

<script>
    var baseUrl = "{{ url('/') }}"+'/admin/';
    $(document).ready(function() {
        App.init(); 
    });
</script>
<script src="{{ asset('admin-assets/assets/js/custom.js')}}"></script>
<!-- END GLOBAL MANDATORY SCRIPTS -->

<!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
<script src="{{ asset('admin-assets/plugins/highlight/highlight.pack.js')}}"></script>
<script src="{{ asset('admin-assets/assets/js/scrollspyNav.js')}}"></script>
    <script>
        checkall('todoAll', 'todochkbox');
        $('[data-toggle="tooltip"]').tooltip()
    </script>
<script src="{{ asset('admin-assets/plugins/apex/apexcharts.min.js')}}"></script>
<script src="{{ asset('admin-assets/assets/js/dashboard/dash_1.js')}}"></script>
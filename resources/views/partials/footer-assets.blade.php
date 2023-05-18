 <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
<script src="{{ asset('admin-assets/assets/js/libs/jquery-3.1.1.min.js')}}"></script>
<script src="{{ asset('admin-assets/bootstrap/js/popper.min.js')}}"></script>
<script src="{{ asset('admin-assets/bootstrap/js/bootstrap.min.js')}}"></script>
<script src="{{ asset('admin-assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js')}}"></script>
<script src="{{ asset('admin-assets/assets/js/app.js')}}"></script>
<script src="https://widget.cloudinary.com/v2.0/global/all.js" type="text/javascript"></script>
<script>
    var baseUrl = "{{ url('/') }}"+'/admin/';
    var clName = "diyc1dizi";
    var clPreset = "webable";
    window.userPermission = "{{ auth()->guard('admin')->user()->role->role_permission->pluck('slug')  ?? [] }}";
    $(document).ready(function() {
        App.init(); 
    });
</script>
<script src="{{ asset('admin-assets/assets/js/custom.js')}}"></script>
<!-- END GLOBAL MANDATORY SCRIPTS -->

<!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
<script src="{{ asset('admin-assets/assets/js/scrollspyNav.js')}}"></script>
    <script>
        checkall('todoAll', 'todochkbox');
        $('[data-toggle="tooltip"]').tooltip()
    </script>
<script src="{{ asset('admin-assets/plugins/apex/apexcharts.min.js')}}"></script>
<script src="{{ asset('admin-assets/assets/js/dashboard/dash_1.js')}}"></script>
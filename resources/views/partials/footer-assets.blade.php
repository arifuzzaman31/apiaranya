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

    function removeErrorMsg(){
        $(".print-error-msg").find("ul").html('');
        $(".print-error-msg").css('display','none');
    }

    function printErrorMsg (msg) {
            $(".print-error-msg").find("ul").html('');
            $(".print-error-msg").css('display','block');
            $.each( msg, function( key, value ) {
                $(".print-error-msg").find("ul").append('<li>'+value+'</li>');
            });
        }

        function alertMessage(data){
            const toast = swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 2000,
                padding: '2em'
            });

            toast({
                type: data.status,
                title: data.message,
                padding: '2em',
            })
        }


</script>
<script src="{{ asset('admin-assets/assets/js/custom.js')}}"></script>
<!-- END GLOBAL MANDATORY SCRIPTS -->

<!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
<script src="{{ asset('admin-assets/plugins/apex/apexcharts.min.js')}}"></script>
<script src="{{ asset('admin-assets/assets/js/dashboard/dash_1.js')}}"></script>
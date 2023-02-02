@extends('layout.app')
@section('title', 'Category | Aranya')
@section('content')
<div id="tableHover" class="col-lg-12 col-12 layout-spacing" style="padding: 25px 0;">
    <div class="statbox widget box box-shadow">
        <div class="widget-header">
            <div class="row">
                <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                    <h4>Category</h4>
                    <!-- <a class="btn btn-outline-primary" href="{{ route('add-category') }}">Add New</a> -->
                    <div class="text-center">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#rotateleftModal">
                        Add New
                        </button>
                    </div>
                </div>                 
            </div>
        </div>

        
            <welcome />
        
        <!-- <div class="widget-content widget-content-area">
            <div class="table-responsive">
                <table class="table table-bordered table-hover mb-4">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Date</th>
                            <th>Sale</th>
                            <th class="text-center">Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Shaun Park</td>
                            <td>10/08/2020</td>
                            <td>320</td>
                            <td class="text-center"><span class="text-success">Complete</span></td>
                            <td class="text-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 icon"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></td>
                        </tr>
                        <tr>
                            <td> Alma Clarke</td>
                            <td>11/08/2020</td>
                            <td>420</td>
                            <td class="text-center"><span class="text-secondary">Pending</span></td>
                            <td class="text-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 icon"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></td>
                        </tr>
                        <tr>
                            <td>Xavier</td>
                            <td>12/08/2020</td>
                            <td>130</td>
                            <td class="text-center"><span class="text-info">In progress</span></td>
                            <td class="text-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 icon"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></td>
                        </tr>
                        <tr>
                            <td>Vincent Carpenter</td>
                            <td>13/08/2020</td>
                            <td>260</td>
                            <td class="text-center"><span class="text-danger">Canceled</span></td>
                            <td class="text-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 icon"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div> -->
    </div>
</div>    


<!-- Modal -->
<div id="rotateleftModal" class="modal animated fadeInRight custo-fadeInRight show" role="dialog" aria-modal="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <form data-action="{{ route('category.store') }}" method="POST" enctype="multipart/form-data" id="add-user-form">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-12">
                    <div class="alert alert-danger print-error-msg" style="display:none">
                        <ul></ul>
                    </div>
                        <div class="statbox box box-shadow" style="position: relative;border: 1px solid #00000021;background: #fff;">
                            <div class="widget-content widget-content-area">
                                    <div class="form-group">
                                        <label for="category_name">Category Name</label>
                                        <input type="text" class="form-control" name="category_name" id="category_name" placeholder="Category Name">
                                    </div>
                                   
                                    <div class="form-group mt-3">
                                        <label for="cat_picture">Category file</label>
                                        <input type="file" name="category_image" class="form-control-file" id="cat_picture">
                                    </div>
                                    
                                   @php
                                        $parent_category = getParentCategory();
                                   @endphp
                                    <div class="form-group">
                                        <label for="parent_cat">Parent Category</label>
                                        <select id="parent_cat" name="parent_category" class="form-control">
                                            <option selected>Choose One</option>
                                            @forelse($parent_category as $value)
                                                <option value="{{$value}}">{{ Str::upper($value) }}</option>
                                                @empty
                                                <p>No value</p>
                                            @endforelse
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="video_link">Video Link</label>
                                        <input type="text" name="video_link" class="form-control" id="video_link" placeholder="Category Video Link">
                                    </div>
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <textarea class="form-control" name="description" id="description" rows="3"></textarea>
                                    </div>
                                  
                                    <div class="col-lg-3 col-md-3 col-sm-4 col-6">
                                    <label for="cat-status">Status</label>
                                            <label class="switch s-icons s-outline  s-outline-success  mb-4 mr-2">
                                                <input name="status" type="checkbox" checked="" id="cat-status">
                                                <span class="slider round"></span>
                                            </label>
                                        </div>
                             
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12"></i> Discard</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
            </form>
        </div>
    </div>
</div>
<!-- end modal -->
@endsection

@push('script')

<script src="{{ asset('js/app.js') }}"></script>
<!-- <script>
    $(document).ready(function(){

        var form = '#add-user-form';

        $(form).on('submit', function(event){
            event.preventDefault();
            
            var url = $(this).attr('data-action');

            $.ajax({
                url: url,
                method: 'POST',
                data: new FormData(this),
                dataType: 'JSON',
                contentType: false,
                cache: false,
                processData: false,
                success:function(response)
                {
                    alertMessage(response)
                    console.log(response)
                    if($.isEmptyObject(response.error)){
                        console.log(response.message);
                    }else{
                        printErrorMsg(response.error);
                    }

                    $(form).trigger("reset");
                },
                error: function(response) {
                    console.log(response)
                }
            });
        });

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

    });
</script> -->
@endpush
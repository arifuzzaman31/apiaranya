<script>
import { ref,reactive,computed, onMounted } from 'vue';
import axios from 'axios';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
export default {
    components:{
        Bootstrap4Pagination
    },
    setup(){
      
        const sizes  = ref([]);
        const errors  = ref([]);
        const size_id  = ref('');
        const form = reactive({
            size_name: '',
            status: true
        });
        const toastMixin = Swal.mixin({
            toast: true,
            icon: 'success',
            title: 'General Title',
            animation: false,
            position: 'top-right',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        });

        const fireToast = async(data) =>{
            toastMixin.fire({
                icon: data.status,
                animation: true,
                title: data.message
            });
        }

        const getSize = async(page = 1) =>{
            let res = await axios.get(baseUrl+`sizes/create?page=${page}`);
            sizes.value = res.data;
            // console.log(sizes.value)
        }

        const deleteSize = async(id)=>{
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                if (result.isConfirmed) {
                    axios.delete(baseUrl+`sizes/${id}`).then(
                        response => {
                            getSize()
                            fireToast(response.data)
                        }
                    ). catch(error => {
                    
                    })
                }
            })

        }

        const storeSize = async() =>{
           try{
                await axios.post('sizes',form).then(
                    response => {
                        fireToast(response.data)
                        $("#sizeModal").modal('hide');
                        formReset()
                        getSize()
                    }
                ). catch(e => {
                   if(e.response.status == 422){
                        errors.value = e.response.data.errors;
                    }
                })
            }catch(e){
                if(e.response.status == 422){
                    errors.value = e.response.data.errors;
                }
            }
        }

        const updateSize = async() =>{
           try{
                await axios.patch('sizes/' + size_id.value,form).then(
                    response => {
                        $("#sizeModal").modal('hide');
                        fireToast(response.data)
                        getSize()
                        formReset()
                    }
                ). catch(e => {
                   if(e.response.status == 422){
                        errors.value = e.response.data.errors;
                    }
                })
            }catch(e){
                if(e.response.status == 422){
                    var data = [];
                    for(const key in e.response.data.errors){
                        data.push(e.response.data.errors[key][0]);
                    }
                    errors.value = data;
                }
            }
        }

        const editSize = (size) => {
            size_id.value = size.id;
            form.size_name = size.size_name;
            form.status = size.status;
        }

        const formReset = () =>{
            errors.value = []
            size_id.value = '';
            form.size_name = '';
            form.status = true;
        }
        
        onMounted(getSize());
        const showPermission = computed(() => window.userPermission)

        return {
            sizes,
            form,
            size_id,
            getSize,
            editSize,
            updateSize,
            formReset,
            storeSize,
            deleteSize,
            errors,
            showPermission
        }
    }
}
</script>

<template>
    <div class="row">
        <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
            <div class="statbox widget box box-shadow">
                <div class="widget-header">
                    <div class="row">
                        <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                            <h4>Size</h4>
                            <button class="btn btn-info-a mb-2 mr-3" v-if="showPermission.includes('attribute-create')" data-toggle="modal" data-target="#sizeModal" @click="formReset">Add New</button>
                        </div>                          
                    </div>
                </div>       
                <!-- <div class="widget-content widget-content-area"> -->
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Size Name</th>
                                    <th class="text-center">Status</th>
                                    <th  class="text-center" v-if="showPermission.includes('attribute-edit') || showPermission.includes('attribute-delete')">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <template v-for="(size,index) in sizes.data" :key="size.id">
                                    <tr>
                                        <td>{{ index+1 }}</td>
                                        <td>{{ size.size_name }}</td>
                                        <td class="text-center">
                                            <label class="switch s-success  mb-4 mx-5">
                                                <input type="checkbox" :checked="size.status == 1 ? true : false" disabled>
                                                <span class="slider round"></span>

                                            </label>
                                        </td>
                                        <td class="text-center"
                                        v-if="showPermission.includes('attribute-edit') || showPermission.includes('attribute-delete')">
                                            <button type="button" v-if="showPermission.includes('attribute-edit')" class="btn btn-sm btn-info-a mx-2 my-2" data-toggle="modal" data-target="#sizeModal" @click="editSize(size)">Edit</button>
                                            <button type="button" v-if="showPermission.includes('attribute-delete')" class="btn btn-sm btn-delete mx-2" @click="deleteSize(size.id)">Delete</button>
                                        </td>
                                    </tr>					
                                </template>
                            </tbody>
                        </table>
                            <Bootstrap4Pagination
                                :data="sizes"
                                @pagination-change-page="getSize"
                            />
                    </div>

             
            </div>
        </div>
        <div id="sizeModal" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Size</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" @click="formReset">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>
                    <div class="modal-body">
                        
                        <!-- <div class="widget-content widget-content-area"> -->
                            <form>
                                <div class="form-group">
                                    <label for="size_name">Size Name</label>
                                    <input type="text" class="form-control" v-model="form.size_name" id="size_name" placeholder="Size Name">
                                    <span
                                        v-if="errors.hasOwnProperty('size_name')"
                                        class="text-danger"
                                    >
                                        {{ errors.size_name[0] }}
                                    </span>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-4 col-6">
                                <label for="siz-status">Status</label>
                                        <label class="switch s-icons s-outline  s-outline-success  mb-4 mr-2">
                                            <input v-model="form.status" type="checkbox" :checked="form.status" id="siz-status">
                                            <span class="slider round"></span>
                                        </label>
                                </div>
                            
                                <div class="modal-footer md-button">
                                    <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12" @click="formReset"></i> Discard</button>
            
                                    <button v-if="size_id == ''" type="button" class="btn btn-info-a" @click="storeSize">Submit</button>

                                    <button v-else type="button" class="btn btn-primary" @click="updateSize">Update</button>
                                </div>
                            </form>
                        <!-- </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
.btn-info-a{
color:#fff;
background-color: #3c5676!important;
border-color: #3c5676!important;
}
.btn-info-a:hover{
background-color: #3c5676;
border-color: #3c5676;
}
.btn-delete {
    color: #000 !important;
    background-color: #ffffff;
    border-color: #3c5676;
}
.btn-delete:hover {
    color: #fff !important;
    background-color:#3c5676!important;
    border-color: #3c5676!important;
}

</style>
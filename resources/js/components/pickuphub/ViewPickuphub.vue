<script>
import { ref,reactive,computed, onMounted } from 'vue';
import axios from 'axios';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
export default {
    components:{
        Bootstrap4Pagination
    },
    props:['districtlist'],
    setup(){

        const pickuphub  = ref([]);
        const thanaList  = ref([]);
        const errors  = ref([]);
        const pickup_id  = ref('');
        const form = reactive({
            hub_name: '',
            hub_code: '',
            contact_person: '',
            pick_division: '',
            pick_district: '',
            pick_thana: '',
            pick_union: '',
            pick_mobile: '',
            email: '',
            type: 'warehouse',
            hub_address: '',
            status: 1
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

        const getPickupHub = async(page = 1) =>{
            let res = await axios.get(baseUrl+`pickuphub/create?page=${page}`);
            pickuphub.value = res.data;
            // console.log(pickuphub.value)
        }

        const setThana = async(e) =>{
            console.log(e)
        }

        const deleteHub = async(id)=>{
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
                    axios.delete(baseUrl+`pickuphub/${id}`).then(
                        response => {
                            getPickupHub()
                            fireToast(response.data)
                        }
                    ). catch(error => {

                    })
                }
            })

        }
        const getAreaByDist = async() =>{

           try{
                await axios.post('https://backoffice.ecourier.com.bd/api/area-by-district',{'district':form.pick_district},{
                        headers: {
                            'USER-ID': 'H7546',
                            'API-KEY': 'frz3',
                            'API-SECRET': '4vqsZ',
                            'Content-Type': 'application/json'
                        }
                    }).then(
                    response => {
                        thanaList.value = response.data
                    }
                ). catch(e => {
                    console.log(e.response)

                })
            }catch(e){
                console.log(e.response)
            }
        }

        const storePickupHub = async() =>{
           try{
                await axios.post('pickuphub',form).then(
                    response => {
                        fireToast(response.data)
                        $("#PickuphubModal").modal('hide');
                        formReset()
                        getPickupHub()
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

        const updatePickupHub = async() =>{
           try{
                await axios.patch('pickuphub/' + pickup_id.value,form).then(
                    response => {
                        $("#PickuphubModal").modal('hide');
                        fireToast(response.data)
                        getPickupHub()
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

        const editPickupHub = (pickup) => {
            pickup_id.value = pickup.id;
            form.hub_name = pickup.hub_name;
            form.hub_code = pickup.hub_code;
            form.contact_person = pickup.contact_person;
            form.pick_division = pickup.pick_division;
            form.pick_district = pickup.pick_district;
            form.pick_thana = pickup.pick_thana+'-'+pickup.hub_code;
            form.pick_union = pickup.pick_union;
            form.pick_mobile = pickup.pick_mobile;
            form.email = pickup.email;
            form.type = pickup.type;
            form.hub_address = pickup.hub_address;
            form.status = pickup.status;
            getAreaByDist()
        }

        const formReset = () =>{
            errors.value = []
            pickup_id.value = '';
            form.hub_name = '';
            form.hub_code = '';
            form.contact_person = '';
            form.pick_division = '';
            form.pick_district = '';
            form.pick_thana = '';
            form.pick_union = '';
            form.pick_mobile = '';
            form.email = '';
            form.type = 'warehouse';
            form.hub_address = '';
            form.status = 1;
        }

        onMounted(() => {
            getPickupHub();
        });
        const showPermission = computed(() => window.userPermission)

        return {
            pickuphub,
            form,
            pickup_id,
            thanaList,
            getPickupHub,
            editPickupHub,
            updatePickupHub,
            formReset,
            storePickupHub,
            deleteHub,
            getAreaByDist,
            setThana,
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
                            <h4>Pickup Point</h4>
                            <button class="btn btn-info-a mb-2 mr-3" v-if="showPermission.includes('attribute-create')" data-toggle="modal" data-target="#PickuphubModal" @click="formReset">Add New</button>
                        </div>
                    </div>
                </div>
                <div class="widget-content">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Hub Name</th>
                                    <th>Hub Code</th>
                                    <th>contact person</th>
                                    <th>district</th>
                                    <th>ZIP code</th>
                                    <th>mobile</th>
                                    <th>Type</th>
                                    <th>Address</th>
                                    <th class="text-center">Status</th>
                                    <th v-if="showPermission.includes('attribute-edit') || showPermission.includes('attribute-delete')">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <template v-for="(pickup,index) in pickuphub.data" :key="pickup.id">
                                    <tr>
                                        <td>{{ index+1 }}</td>
                                        <td>{{ pickup.hub_name }}</td>
                                        <td>{{ pickup.hub_code }}</td>
                                        <td>{{ pickup.contact_person }}</td>
                                        <td>{{ pickup.pick_district }}</td>
                                        <td>{{ pickup.pick_union }}</td>
                                        <td>{{ pickup.pick_mobile }}</td>
                                        <td>{{ pickup.type }}</td>
                                        <td style="width: 20%;">{{ pickup.hub_address }}</td>
                                           <td class="text-center">
                                <span
                                    class="badge rounded-pill"
                                    :class="
                                      pickup.status == 1
                                            ? 'alert-primary'
                                            : 'alert-danger'
                                    "
                                    >{{
                                        pickup.status ? "Active" : "Deactive"
                                    }}</span
                                >
                            </td>

                                        <td v-if="showPermission.includes('attribute-edit') || showPermission.includes('attribute-delete')">
                                            <button type="button" v-if="showPermission.includes('attribute-edit')" class="btn btn-sm btn-info-a" data-toggle="modal" data-target="#PickuphubModal" @click="editPickupHub(pickup)">Edit</button>
                                            <button type="button" v-if="showPermission.includes('attribute-delete')" class="btn btn-sm btn-delete ml-2" @click="deleteHub(pickup.id)">Delete</button>
                                        </td>
                                    </tr>
                                </template>
                            </tbody>
                        </table>
                            <Bootstrap4Pagination
                                :data="pickuphub"
                                @pagination-change-page="getPickupHub"
                            />
                    </div>

                </div>
            </div>
        </div>
        <div id="PickuphubModal" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
            <div class="modal-dialog modal-xl">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Pickup Point</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" @click="formReset">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="widget-content">
                            <form>
                                <div class="form-row">
                                <div class="col-md-4 col-12 form-group">
                                    <label for="hub_name">Hub Name *</label>
                                    <input type="text" class="form-control" v-model="form.hub_name" id="hub_name" placeholder="Hub Name">
                                    <span
                                        v-if="errors.hasOwnProperty('hub_name')"
                                        class="text-danger"
                                    >
                                        {{ errors.hub_name[0] }}
                                    </span>
                                </div>

                                <div class="col-md-4 col-12 form-group">
                                    <label for="personname">Contact Person Name *</label>
                                    <input type="text" class="form-control" v-model="form.contact_person" id="personname" placeholder="Person Name">
                                    <span
                                        v-if="errors.hasOwnProperty('contact_person')"
                                        class="text-danger"
                                    >
                                        {{ errors.contact_person[0] }}
                                    </span>
                                </div>
                                <div class="col-md-4 col-12 form-group">
                                    <label for="pick_mobile">Person Phone *</label>
                                    <input type="text" class="form-control" v-model="form.pick_mobile" id="pick_mobile" placeholder="Person Phone">
                                    <span
                                        v-if="errors.hasOwnProperty('pick_mobile')"
                                        class="text-danger"
                                    >
                                        {{ errors.pick_mobile[0] }}
                                    </span>
                                </div>
                                <div class="col-md-4 col-12 form-group">
                                    <label for="division-pick">Division *</label>
                                    <input type="text" class="form-control" v-model="form.pick_division" id="division-pick" placeholder="Pick Division">
                                    <span
                                        v-if="errors.hasOwnProperty('pick_division')"
                                        class="text-danger"
                                    >
                                        {{ errors.pick_division[0] }}
                                    </span>
                                </div>
                                <div class="col-md-4 col-12 form-group">
                                    <label for="pick_district">Pick District *</label>
                                    <select class="form-control" v-model="form.pick_district" @change="getAreaByDist()">
                                        <option value="">Select District</option>
                                        <option v-for="dist in districtlist" :value="dist.value">{{dist.name}}</option>
                                    </select>

                                    <span
                                        v-if="errors.hasOwnProperty('pick_district')"
                                        class="text-danger"
                                    >
                                        {{ errors.pick_district[0] }}
                                    </span>
                                </div>
                                <div class="col-md-4 col-12 form-group">
                                    <label for="pick_thana">Pick Thana *</label>
                                    <select class="form-control" v-model="form.pick_thana">
                                        <option value="">Select Thana</option>
                                        <option v-for="thana in thanaList.data" :value="thana.name+'-'+thana.hub_id">{{thana.name}} - ({{thana.hub_id}})</option>
                                    </select>
                                    <span
                                        v-if="errors.hasOwnProperty('pick_thana')"
                                        class="text-danger"
                                    >
                                        {{ errors.pick_thana[0] }}
                                    </span>
                                </div>

                                <div class="col-md-4 col-12 form-group">
                                    <label for="pick_union">ZIP Code *</label>
                                    <input type="text" class="form-control" v-model="form.pick_union" id="pick_union" placeholder="ZIP Code">
                                    <span
                                        v-if="errors.hasOwnProperty('pick_union')"
                                        class="text-danger"
                                    >
                                        {{ errors.pick_union[0] }}
                                    </span>
                                </div>
                                <div class="col-md-4 col-12 form-group">
                                    <label for="type_hub">Hub Type</label>
                                    <select class="form-control" v-model="form.type">
                                        <option value="store">Store</option>
                                        <option value="warehouse">Warehouse</option>
                                    </select>
                                    <span
                                        v-if="errors.hasOwnProperty('type')"
                                        class="text-danger"
                                    >
                                        {{ errors.type[0] }}
                                    </span>
                                </div>
                                <div class="col-md-4 col-12 form-group">
                                    <label for="Status">Status</label>
                                    <select class="form-control" v-model="form.status">
                                        <option value="1">Active</option>
                                        <option value="0">Inactive</option>
                                    </select>
                                    <span
                                        v-if="errors.hasOwnProperty('type')"
                                        class="text-danger"
                                    >
                                        {{ errors.type[0] }}
                                    </span>
                                </div>
                                <div class="col-md-4 col-12 form-group">
                                    <label for="hub_Email">Email</label>
                                    <input type="text" class="form-control" v-model="form.email" id="hub_Email" placeholder="Email">
                                    <span
                                        v-if="errors.hasOwnProperty('email')"
                                        class="text-danger"
                                    >
                                        {{ errors.email[0] }}
                                    </span>
                                </div>
                                <div class="col-md-8 col-12 form-group">
                                    <label for="hub_address">Hub Address *</label>
                                    <input type="text" class="form-control" v-model="form.hub_address" id="hub_address" placeholder="Hub Address">
                                    <span
                                        v-if="errors.hasOwnProperty('hub_address')"
                                        class="text-danger"
                                    >
                                        {{ errors.hub_address[0] }}
                                    </span>
                                </div>

                            </div>
                            <div class="modal-footer md-button">
                                <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12" @click="formReset"></i> Discard</button>

                                <button v-if="pickup_id == ''" type="button" class="btn btn-info-a" @click="storePickupHub">Submit</button>

                                <button v-else type="button" class="btn btn-primary" @click="updatePickupHub">Update</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
.btn-info-a, .btn-view{
color:#fff;
background-color: #3c5676!important;
border-color: #3c5676!important;
}
.btn-info-a:hover, .btn-view:hover{
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

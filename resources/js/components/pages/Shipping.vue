<script>
import axios from 'axios';
import Mixin from '../../mixer';
import country from '../../country.js';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
export default {
    name: 'shipping',
    mixins: [Mixin],
    components:{
        Bootstrap4Pagination
    },

    data(){
        return {
            shipping_infos: [],
            order_details: [],
            shipment_info: [],
            validation_error : {},
            order_id: '',
            single_order: null,
            order_status_id: '',
            search: '',
            filterdata : {
                refund_status: ''
            },
            countries: null,
            charge : {
                id: '',
                country_name: '',
                inside_city: 0,
                outside_city: 0,
                status: 1
            },
            url: baseUrl
        }
    },

    methods: {
        getShippingData(page = 1){
            axios.get(baseUrl+`get-shipping-data?page=${page}&per_page=10&keyword=${this.search}`)
            .then(result => {
                this.shipping_infos = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });  
        },

        getSearch(){
            if(this.search.length < 3) return ;
            this.getShippingData()
        },

        getOrderdetail(id){
            axios.get(baseUrl+`orders-details/${id}`)
            .then(result => {
                this.order_details = result.data.details;
                this.shipment_info = result.data.order;
            })
            .catch(errors => {
                console.log(errors);
            });  
        },

        editShipping(item){
            this.formReset()
            this.charge.id = item.id
            this.charge.country_name = item.country_name
            this.charge.inside_city = item.insidecity_shipping_charge
            this.charge.outside_city = item.outsidecity_shipping_charge
            this.charge.status = item.status
            $("#addShippingModal").modal('show');
        },

        addShppingCharge(){
            axios.post(baseUrl+`add-shipping-charge`,this.charge).then(
                response => {
                    $("#addShippingModal").modal('hide');
                    this.getShippingData()
                    this.successMessage(response.data)
                }
            ). catch(error => {
                if(error.response.status == 422){
                        this.validation_error = error.response.data.errors;
                    }
            })
        },

        deleteShipping(id){
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
                    axios.delete(baseUrl+`remove-shipping-data/${id}`).then(
                        response => {
                            this.getShippingData()
                            this.successMessage(response.data)
                        }
                    ). catch(error => {
                        this.validationError()
                    })
                }
            })

        },


        formReset(){
            this.validation_error = {};
            this.search = '';
            this.charge = {
                id: '',
                country_name: '',
                inside_city: 0,
                outside_city: 0,
                status: 1
            }
            
        },

        filterClear(){
            this.search = ''
            this.filterdata = {
                refund_state: ''
            }
            this.getShippingData()
        },

    },

    mounted(){
        this.countries = country
        this.getShippingData()
    },
    computed: {
        showPermission() {
            return window.userPermission;
        }
    }
}
</script>

<template>
    <div class="row">
        <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
            <div class="statbox">
                <div class="widget-header">
                    <div class="row">
                        <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                            <h4>Shipping Charge</h4>
                            <button class="btn btn-primary mb-2 mr-3" v-if="showPermission.includes('add-shipping')" data-toggle="modal" data-target="#addShippingModal" @click="formReset">Add New</button>
                        </div>                          
                    </div>
                </div>       
                <div class="widget-content widget-content-area">
                    <div class="row mb-2">
                        <div class="col-md-3 col-lg-3 col-12">
                            <input id="search" @keyup="getSearch()" placeholder="Search By Country Name" type="text" class="form-control"  v-model="search" />
                        </div>
                        
                        <div class="col-md-2 col-lg-2 col-12">
                            <button type="button" class="btn btn-danger" @click="filterClear()">CLEAR</button>
                        </div>
                    </div>
           
                    <div class="table-responsive" style="min-height: 60vh;">
                        <table class="table table-bordered table-hover mb-4">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Country</th>
                                    <th>Inside City</th>
                                    <th>Outside city</th>
                                    <th>status</th>
                                    <th v-if="showPermission.includes('delete-shipping') && showPermission.includes('edit-shipping')" class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody v-if="shipping_infos.data && shipping_infos.data.length > 0">
                                <template v-for="(item,index) in shipping_infos.data" :key="index">
                                    <tr>
                                        <td>{{ index+1 }}</td>
                                        <td>{{ item.country_name }}</td>
                                        <td>{{ item.insidecity_shipping_charge }}</td>
                                        <td>{{ item.outsidecity_shipping_charge }}</td>
                                        <td>{{ item.status == 1 ? 'Active' : 'Deactive' }}</td>
                                        <td class="text-center" v-if="showPermission.includes('delete-shipping') && showPermission.includes('edit-shipping')">
                                            <button type="button" v-if="showPermission.includes('edit-shipping')" class="btn btn-sm btn-info" @click="editShipping(item)">Edit</button>
                                            <button type="button" v-if="showPermission.includes('delete-shipping')" class="btn btn-sm btn-danger ml-2" @click="deleteShipping(item.id)">Delete</button>
                                        </td>
                                    </tr>					
                                </template>
                            </tbody>
                            <tbody v-else class="text-center mt-3">
                                <tr>
                                    <td colspan="7">No Data Found</td>
                                </tr>
                                 
                            </tbody>
                        </table>
                            <Bootstrap4Pagination
                                :data="shipping_infos"
                                @pagination-change-page="getShippingData"
                            />
                    </div>
                   
                </div>
            </div>
        </div>

        <div id="addShippingModal" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Shipping Charge</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"  @click="formReset">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="widget-content widget-content-area">
                            <form>
                                <div>
                                    <div class="form-group">
                                        <label for="">Select Country</label>
                                        <select class="form-control" v-model="charge.country_name" :disabled="charge.id != ''">
                                            <option value="">Select Action</option>
                                            
                                            <option :value="cunt.name" v-for="cunt in countries" :key="cunt.code">{{ cunt.name }} ({{ cunt.code }})</option>
                                         
                                        </select>
                                        <span
                                        v-if="validation_error.hasOwnProperty('country_name')"
                                        class="text-danger"
                                    >
                                        {{ validation_error.country_name[0] }}
                                    </span>
                                    </div>
                                    <div class="form-group">
                                        <label for="inside_city">Amount</label>
                                        <input type="number" v-model="charge.inside_city" class="form-control" id="inside_city" />
                                    </div>
                                    <!-- <div class="form-group">
                                        <label for="outside_city">Amount (Outside City)</label>
                                        <input type="number" v-model="charge.outside_city" class="form-control" id="outside_city" />
                                    </div> -->
                                    <div class="col-lg-3 col-md-3 col-sm-4 col-6">
                                        <label class="switch s-icons s-outline  s-outline-success  mb-4 mr-2">
                                            <input v-model="charge.status" type="checkbox" :checked="charge.status" id="charge-status">
                                            <span class="slider round"></span>
                                        </label>
                                    </div>
                                    <div class="modal-footer md-button">
                                        <button class="btn btn-default" data-dismiss="modal"><i class="flaticon-cancel-12" @click="formReset"></i>Discard</button>
                                        <button type="button" @click.prevent="addShppingCharge()" v-if="charge.id == ''" class="btn btn-primary">Add</button>
                                        <button type="button" @click.prevent="updateShppingCharge()" v-else class="btn btn-primary">Update</button>
                                    </div>
                                </div>  
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
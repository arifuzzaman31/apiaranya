<script>
import axios from 'axios';
import Mixin from '../../mixer';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
export default {
    name: 'order',
    mixins: [Mixin],
    components:{
        Bootstrap4Pagination
    },

    data(){
        return {
            form: {
                progress_detail: [],
                status: true
            },
            orders: [],
            order_details: [],
            errors: [],
            order_id: '',
            single_order: null,
            order_status_id: '',
            search: '',
            filterdata : {
                order_state: '',
                status: ''
            },
            url: baseUrl
        }
    },

    methods: {
        getOrder(page = 1){
            axios.get(baseUrl+`get-order?page=${page}&per_page=10&keyword=${this.search}&byposition=${this.filterdata.order_state}&status=${this.filterdata.status}`)
            .then(result => {
                this.orders = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });  
        },

        getSearch(){
            if(this.search.length < 3) return ;
            this.getOrder()
        },

        cancelOrder(id){
            Swal.fire({
                title: 'Are you sure?',
                text: "Order status will be Update!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Do it!'
                }).then((result) => {
                if (result.isConfirmed) {
                    axios.get(baseUrl+'order/cancel/'+id).then(
                        response => {
                            this.formReset()
                            this.getOrder()
                            this.successMessage(response.data)
                        }
                    ). catch(error => {
                        console.log(error)
                    })
                }
            })
        },

        updateStatus(order){
            if(this.order_status_id >= order){
                alert('Click Next Step')
                return false
            }
            Swal.fire({
                title: 'Are you sure?',
                text: "Order status will be Update!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Do it!'
                }).then((result) => {
                if (result.isConfirmed) {
                    axios.post(baseUrl+`update/order/status`,{'order_status_id':this.order_status_id,'id':this.order_id}).then(
                        response => {
                            $("#orderDetailModal").modal('hide');
                            this.formReset()
                            this.getOrder()
                            this.successMessage(response.data)
                        }
                    ). catch(error => {
                    
                    })
                }
            })
            console.log(order)
        },

        deleteOrder(id){
            Swal.fire({
                title: 'Are you sure?',
                text: "Order status will be Update!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Do it!'
                }).then((result) => {
                if (result.isConfirmed) {
                    axios.delete(baseUrl+'order/'+id).then(
                        response => {
                            this.formReset()
                            this.getOrder()
                            this.successMessage(response.data)
                        }
                    ). catch(error => {
                        console.log(error)
                    })
                }
            })
        },

        orderDetailModal(order) {
            this.order_id = order.id
            this.single_order = order
            this.order_status_id = order.order_position
            const orderdata = async() => await axios.get('orders-details/' + order.id);
            this.order_details = orderdata.data
            $("#orderDetailModal").modal('show');
        },

        formReset(){
            this.errors = '';
            this.search = '';
            this.form = {
                progress_detail : [],
                status : true
            }
            
        },

        filterClear(){
            this.search = ''
            this.filterdata = {
                status : '',
                order_state: ''
            }
            this.getOrder()
        },

    },

    mounted(){
        this.getOrder()
    }
}
</script>
<style scoped>
#bar-progress {
    width: 100%;
    display: inline-flex;
    justify-content: center;
}

#bar-progress .step {
    display: inline-block;
}

#bar-progress .step .number-container {
    display: inline-block;
    border: solid 1px #000;
    border-radius: 50%;
    width: 24px;
    height: 24px;
}

#bar-progress .step.step-active .number-container {
    background-color: #000;
}

#bar-progress .step .number-container .number {
    font-weight: 700;
    font-size: .8em;
    line-height: 1.85em;
    display: block;
    text-align: center;
}

#bar-progress .step.step-active .number-container .number {
    color: white;
}

#bar-progress .step h5 {
    display: inline;
    font-weight: 100;
    font-size: .8em;
    margin-left: 10px;
    text-transform: uppercase;
}

#bar-progress .seperator {
    display: block;
    width: 20px;
    height: 1px;
    background-color: rgba(0, 0, 0, .2);
    margin: auto 20px;
}
</style>
<template>
    <div class="row">
        <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
            <div class="statbox">
                <div class="widget-header">
                    <div class="row">
                        <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                            <h4>Order</h4>
                        </div>                          
                    </div>
                </div>       
                <div class="widget-content widget-content-area">
                    <div class="row mb-2">
                        <div class="col-md-3 col-lg-3 col-12">
                            <input id="search" @keyup="getSearch()" placeholder="Search By OrderID" type="text" class="form-control"  v-model="search" />
                        </div>
                      
                        <div class="col-md-3 col-lg-3 col-12">
                            <select id="product-camp" class="form-control" @change="getOrder()" v-model="filterdata.order_state">
                                <option selected="" value="">Choose...</option>
                                <option value="0">Pending</option>
                                <option value="1">Processing</option>
                                <option value="2">On Delivery</option>
                                <option value="3">Deliverd</option>
                            </select>
                        </div>

                        <div class="col-md-3 col-lg-3 col-12">
                            <select id="product-camp" class="form-control" @change="getOrder()" v-model="filterdata.status">
                                <option selected="" value="">Choose...</option>
                                <option value="1">Active</option>
                                <option value="0">Cancel</option>
                            </select>
                        </div>
                        
                        <div class="col-md-2 col-lg-3 col-12">
                            <button type="button" class="btn btn-danger" @click="filterClear()">CLEAR</button>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>OrderID</th>
                                    <th>Customer</th>
                                    <th>Price</th>
                                    <th>Shipping</th>
                                    <th>PaymentBy</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody v-if="orders.data && orders.data.length > 0">
                                <template v-for="(order,index) in orders.data" :key="order.id">
                                    <tr>
                                        <td>{{ index+1 }}</td>
                                        <td>{{ order.order_id }}</td>
                                        <td>{{ order.user.name }}</td>
                                        <td>{{ order.total_price }}</td>
                                        <td>{{ order.shipping_method }}</td>
                                        <td>{{ order.payment_method }}</td>
                                        <td class="text-center">
                                            <span v-if="order.status !=0">
                                                <span v-if="order.order_position == 0" class="badge badge-info">Pending</span>
                                                <span v-if="order.order_position == 1" class="badge badge-primary">On Process</span>
                                                <span v-if="order.order_position == 2" class="badge badge-warning">On Delivery</span>
                                                <span v-if="order.order_position == 3" class="badge badge-success">Delivered</span>
                                            </span>
                                            <span v-else class="badge badge-danger">Cancel</span>
                                        </td>
                                        <td class="text-center">
                                            <ul class="table-controls d-flex justify-content-around">
                                                <li><a href="javascript:void(0);" @click="cancelOrder(order.id)" data-toggle="tooltip" data-placement="top" title="Order Cancel">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash text-warning"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg></a> </li>
                                                <li><a href="javascript:void(0);" @click="orderDetailModal(order)" data-toggle="tooltip" data-placement="top" title="View">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-play-circle text-info"><circle cx="12" cy="12" r="10"></circle><polygon points="10 8 16 12 10 16 10 8"></polygon></svg></a></li>
                                                <li><a href="javascript:void(0);" @click="deleteOrder(order.id)" data-toggle="tooltip" data-placement="top" title="Delete Order"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 text-danger"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></a></li>
                                            </ul>
                                        </td>
                                    </tr>					
                                </template>
                            </tbody>
                            <h4 v-else> No Order Found</h4>
                        </table>
                            <Bootstrap4Pagination
                                :data="orders"
                                @pagination-change-page="getOrder"
                            />
                    </div>
                    <div class="float-right">
                        <a target="_blank" :href="url+`get-order-excel?&keyword=${search}&byposition=${filterdata.order_state}&status=${filterdata.status}`" type="button" class="btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-download"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line x1="12" y1="15" x2="12" y2="3"></line></svg>  Excel</a>
                    </div>
                </div>
            </div>
        </div>

        <div id="orderDetailModal" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
            <div class="modal-dialog modal-xl">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Order Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"  @click="formReset">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>
                    <div class="modal-body" v-if="order_id">
                        <div class="text-center">
                            <div id="bar-progress" class="mt-5 mt-lg-0" v-if="single_order.status !=0">
                                <a @click="updateStatus(1)" href="javasript:void(0)" class="step step-active">
                                    <span class="number-container">
                                        <span class="number">1</span>
                                    </span>
                                    <h5>Pending</h5>
                                </a>
                                <div class="seperator"></div>
                                <a @click="updateStatus(2)" href="javasript:void(0)" class="step" type="button" disabled="true" :class="order_status_id > 0 ? 'step-active':''">
                                    <span class="number-container">
                                        <span class="number">2</span>
                                    </span>
                                    <h5>Process</h5>
                                </a>
                                <div class="seperator"></div>
                                <a @click="updateStatus(3)" href="javasript:void(0)" class="step" :class="order_status_id > 1 ? 'step-active':''">
                                    <span class="number-container">
                                        <span class="number">3</span>
                                    </span>
                                    <h5>On Delivery</h5>
                                </a>
                                <div class="seperator"></div>
                                <a @click="updateStatus(4)" href="javasript:void(0)" class="step" :class="order_status_id > 2 ? 'step-active':''">
                                    <span class="number-container">
                                        <span class="number">4</span>
                                    </span>
                                    <h5>Delivered</h5>
                                </a>
                            </div>
                            <div id="bar-progress" class="mt-5 mt-lg-0" v-else>
                                
                                <h6 class="text-danger">Order Canceled</h6>
                              
                            </div>
                        </div>
                        <div class="widget-content widget-content-area">
                            <div>
                                <table class="table table-bordered table-hover mb-4">
                                    <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Product Name</th>
                                            <th>Picture</th>
                                            <th>Colour</th>
                                            <th>Size</th>
                                            <th>Fabric</th>
                                            <th>Unit Price</th>
                                            <th>Qty</th>
                                            <th>Total Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="(orderdetail,index) in order_details" :key="index">
                                            <td>{{ index+1 }}</td>
                                            <td>{{ orderdetail.product.product_name }}</td>
                                            <td>
                                                <img height="60" :src="orderdetail.product.product_image" />
                                            </td>
                                            <td>{{ orderdetail.colour.color_name }}</td>
                                            <td>{{ orderdetail.size.size_name }}</td>
                                            <td>{{ orderdetail.fabric.fabric_name }}</td>
                                            <td>{{ orderdetail.selling_price }}</td>
                                            <td>{{ orderdetail.quantity }}</td>
                                            <td>{{ orderdetail.total_selling_price }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                
                            
                                <div class="modal-footer md-button">
                                    <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12"  @click="formReset"></i>Discard</button>
                                </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
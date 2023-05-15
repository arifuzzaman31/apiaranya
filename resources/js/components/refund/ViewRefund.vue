<script>
import axios from 'axios';
import Mixin from '../../mixer';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
export default {
    name: 'refund',
    props:['pagefrom','pagetitle'],
    mixins: [Mixin],
    components:{
        Bootstrap4Pagination
    },

    data(){
        return {
            refund_items: [],
            order_details: [],
            shipment_info: [],
            errors: [],
            order_id: '',
            single_order: null,
            order_status_id: '',
            search: '',
            filterdata : {
                refund_status: ''
            },
            refund:{
                id: '',
                refund_status: '',
                reason: ''
            },
            url: baseUrl
        }
    },

    methods: {
        getRefundItem(page = 1){
            axios.get(baseUrl+`refund-item-detail?from=${this.pagefrom}&page=${page}&per_page=10&keyword=${this.search}`)
            .then(result => {
                this.refund_items = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });  
        },

        getSearch(){
            if(this.search.length < 3) return ;
            this.getRefundItem()
        },

        deleteOrder(id){
            Swal.fire({
                title: 'Are you sure?',
                text: "Order will be Delete!",
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
                            this.getRefundItem()
                            this.successMessage(response.data)
                        }
                    ). catch(error => {
                        console.log(error)
                    })
                }
            })
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

        refundOrder(item){
            this.refund.id = item.id
            // this.refund.refund_status = order.is_refunded
            $("#refundModifyModal").modal('show');
        },

        refundModify(){
            Swal.fire({
                title: 'Are you sure?',
                text: "Refund Status Will be Changed!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Do it!'
                }).then((result) => {
                if (result.isConfirmed) {
                    axios.post(baseUrl+`order-item-refund`,this.refund).then(
                        response => {
                            $("#refundModifyModal").modal('hide');
                            this.getRefundItem()
                            this.successMessage(response.data)
                        }
                    ). catch(error => {
                        console.log(error)
                    })
                }
            }) 
        },

        orderDetailModal(order) {
            
            axios.get(baseUrl+`orders-details/${order.id}`)
            .then(result => {
                this.order_id = order.id
                this.single_order = order
                this.order_status_id = order.order_position
                this.order_details = result.data.details;
                this.shipment_info = result.data.order;
                $("#orderDetailModal").modal('show');
            })
            .catch(errors => {
                console.log(errors);
            });  
        },

        formReset(){
            this.errors = '';
            this.search = '';
            
        },

        filterClear(){
            this.search = ''
            this.filterdata = {
                refund_state: ''
            }
            this.getRefundItem()
        },

    },

    mounted(){
        this.getRefundItem()
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
                            <h4>{{ pagetitle }}</h4>
                        </div>                          
                    </div>
                </div>       
                <div class="widget-content widget-content-area">
                    <div class="row mb-2">
                        <div class="col-md-3 col-lg-3 col-12">
                            <input id="search" @keyup="getSearch()" placeholder="Search By OrderID" type="text" class="form-control"  v-model="search" />
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
                                    <th>User</th>
                                    <th>Order Code</th>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Payment</th>
                                    <th v-show="pagefrom == 'request-refund'" class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody v-if="refund_items.data && refund_items.data.length > 0">
                                <template v-for="(item,index) in refund_items.data" :key="index">
                                    <tr>
                                        <td>{{ index+1 }}</td>
                                        <td>{{ item.user.name }}</td>
                                        <td>{{ '#G-Store:'+item.order_id }}</td>
                                        <td>{{ item.product.product_name }}</td>
                                        <td>{{ item.selling_price }}</td>
                                        <td>{{ item.order.payment_status == 1 ? 'Paid' : 'Unpaid' }}</td>
                                        <td class="text-center" v-show="pagefrom == 'request-refund'">
                                            <div class="dropdown custom-dropdown">
                                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                                                </a>

                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink2">
                                                    <a class="dropdown-item" @click="refundOrder(item)" href="javascript:void(0);">Refund</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>					
                                </template>
                            </tbody>
                            <tbody v-else class="text-center mt-3">
                                <tr>
                                    <td colspan="6">No Refund Found</td>
                                </tr>
                                 
                            </tbody>
                        </table>
                            <Bootstrap4Pagination
                                :data="refund_items"
                                @pagination-change-page="getOrder"
                            />
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

                        <div class="widget-content widget-content-area">
                            <div class="row d-flex justify-content-between">
                                <div class="col-md-4 text-left">
                                    <h6 class="text-success">Billing Info</h6>
                                    <p v-if="(shipment_info.user_billing_info.first_name != '') || (shipment_info.user_billing_info.last_name != '')">Name: {{ shipment_info.user_billing_info.first_name }} {{ shipment_info.user_billing_info.last_name }}</p>
                                 
                                    <p>Phone: {{ shipment_info.user_billing_info.phone }}</p>
                                    <p>Email: {{ shipment_info.user_billing_info.email }}</p>
                                    <p>Street Address: {{ shipment_info.user_billing_info.street_address }}</p>
                                    <p>Post Code: {{ shipment_info.user_billing_info.post_code }}</p>
                                    <p>City: {{ shipment_info.user_billing_info.city }}</p>
                                    <p>Country: {{ shipment_info.user_billing_info.country }}</p>
                                </div>
                                <div class="col-md-4 text-right" v-if="shipment_info.is_same_address != 0">
                                    <h6 class="text-success">Shipping Info</h6>
                                    <p v-if="(shipment_info.user_shipping_info.first_name != '') || (shipment_info.user_shipping_info.last_name != '')">Name: {{ shipment_info.user_shipping_info.first_name }} {{ shipment_info.user_shipping_info.last_name }}</p>
                                    <p>Phone: {{ shipment_info.user_shipping_info.phone }}</p>
                                    <p>Email: {{ shipment_info.user_shipping_info.email }}</p>
                                    <p>Street Address: {{ shipment_info.user_shipping_info.street_address }}</p>
                                    <p>Post Code: {{ shipment_info.user_shipping_info.post_code }}</p>
                                    <p>City: {{ shipment_info.user_shipping_info.city }}</p>
                                    <p>Country: {{ shipment_info.user_shipping_info.country }}</p>
                                </div>
                                <div class="col-md-4 text-right" v-else>
                                    <h6 class="text-success">Shipping Info</h6>
                                    <p class="text-info">As Per Billing Info</p>
                                </div>
                            </div>
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
        <div id="refundModifyModal" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Refund</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"  @click="formReset">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="widget-content">
                            <form method="post">
                                <div>
                                    <div class="form-group">
                                        <label for="">Refund Action</label>
                                        <select class="form-control" v-model="refund.refund_status">
                                            <option value="">Select Action</option>
                                            <option value="1">Approve</option>
                                            <option value="2">Reject</option>
                                        </select>
                                    </div>
                                    <div class="form-group" v-if="refund.refund_status == 2">
                                        <label for="">Reject Reason</label>
                                        <textarea v-model="refund.reason" class="form-control" rows="3"></textarea>
                                    </div>
                                    <div class="modal-footer md-button">
                                        <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12" @click="formReset"></i>Discard</button>
                                        <button type="button" @click.prevent="refundModify()" class="btn btn-primary">Update</button>
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
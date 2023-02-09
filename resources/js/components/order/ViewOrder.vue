<script>
import { ref,reactive, onMounted } from 'vue';
import axios from 'axios';
import Mixin from '../../mixin';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
export default {
    name: 'order',
    components:{
        Bootstrap4Pagination
    },
    setup(){
        const { notifying } = Mixin;
        const orders  = ref([]);
        const order_details  = ref([]);
        const errors  = ref([]);
        const order_id  = ref('');
        const single_order  = ref('');
        const order_status_id  = ref('');
        const size_id  = ref('');
        const form = reactive({
            progress_detail: [],
            status: true
        });
        
        const getOrder = async(page = 1) =>{
            let res = await axios.get(baseUrl+`get-order?page=${page}&per_page=10`);
            orders.value = res.data;
           
        }

        const updateSize = async() =>{
           try{
                await axios.patch('orders/' + size_id.value,form).then(
                    response => {
                        $("#sizeModal").modal('hide');
                        fireToast(response.data)
                    }
                ). catch(e => {
                   if(e.response.status == 422){
                        errors.value = e.response.data.errors;
                    }
                })
                getOrder()
                formReset()
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

        const cancelOrder = (order) => {
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
                    axios.get(baseUrl+'order/cancel/'+order).then(
                        response => {
                            
                            formReset()
                            getOrder()
                            notifying(response.data)
                        }
                    ). catch(error => {
                    
                    })
                }
            })
        }

        const orderDetailModal = async(order) => {
            order_id.value = order.id
            single_order.value = order
            order_status_id.value = order.order_position
            const orderdata = await axios.get('orders-details/' + order.id)
            order_details.value = orderdata.data
            $("#orderDetailModal").modal('show');
        }

        const updateStatus = (order) => {
            if(order_status_id.value >= order){
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
                    axios.post(baseUrl+`update/order/status`,{'order_status_id':order_status_id.value,'id':single_order.value.id}).then(
                        response => {
                            $("#orderDetailModal").modal('hide');
                            formReset()
                            getOrder()
                            notifying(response.data)
                        }
                    ). catch(error => {
                    
                    })
                }
            })
            console.log(order)
        }

        const formReset = () =>{
            order_id.value = '';
            order_status_id.value = '';
            single_order.value = '';
            errors.value = '';
            form.progress_detail = [];
            form.status = true;
        }
        
        onMounted(getOrder());

        return {
            orders,
            form,
            getOrder,
            updateSize,
            formReset,
            errors,
            cancelOrder,
            order_id,
            updateStatus,
            order_details,
            order_status_id,
            single_order,
            orderDetailModal
        }
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
            <div class="statbox widget box box-shadow">
                <div class="widget-header">
                    <div class="row">
                        <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                            <h4>Order</h4>
                        </div>                          
                    </div>
                </div>       
                <div class="widget-content widget-content-area">
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
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
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
                                        <td>
                                            <div class="dropdown custom-dropdown">
                                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                                                </a>

                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink1" style="will-change: transform;">
                                                    <a class="dropdown-item" @click="orderDetailModal(order)" href="javascript:void(0);">Order View</a>
                                                    <a type="button" @click="cancelOrder(order.id)" class="dropdown-item" href="javascript:void(0);">Cancel</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>					
                                </template>
                            </tbody>
                        </table>
                            <Bootstrap4Pagination
                                :data="orders"
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
                    <div class="modal-body" v-if="order_status_id">
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
                                    <!-- <button type="button" class="btn btn-primary" @click="updateStatus(order_id)">Update</button> -->
                                </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
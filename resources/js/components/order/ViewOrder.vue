<script>
import { ref,reactive, onMounted } from 'vue';
import axios from 'axios';
import Mixin from '../../mixin';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
export default {
    components:{
        Bootstrap4Pagination
    },
    setup(){
        const { notifying } = Mixin;
        const orders  = ref([]);
        const errors  = ref([]);
        const order_id  = ref('');
        const size_id  = ref('');
        const form = reactive({
            progress_detail: [],
            status: true
        });

        const getOrder = async(page = 1) =>{
            let res = await axios.get(baseUrl+`get-order?page=${page}&per_page=10`);
            orders.value = res.data;
            console.log(res.data)
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

        const openProgessModal = (order) => {
            order_id.value = order.id
            form.progress_detail = order.delivery
            $("#progressModal").modal('show');
        }

        const updateStatus = (order) => {
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
                    axios.get(baseUrl+`update/order/status/${order}`).then(
                        response => {
                            // getOrder()
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
            openProgessModal,
            order_id,
            updateStatus
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
                            <h4>Order</h4>
                            <button class="btn btn-primary mb-2 mr-3" data-toggle="modal" data-target="#sizeModal" @click="formReset">Add New</button>
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
                                        <td>{{ order.user.first_name }} {{ order.user.last_name }}</td>
                                        <td>{{ order.total_price }}</td>
                                        <td>{{ order.shipping_method }}</td>
                                        <td>{{ order.payment_method }}</td>
                                        <td class="text-center">
                                            <span v-if="order.order_position == 0" class="badge badge-info">Pending</span>
                                            <span v-if="order.order_position == 1" class="badge badge-primary">On Process</span>
                                            <span v-if="order.order_position == 2" class="badge badge-warning">On Delivery</span>
                                            <span v-if="order.order_position == 3" class="badge badge-success">Delivered</span>
                                        </td>
                                        <td>
                                            <div class="dropdown custom-dropdown">
                                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                                                </a>

                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink1" style="will-change: transform;">
                                                    <a type="button" @click="openProgessModal(order)" class="dropdown-item" href="javascript:void(0);">Progess</a>
                                                    <a class="dropdown-item" href="javascript:void(0);">Share</a>
                                                    <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                    <a class="dropdown-item" href="javascript:void(0);">Delete</a>
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
        <div id="progressModal" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Order Status</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>
                    <div class="modal-body">
                        
                        <div class="widget-content widget-content-area">
                            <div>
                                <table class="table table-bordered table-hover mb-4">
                                    <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Position</th>
                                            <th class="text-center">Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="(pr,index) in form.progress_detail" :key="pr.id">
                                            <td>{{ index+1 }}</td>
                                            <td>{{ pr.position_status }}</td>
                                            <td>{{ pr.shipping_date }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                         
                                
                                <div class="form-group">
                                    <label for="size_name">Size Name</label>
                                    <select id="product-category" class="form-control">
                                        <option value="0">Pending</option>
                                        <option value="1">Processing</option>
                                        <option value="2">Delivered</option>
                                        <option value="3">Cancel</option>
                                    </select>
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
                                    <button type="button" class="btn btn-primary" @click="updateStatus(order_id)">Update</button>
                                </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
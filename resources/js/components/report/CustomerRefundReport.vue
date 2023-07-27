<script>
import axios from 'axios';
import Mixin from '../../mixer';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';

export default {
    name: 'refundreport',
    mixins: [Mixin],
    components:{
        Bootstrap4Pagination
    },
    data(){
        return {
            refundData: [],
            filterdata : {
                from: '',
                to: '',
            },
            limit: 3,
            keepLength: false,
            url : baseUrl
        }
    },

    methods: {
        getCustomerRefundReport(page = 1){
            axios.get(baseUrl+`get-customer-refund-report?page=${page}&per_page=14&from=${this.filterdata.from}&to=${this.filterdata.to}`)
            .then(result => {
                this.refundData = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });  
        },
        filterClear(){
            this.filterdata = {
                from: '',
                to: ''
            }
            this.getCustomerRefundReport()
        },
        getSearch(){
            if(this.search.length < 3) return ;
            this.getCustomerRefundReport()
        },
    },
    mounted(){
        this.getCustomerRefundReport()
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
                        <h4>Customer Refund Report</h4>
                    </div>                          
                </div>
            </div>       
            <div class="widget-content widget-content-area">
                <div class="row mb-2">
                    <div class="col-md-2 col-lg-2 col-12">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.from" class="form-control form-control-sm" placeholder="Start Date">
                    </div>
                    <div class="col-md-2 col-lg-2 col-12">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.to" @change="getCustomerRefundReport()" class="form-control form-control-sm" placeholder="End Date">
                    </div>

                    <div class="col-md-2 col-lg-2 col-12">
                        <button type="button" class="btn btn-danger" @click="filterClear()">CLEAR</button>
                    </div>
                </div>
                <div class="table-responsive" style="min-height: 60vh;">
                    <table class="table table-bordered table-hover mb-4">
                        <thead>
                            <tr>
                                <th>OrderID</th>
                                <th>Order Date</th>
                                <th class="text-center">Customer</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">Phone</th>
                                <th class="text-center">Payment</th>
                                <th>Address</th>
                                <th>Refund Request Date</th>
                                <th>Approved/Reject Date</th>
                                <th>Refund Amount</th>
                                <th>Reason</th>
                                <th class="text-center">Payment Mode</th>
                                <th class="text-center">Payment Gateway</th>
                            </tr>
                        </thead>
                        <tbody v-if="refundData.data && refundData.data.length > 0">
                            <template v-for="(item,index) in refundData.data" :key="index">
                                <tr>
                                    <td>{{ item.order_id }}</td>
                                    <td>{{ item.order.order_date }}</td>
                                    <td class="text-center">{{ item.user.name }}</td>
                                    <td class="text-center">{{ item.user.email }}</td>
                                    <td class="text-center">{{ item.user.phone }}</td>
                                    <td>{{ item.order.total_price }}</td>
                                    <td>{{ item.user.address }}</td>
                                    <td>{{ item.refund_claim_date }}</td>
                                    <td>{{ item.refund_date }}</td>
                                    <td>{{ item.total_selling_price }}</td>
                                    <td>{{ item.refund_claim_reason }}</td>
                                    <td class="text-center">
                                        {{ item.order.payment_via == 0 ? 'COD' : 'Online' }}
                                    </td>
                                    <td>{{ item.order.payment_method_name }}</td>
                                </tr>					
                            </template>
                        </tbody>
                        <tbody v-else class="text-center mt-3">
                            <tr>
                                <td colspan="13">No Order Found</td>
                            </tr>
                                
                        </tbody>
                    </table>
                        <Bootstrap4Pagination
                            :data="refundData"
                            :limit="limit"
                            :keep-length="keepLength"
                            @pagination-change-page="getCustomerRefundReport"
                        />
                </div>
                
            </div>
        </div>
    </div>
</div>
</template>
<style>

</style>
<script>
import axios from 'axios';
import Mixin from '../../mixer';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';

export default {
    name: 'lifetimereport',
    mixins: [Mixin],
    components:{
        Bootstrap4Pagination
    },
    data(){
        return {
            lifetimeData: [],
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
        getCustomerLifetimeReport(page = 1){
            axios.get(baseUrl+`get-customer-lifetime-report?page=${page}&per_page=3&from=${this.filterdata.from}&to=${this.filterdata.to}`)
            .then(result => {
                this.lifetimeData = result.data;
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
            this.getCustomerLifetimeReport()
        },
        getSearch(){
            if(this.search.length < 3) return ;
            this.getCustomerLifetimeReport()
        },
    },
    mounted(){
        this.getCustomerLifetimeReport()
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
                        <h4>Customer Life Time Value Report</h4>
                    </div>                          
                </div>
            </div>       
            <div class="widget-content widget-content-area">
                <div class="row mb-2">
                    <div class="col-md-2 col-lg-2 col-12">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.from" class="form-control form-control-sm" placeholder="Start Date">
                    </div>
                    <div class="col-md-2 col-lg-2 col-12">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.to" @change="getCustomerLifetimeReport()" class="form-control form-control-sm" placeholder="End Date">
                    </div>

                    <div class="col-md-2 col-lg-2 col-12">
                        <button type="button" class="btn btn-danger" @click="filterClear()">CLEAR</button>
                    </div>
                </div>
                <div class="table-responsive" style="min-height: 60vh;">
                    <table class="table table-bordered table-hover mb-4">
                        <thead>
                            <tr>
                                <th class="text-center">Customer</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">Phone</th>
                                <th class="text-center">Payment</th>
                                <th>Address</th>
                                <th>Total Order in Aranya</th>
                                <th>Total Amount Spent</th>
                                <th>Total Item Cancel</th>
                                <th>Total Refund</th>
                                <th class="text-center">Total Refund Amount</th>
                            </tr>
                        </thead>
                        <tbody v-if="lifetimeData.data && lifetimeData.data.length > 0">
                            <template v-for="(item,index) in lifetimeData.data" :key="index">
                                <tr>
                                    <td>{{ item.name }}</td>
                                    <td>{{ item.email }}</td>
                                    <td class="text-center">{{ item.phone }}</td>
                                    <td>{{ item.total_spent_amount }}</td>
                                    <td>{{ item.address }}</td>
                                    <td>{{ item.count_order }}</td>
                                    <td>{{ item.total_spent_amount }}</td>
                                    <td>{{ item.cancel_count }}</td>
                                    <td class="text-center">
                                        {{ item.refund_count }}
                                    </td>
                                    <td>{{ item.refunded_amount }}</td>
                                </tr>					
                            </template>
                        </tbody>
                        <tbody v-else class="text-center mt-3">
                            <tr>
                                <td colspan="12">No Order Found</td>
                            </tr>
                                
                        </tbody>
                    </table>
                        <Bootstrap4Pagination
                            :data="lifetimeData"
                            :limit="limit"
                            :keep-length="keepLength"
                            @pagination-change-page="getCustomerLifetimeReport"
                        />
                </div>
                
            </div>
        </div>
    </div>
</div>
</template>
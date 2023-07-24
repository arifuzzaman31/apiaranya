<script>
import axios from 'axios';
import Mixin from '../../mixer';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';

export default {
    name: 'individualreport',
    mixins: [Mixin],
    components:{
        Bootstrap4Pagination
    },
    data(){
        return {
            customerData: [],
            filterdata : {
                from: '',
                to: ''
            },
            limit: 3,
            keepLength: false,
            url : baseUrl
        }
    },

    methods: {
        getIndividualCustomerReport(page = 1){
            axios.get(baseUrl+`get-individual-customer-report?page=${page}&per_page=10&from=${this.filterdata.from}&to=${this.filterdata.to}`)
            .then(result => {
                this.customerData = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });  
        },
        filterClear(){
            this.filterdata = {
                payment_status : '',
                from: '',
                to: '',
                order_state: ''
            }
            this.getIndividualCustomerReport()
        },
        getSearch(){
            if(this.search.length < 3) return ;
            this.getIndividualCustomerReport()
        },
    },
    mounted(){
        this.getIndividualCustomerReport()
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
                        <h4>Individual Customer Report</h4>
                    </div>                          
                </div>
            </div>       
            <div class="widget-content widget-content-area">
                <div class="row mb-2">
                    <div class="col-md-2 col-lg-2 col-12">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.from" class="form-control form-control-sm" placeholder="Start Date">
                    </div>
                    <div class="col-md-2 col-lg-2 col-12">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.to" @change="getIndividualCustomerReport()" class="form-control form-control-sm" placeholder="End Date">
                    </div>
                    <div class="col-md-2 col-lg-2 col-12">
                        <select id="product-camp" class="form-control form-control-sm" @change="getIndividualCustomerReport()" v-model="filterdata.payment_status">
                            <option selected="" value="">Choose...</option>
                            <option value="1">Paid</option>
                            <option value="0">Unpaid</option>
                            <option value="2">Failed</option>
                            <option value="3">Cancel</option>
                        </select>
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
                                <th class="text-center">Phone</th>
                                <th class="text-center">Payment</th>
                                <th>Address</th>
                                <th>Order In Site</th>
                                <th>Spend Amount</th>
                                <th>Cancel Item</th>
                                <th>Refund</th>
                            </tr>
                        </thead>
                        <tbody v-if="customerData.data && customerData.data.length > 0">
                            <template v-for="(item,index) in customerData.data" :key="index">
                                <tr>
                                    <td>{{ item.sku }}</td>
                                    <td>{{ item.product.product_name }}</td>
                                    <td class="text-center">{{ item.product.category.category_name }}</td>
                                    <td class="text-center">{{ item.product.subcategory.category_name }}</td>
                                    <td class="text-center">
                                        <p v-for="brand in item.product.product_brand" :key="brand.id">
                                            {{ brand.brand_name }}
                                        </p>
                                    </td>
                                    <td>{{ item.stock }}</td>
                                </tr>					
                            </template>
                        </tbody>
                        <tbody v-else class="text-center mt-3">
                            <tr>
                                <td colspan="6">No Order Found</td>
                            </tr>
                                
                        </tbody>
                    </table>
                        <Bootstrap4Pagination
                            :data="customerData"
                            :limit="limit"
                            :keep-length="keepLength"
                            @pagination-change-page="getIndividualCustomerReport"
                        />
                </div>
                
            </div>
        </div>
    </div>
</div>
</template>
<style>

</style>
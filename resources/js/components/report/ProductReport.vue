<template>
<div class="row">
    <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
        <div class="statbox">
            <div class="widget-header">
                <div class="row">
                    <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                        <h4>Product Report</h4>
                    </div>
                </div>
            </div>
            <div class="widget-content widget-content-area">
                <div class="row mb-2">
                    <div class="col-md-3 col-lg-3 my-1 col-12">
                        <input type="text" v-model="search" @keyup="getSearch()" class="form-control form-control-sm" placeholder="Name, Design Code">
                    </div>

                    <div class="col-md-3 col-lg-3 my-1 col-12">
                        <select id="product-category" class="form-control form-control-sm" @change="getSubCategories()" v-model="filterdata.category">
                            <option selected="" value="">Category</option>
                            <option v-for="(value,index) in allcategories" :value="value.id" :key="index">{{ value.category_name }}</option>
                        </select>
                    </div>

                    <div class="col-md-3 col-lg-3 my-1 col-12">
                        <select id="product-subcategory" class="form-control form-control-sm" @change="getProductReport()" v-model="filterdata.subcategory">
                            <option selected="" value="0">Sub Category</option>
                            <option v-for="(value,index) in allsubcategories" :value="value.id" :key="index">{{ value.category_name }}</option>
                        </select>
                    </div>

                    <div class="col-md-2 col-lg-2 col-12">
                        <button type="button" class="btn btn-info-a mt-1" @click="filterClear()">CLEAR</button>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover mb-4">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Product Name</th>
                                <th>Category</th>
                                <th>Sub Category</th>
                                <th>Design code</th>
                                <th>Total Sale</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody v-if="productData.data && productData.data.length > 0">
                            <template v-for="(item,index) in productData.data" :key="index">
                                <tr>
                                    <td>{{ ++index }}</td>
                                    <td>{{ item.product_name }}</td>
                                    <td>{{ item.category.category_name }}</td>
                                    <td>{{ item.subcategory.category_name }}</td>
                                    <td>{{ item.design_code }}</td>
                                    <td>{{ item.order_details_count }}</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-sm btn-info-a" @click="showCustomer(item)">View</button>
                                    </td>
                                </tr>
                            </template>
                        </tbody>
                        <tbody v-else class="mt-3">
                            <tr class="text-center">
                                <td colspan="24">No Data Found</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-between">
                        <Bootstrap4Pagination
                            :data="productData"
                            :limit="limit"
                            :keep-length="keepLength"
                            @pagination-change-page="getProductReport"
                        />
                        <a target="_blank" :href="url+`get-product-report?excel=yes&category=${filterdata.category}&subcategory=${filterdata.subcategory}`" type="button" class="btn btn-info-a"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-download"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line x1="12" y1="15" x2="12" y2="3"></line></svg>  Excel</a>
                    </div>
                </div>
                <ProductCustomer :order_info="customerInfo" />
            </div>
        </div>

    </div>
</div>
</template>

<script>
import axios from 'axios';
import Mixin from '../../mixer';
import ProductCustomer from "../common/ProductCustomer.vue"
import { Bootstrap4Pagination } from 'laravel-vue-pagination';

export default {
    name: 'productreport',
    mixins: [Mixin],
    components:{
        ProductCustomer,
        Bootstrap4Pagination
    },
    data(){
        return {
            customerInfo: [],
            productData: [],
            allbrands: [],
            allcategories: [],
            allsubcategories: [],
            allfiltersubcategories: [],
            search: '',
            filterdata : {
                category: '',
                subcategory: 0,
                brand: ''
            },
            limit: 3,
            keepLength: false,
            url : baseUrl
        }
    },

    methods: {
        getProductReport(page = 1){
            axios.get(baseUrl+`get-product-report?page=${page}&per_page=10&keyword=${this.search}&category=${this.filterdata.category}&subcategory=${this.filterdata.subcategory}`)
            .then(result => {
                this.productData = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });
        },
        filterClear(){
            this.customerInfo = []
            this.search = ''
            this.filterdata = {
                category: '',
                subcategory: 0,
                brand: ''
            }
            this.getProductReport()
        },
        getSearch(){
            if(this.search.length < 3) return ;
            this.getProductReport()
        },
        getCategory() {
            axios.get(baseUrl+'get-category?no_paginate=yes').then(response => {
                let res = response.data.filter(data => data.parent_category == 0)
                let subcat = response.data.filter(data => data.parent_category !== 0)
                this.allcategories = res
                this.allfiltersubcategories = subcat
            })
        },
        getSubCategories() {
            const filterData = (this.allfiltersubcategories).filter((data) => data.parent_category == this.filterdata.category)
            this.allsubcategories = filterData
            this.filterdata.subcategory=0;
            if(filterData.length == 0) this.getProductReport()
        },
        async showCustomer(data){
            this.customerInfo = []
            const dt = await data.order_details
            this.customerInfo = dt
            console.log(this.customerInfo)
            $("#customerViewModal").modal('show');
        }
    },
    mounted(){
         this.getCategory()
        // this.getBrand()
        this.getProductReport()
    }
}
</script>

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

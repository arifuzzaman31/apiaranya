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
                    <div class="col-md-2 col-lg-2 my-1 col-12">
                        <input type="text" v-model="search" @keyup="getSearch()" class="form-control form-control-sm" placeholder="Name, Design Code">
                    </div>

                    <div class="col-md-2 col-lg-2 my-1 col-12">
                        <select id="product-category" class="form-control form-control-sm" @change="getSubCategories()" v-model="filterdata.category">
                            <option selected="" value="">Category</option>
                            <option v-for="(value,index) in allcategories" :value="value.id" :key="index">{{ value.category_name }}</option>
                        </select>
                    </div>

                    <div class="col-md-2 col-lg-2 my-1 col-12">
                        <select id="product-subcategory" class="form-control form-control-sm" @change="getProductReport()" v-model="filterdata.subcategory">
                            <option selected="" value="0">Sub Category</option>
                            <option v-for="(value,index) in allsubcategories" :value="value.id" :key="index">{{ value.category_name }}</option>
                        </select>
                    </div>

                    <div class="col-md-2 col-lg-2 my-1 col-12">
                        <select id="product-brand" class="form-control form-control-sm" @change="getProductReport()" v-model="filterdata.brand">
                            <option selected="" value="">Brand</option>
                            <option v-for="(value,index) in allbrands" :value="value.id" :key="index">{{ value.brand_name }}</option>
                        </select>
                    </div>
<!--
                    <div class="col-md-3 col-lg-3 my-1 col-12">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.from" class="form-control form-control-sm" placeholder="Start Date">
                    </div>
                    <div class="col-md-3 col-lg-3 my-1 col-12">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.to" @change="getProductReport()" class="form-control form-control-sm" placeholder="End Date">
                    </div> -->

                    <div class="col-md-2 col-lg-2 col-12">
                        <button type="button" class="btn btn-danger mt-1" @click="filterClear()">CLEAR</button>
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
                                </tr>
                            </template>
                        </tbody>
                        <tbody v-else class="mt-3">
                            <tr>
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
                        <a target="_blank" :href="url+`get-sales-report?excel=yes&date_from=${filterdata.from}&date_to=${filterdata.to}`" type="button" class="btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-download"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line x1="12" y1="15" x2="12" y2="3"></line></svg>  Excel</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</template>

<script>
import axios from 'axios';
import Mixin from '../../mixer';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';

export default {
    name: 'productreport',
    mixins: [Mixin],
    components:{
        Bootstrap4Pagination
    },
    data(){
        return {
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
            axios.get(baseUrl+`get-product-report?page=${page}&per_page=10&keyword=${this.search}&category=${this.filterdata.category}&subcategory=${this.filterdata.subcategory}&brand=${this.filterdata.brand}`)
            .then(result => {
                this.productData = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });
        },
        filterClear(){
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
        getBrand(){
            axios.get(baseUrl+'brands/create?no_paginate=yes').then(response => {
                this.allbrands = response.data;
            })
        }
    },
    mounted(){
        // this.getCategory()
        // this.getBrand()
        this.getProductReport()
    }
}
</script>

<style>

</style>

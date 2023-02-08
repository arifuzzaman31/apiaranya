<script>
import { ref,reactive, onMounted } from 'vue';
import axios from 'axios';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
import Mixin from '../../mixer';

export default {
    mixins:[Mixin],
    components:{
        Bootstrap4Pagination
    },
    data(){
        return {
            allproduct: [],
            url: baseUrl,
            allcategories: [],
            allsubcategories: [],
            allfiltersubcategories: [],
            keyword: '',
            filterdata: {
                category: '',
                camp_id: ''
            },
            addTocamp: {
                camp_id: '',
                disc_type: '',
                disc_amount: '',
                max_amount: '',
                product:[],
            },
            allcampaign: [],
            campaign:{
                campaign_name: '',
                campaign_title: '',
                campaign_banner_default: '',
                campaign_meta_image: '',
                start_at: `${day}-${month}-${year}`,
                expire_at: `${day+1}-${month}-${year}`,
                status: true
            }
        }
    },
    methods: {
        getProduct(page = 1) {
            try{
                axios.get(baseUrl+`get-product?page=${page}&per_page=2&camp_id=${this.filterdata.camp_id}&keyword=${this.keyword}`)
                .then(response => {
                    this.allproduct = response.data
                }).catch(error => {
                    console.log(error)
                })
            }catch(e){
                console.log(e)
            }
        },

        searchProduct(){
            if(this.keyword.length < 3) return ;
            this.getProduct()
        },

        getCategory() {
            axios.get(baseUrl+'get-category').then(response => {
                    let res = response.data.data.filter(data => data.parent_cat == 0)
                    let subcat = response.data.data.filter(data => data.parent_cat !== 0)
                    this.allcategories = res
                    this.allfiltersubcategories = subcat
                })
        },
        getSubCategories() {
            const filterData = (this.allfiltersubcategories).filter((data) => data.parent_cat == this.filterdata.category)
            this.allsubcategories = filterData
        },

        getCampaign(){
            axios.get(baseUrl+`get-campaign?no_paginate=yes&status=active`)
            .then(response => {
                this.allcampaign = response.data
            }).catch(error => {
                console.log(error)
            })
        },

        filterClear(){
            this.filterdata = {
                category: '',
                camp_id: ''
            },
            this.keyword= ''
            this.allsubcategories = []
            this.getProduct()
        },

        deleteProduct(id) {
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
                    axios.delete(baseUrl+`product/${id}`).then(
                        response => {
                            this.getProduct()
                            this.successMessage(response.data)
                        }
                    ). catch(error => {
                        console.log(error)
                    })
                }
            })
        }
    },
    mounted(){
        this.getProduct()
        this.getCategory()
        this.getCampaign()
    }
}
</script>
<style scoped>
.hide {
    visibility: hidden;
}
</style>
<template>
    <div class="container-fluid mt-3">
        <div class="statbox widget box box-shadow mb-4">
            <div class="widget-header">
                <div class="row">
                    <div class="col-md-4 col-lg-3 col-12 mb-3">
                        <label for="search">Search</label>
                        <input type="text" @keyup="searchProduct()" v-model="keyword" class="form-control" id="search" placeholder="Search by Name & sku" >
                    </div>
                    <div class="col-md-4 col-lg-3 col-12 mb-3">
                        <label for="max_amount">Category</label>
                        <select id="product-category" class="form-control" @change="getSubCategories()" v-model="filterdata.category">
                            <option selected="" value="">Choose...</option>
                            <option v-for="(value,index) in allcategories" :value="value.id" :key="index">{{ value.cat_name }}</option>
                        </select>
                    </div>

                    <div class="col-md-4 col-lg-3 col-12 mb-3">
                        <label for="max_amount">Sub Category</label>
                        <select id="product-subcategory" class="form-control" >
                            <option selected="" value="">Choose...</option>
                            <option v-for="(value,index) in allsubcategories" :value="value.id" :key="index">{{ value.cat_name }}</option>
                        </select>
                    </div>

                    <div class="col-md-4 col-lg-3 col-12 mb-3">
                        <label for="max_amount">Campaign</label>
                        <select id="product-camp" class="form-control" @change="getProduct()" v-model="filterdata.camp_id">
                            <option selected="" value="">Choose...</option>
                            <option v-for="(value,index) in allcampaign" :value="value.id" :key="index">{{ value.campaign_name }}</option>
                        </select>
                    </div>
                    <div class="col-md-4 col-lg-3 col-12 mb-3">
                        <button type="button" class="btn btn-success btn-sm" @click="filterClear()">CLEAR FILTER</button>
                    </div>
                </div>                 
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-striped table-checkable table-highlight-head mb-4">
                <thead>
                    <tr>
                        <th class="checkbox-column">
                            <label class="new-control new-checkbox checkbox-primary" style="height: 18px; margin: 0 auto;">
                                <input type="checkbox" class="new-control-input todochkbox" id="todoAll">
                                <span class="new-control-indicator"></span>
                            </label>
                        </th>
                        <th>Name</th>
                        <th>SKU</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th class="text-center">Status</th>
                        <th class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <template v-for="(product,index) in allproduct.data" :key="index" >
                        <tr>
                            <td class="checkbox-column">
                                <label class="new-control new-checkbox checkbox-primary" style="height: 18px; margin: 0 auto;">
                                    <input type="checkbox" class="new-control-input todochkbox" id="todo-1">
                                    <span class="new-control-indicator"></span>
                                </label>
                            </td>
                            <td>
                                <p class="mb-0">{{ product.p_name }}</p>
                            </td>
                            <td>{{ product.p_sku }}</td>
                            <td>{{ product.p_category.cat_name }}</td>
                            <td>{{ product.p_sale_price}}</td>
                            <td class="text-center">
                                <span class="badge shadow-none" :class="product.status == 1 ? 'outline-badge-info':'outline-badge-danger'">{{ product.status_text }}</span>
                            </td>
                            <td class="text-center">
                                <ul class="table-controls">
                                    <li><a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Settings"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-settings text-primary"><circle cx="12" cy="12" r="3"></circle><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path></svg></a> </li>
                                    <li><a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Edit"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-2 text-success"><path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg></a></li>
                                    <li><a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="Delete"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 text-danger"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></a></li>
                                </ul>
                            </td>
                        </tr>
                    </template>
                </tbody>
            </table>
        </div>
    <Bootstrap4Pagination
        :data="allproduct"
        @pagination-change-page="getProduct"
    />
</div>
</template>
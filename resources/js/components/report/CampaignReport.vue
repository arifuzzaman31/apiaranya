<script>
import axios from 'axios';
import Mixin from '../../mixer';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';

export default {
    name: 'campaignreport',
    mixins: [Mixin],
    components:{
        Bootstrap4Pagination
    },
    data(){
        return {
            campaignData: [],
            search: '',
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
        getCampaignReport(page = 1){

            axios.get(baseUrl+`get-campaign-report?page=${page}&per_page=7&date_from=${this.filterdata.from}&date_to=${this.filterdata.to}`)
            .then(result => {
                this.campaignData = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });
        },
        filterClear(){
            this.search = ''
            this.filterdata = {
                from: '',
                to: ''
            }
            this.getCampaignReport()
        },
        getSearch(){
            if(this.search.length < 3) return ;
            this.getCampaignReport()
        },
    },
    mounted(){
        this.getCampaignReport()
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
                        <h4>Campaign Report</h4>
                    </div>
                </div>
            </div>
            <div class="widget-content widget-content-area">
                <div class="row mb-2">
                    <div class="col-md-2 col-lg-2 col-12 my-1">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.from" class="form-control form-control-sm" placeholder="Start Date">
                    </div>
                    <div class="col-md-2 col-lg-2 col-12 my-1">
                        <input type="text" onfocus="(this.type='date')" v-model="filterdata.to" @change="getCampaignReport()" class="form-control form-control-sm" placeholder="End Date">
                    </div>

                    <div class="col-md-2 col-lg-2 col-12 my-1">
                        <button type="button" class="btn btn-info-a mt-1" @click="filterClear()">CLEAR</button>
                    </div>
                </div>
                <div class="table-responsive" style=" overflow-x: auto">
                    <table class="table table-responsive table-bordered table-hover mb-4" style="overflow-x: auto">
                        <thead>
                            <tr>
                                <th>Campaign ID</th>
                                <th>Campaign staring date</th>
                                <th>Campaign name</th>
                                <th>Campaign end date</th>
                                <th>SKU</th>
                                <th>Category</th>
                                <th>Sub Category</th>
                                <th>Brand</th>
                                <th>Vendor</th>
                                <th>Designer</th>
                                <th>Embellishment</th>
                                <th>Making</th>
                                <th>Season</th>
                                <th>Variety</th>
                                <th>Fit</th>
                                <th>Artist</th>
                                <th>Consignment</th>
                                <th>Ingredients</th>
                                <th>Fragile</th>
                                <th>Fragile Charge</th>
                                <th>Weight</th>
                                <th>Lead Time</th>
                                <th>Color</th>
                                <th>Design code</th>
                                <th>Composition</th>
                                <th>Sales Quantity</th>
                                <!-- <th>Total Buying Amount</th> -->
                                <th>Total Sales Amount</th>
                                <th>Discount</th>
                                <th>Amount without VAT</th>
                                <th>Amount with VAT</th>
                            </tr>
                        </thead>
                        <tbody v-if="campaignData.data && campaignData.data.length > 0">
                            <template v-for="(item,index) in campaignData.data" :key="index">
                                <tr>
                                    <td> {{ item.product.campaign[0].id }}</td>
                                    <td> {{ dateToString(item.product.campaign[0].campaign_start_date)  }}</td>
                                    <td> {{ item.product.campaign[0].campaign_name  }}</td>
                                    <td> {{ dateToString(item.product.campaign[0].campaign_expire_date)  }}</td>
                                    <td>{{ item.p_sku }}</td>
                                    <td>{{ item.product.category.category_name }}</td>
                                    <td>{{ item.product.subcategory.category_name }}</td>
                                    <td>
                                        <span v-if="item.product.product_brand && item.product.product_brand.length > 0">
                                            <p v-for="brand in item.product.product_brand" :key="brand.id">
                                                {{ brand.brand_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_vendor && item.product.product_vendor.length > 0">
                                            <p v-for="verdor in item.product.product_vendor" :key="verdor.id">
                                                {{ verdor.vendor_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_designer && item.product.product_designer.length > 0">
                                            <p v-for="designer in item.product.product_designer" :key="designer.id">
                                                {{ designer.designer_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_embellishment && item.product.product_embellishment.length > 0">
                                            <p v-for="embellishment in item.product.product_embellishment" :key="embellishment.id">
                                                {{ embellishment.embellishment_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_making && item.product.product_making.length > 0">
                                            <p v-for="making in item.product.product_making" :key="making.id">
                                                {{ making.making_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_season && item.product.product_season.length > 0">
                                            <p v-for="season in item.product.product_season" :key="season.id">
                                                {{ season.season_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_variety && item.product.product_variety.length > 0">
                                            <p v-for="variety in item.product.product_variety" :key="variety.id">
                                                {{ variety.variety_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_fit && item.product.product_fit.length > 0">
                                            <p v-for="fit in item.product.product_fit" :key="fit.id">
                                                {{ fit.fit_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_artist && item.product.product_artist.length > 0">
                                            <p v-for="artist in item.product.product_artist" :key="artist.id">
                                                {{ artist.artist_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_consignment && item.product.product_consignment.length > 0">
                                            <p v-for="consignment in item.product.product_consignment" :key="consignment.id">
                                                {{ consignment.consignment_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td>
                                        <span v-if="item.product.product_ingredient && item.product.product_ingredient.length > 0">
                                            <p v-for="ingredient in item.product.product_ingredient" :key="ingredient.id">
                                                {{ ingredient.ingredient_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td> {{ item.product.fragile }}</td>
                                    <td> {{ item.product.fragile_charge }}</td>
                                    <td> {{ item.product.weight }}</td>
                                    <td> {{ item.product.lead_time }}</td>
                                    <td> <p v-if="item.colour && item.colour.color_name">{{ item.colour.color_name }}</p></td>
                                    <td> {{ item.product.design_code }}</td>
                                    <td>
                                        <span v-if="item.product.product_fabric && item.product.product_fabric.length > 0">
                                            <p v-for="fabric in item.product.product_fabric" :key="fabric.id">
                                                {{ fabric.fabric_name }}
                                            </p>
                                        </span>
                                    </td>
                                    <td> {{ item.sales_quantity }}</td>
                                    <td> {{ formatPrice(item.total_selling_amount) }}</td>
                                    <td> 0</td>
                                    <td> {{ formatPrice(item.total_selling_amount) }}</td>
                                    <td> {{ formatPrice(Number(item.total_selling_amount)+Number(item.total_vat_amount)) }}</td>
                                </tr>
                            </template>
                        </tbody>
                        <tbody v-else class="mt-3">
                            <tr>
                                <td colspan="32">No Data Found</td>
                            </tr>

                        </tbody>
                    </table>
                    <div class="d-flex justify-content-between">
                        <Bootstrap4Pagination
                            :data="campaignData"
                            :limit="limit"
                            :keep-length="keepLength"
                            @pagination-change-page="getCampaignReport"
                        />
                        <a target="_blank" :href="url+`get-campaign-report?excel=yes&date_from=${filterdata.from}&date_to=${filterdata.to}`" type="button" class="btn btn-info-a"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-download"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line x1="12" y1="15" x2="12" y2="3"></line></svg>  Excel</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</template>
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
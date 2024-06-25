<script>
import axios from "axios";
import Mixin from "../../mixer";
import { Bootstrap4Pagination } from "laravel-vue-pagination";
export default {
    mixins: [Mixin],
    components: {
        Bootstrap4Pagination,
    },

    data() {
        return {
            orders: [],
            filterdata : {
                payment_status:'',
                date:''
            },
            search: "",
            limit: 3,
            keepLength: false,
            url: baseUrl,
        };
    },

    methods: {
        getOrder(page = 1) {
            axios
                .get(
                    baseUrl +
                        `get-order?page=${page}&per_page=10&keyword=${this.search}&payment_status=${this.filterdata.payment_status}&from=${this.filterdata.date}&to=${this.filterdata.date}`
                )
                .then((result) => {
                    this.orders = result.data;
                })
                .catch((errors) => {
                    console.log(errors);
                });
        },
        getSearch() {
            if (this.search.length < 3) return;
            this.getOrder();
        },
        // filterClear() {
        //     this.search = "";
        //     this.filterdata = {
        //         payment_status:'',
        //         date:''
        //     };
        //     this.getOrder();
        // },
    },
    mounted() {
        this.getOrder();
    }
};
</script>

<template>
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
        <div class="widget widget-chart-one-dashboard">
            <div class="widget-heading-dashboard">
                <ul class="tabs tab-pills">
                    <li>
                        <a href="javascript:void(0);" id="tb_1latest" class="tabmenu"
                            >Latest orders</a
                        >
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-3 my-1">
                    <input
                        id="search"
                        @keyup="getSearch()"
                        placeholder="OrderID,Name,Phone,Email"
                        type="text"
                        class="form-control"
                        v-model="search"
                    />
                </div>
                <div class="col-md-9">
                    <div class="row justify-content-end">
                        <div class="col-md-3 my-1">
                            <input type="date" class="w-100" id="start" @change="getOrder()" name="trip-start" v-model="filterdata.date" min="01-01-2023" />
                        </div>
                        <div class="col-md-3 my-1">
                            <select class="w-100" name="pets" id="pet-select" @change="getOrder()"
                                v-model="filterdata.payment_status">
                                <option selected="" value="">Status</option>
                                <option value="1">Paid</option>
                                <option value="0">Unpaid</option>
                            </select>
                        </div>
                    </div>
                </div>

            </div>
            <hr />


            <div class="widget-content">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th><div class="th-content">Order ID</div></th>
                                <th><div class="th-content">Customer</div></th>
                                <th><div class="th-content">Date</div></th>
                                <th><div class="th-content">Price</div></th>
                                <th>
                                    <div class="th-content">Payment Type</div>
                                </th>
                                <th>
                                    <div class="th-content text-left">
                                        Payment Status
                                    </div>
                                </th>
                                <th>
                                    <div class="th-content text-left">
                                        View Details
                                    </div>
                                </th>
                                    <th>
                                    <div class="th-content text-left">
                                       Download PDF
                                    </div>
                                </th>
                            </tr>
                        </thead>
                        <tbody v-if="orders.data && orders.data.length > 0">
                            <template v-for="(order,ind) in orders.data" :key="ind">
                                <tr>
                                    <td>{{ order.order_id }}</td>
                                    <td>
                                        {{
                                            order.user_shipping_info.first_name
                                        }}
                                        {{ order.user_shipping_info.last_name }}
                                    </td>
                                    <td>{{ dateToString(order.order_date)}}</td>

                                    <td>{{ order.total_price }}</td>
                                    <td class="text-left">
                                        <span
                                            v-if="order.payment_status == 0"
                                            class="badge alert-primary"
                                            >COD</span
                                        >
                                        <span v-else class="badge badge-light"
                                            >Others</span
                                        >
                                    </td>
                                    <td cclass="text-left">
                                        <span
                                            v-if="order.payment_status == 0"
                                            class="badge alert-warning"
                                            >Unpaid</span
                                        >
                                        <span
                                            v-if="order.payment_status == 1"
                                            class="badge alert-primary"
                                            >Paid</span
                                        >
                                        <span
                                            v-if="order.payment_status == 2"
                                            class="badge badge-light"
                                            >Failed</span
                                        >
                                        <span
                                            v-if="order.payment_status == 3"
                                            class="badge alert-danger"
                                            >Cancel</span
                                        >
                                    </td>
                                    <td class="text-left">
                                        <a  class="btn btn-xs"
                                        :href="
                                                            baseUri+
                                                            'order-details/' +
                                                            order.id
                                                        "
                                            >View details</a
                                        >
                                    </td>
                                      <td class="text-left">
                                        <a  :href="baseUri+'order-details/'+order.id+'?from=pdf'" download class="btn btn-xs"
                                            >Download PDF</a
                                        >
                                    </td>
                                </tr>
                            </template>
                        </tbody>
                    </table>
                    <Bootstrap4Pagination
                        :data="orders"
                        :limit="3"
                        :keep-length="false"
                        @pagination-change-page="getOrder"
                    />
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
.btn-info-a {
    color: #fff;
    background-color: #3c5676 !important;
    border-color: #3c5676 !important;
}
.btn-info-a:hover {
    background-color: #3c5676;
    border-color: #3c5676;
}
</style>

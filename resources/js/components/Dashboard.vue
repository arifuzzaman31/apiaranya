<template>
    <div class="layout-px-spacing" v-if="loaded">
        <div class="row mt-3" style="display: flex; row-gap: 20px;">
            <div class="col-md-3 rounded">
                <div class="card" style="border-radius: 8px">
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;

                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="padding: 1rem 0.69rem!important; background-color: rgba(8, 129, 120, 0.2)"
                            >
                                <i
                                    class="icons icon icon-sm rounded-circle"
                                    style="
                                        background-color: rgb(8 129 120 / 65%);
                                        color: #fff;
                                        padding: 4px;
                                    "
                                >
                                <svg xmlns="http://www.w3.org/2000/svg" height="20" width="20" fill="none" viewBox="0 0 24 24" stroke-width="1" stroke="currentColor" class="w-6 h-6">
  <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 18.75a1.5 1.5 0 0 1-3 0m3 0a1.5 1.5 0 0 0-3 0m3 0h6m-9 0H3.375a1.125 1.125 0 0 1-1.125-1.125V14.25m17.25 4.5a1.5 1.5 0 0 1-3 0m3 0a1.5 1.5 0 0 0-3 0m3 0h1.125c.621 0 1.129-.504 1.09-1.124a17.902 17.902 0 0 0-3.213-9.193 2.056 2.056 0 0 0-1.58-.86H14.25M16.5 18.75h-2.25m0-11.177v-.958c0-.568-.422-1.048-.987-1.106a48.554 48.554 0 0 0-10.026 0 1.106 1.106 0 0 0-.987 1.106v7.635m12-6.677v6.677m0 4.5v-4.5m0 0h-12" />
</svg>

                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title">Total Order</h6>
                            <span>{{ order_info.ttl }}</span> <br />
                            <span class="text-sm">
                                Shipping fees are not included
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
            <div class="col-md-3 rounded ">
                <div class="card" style="border-radius: 8px">
                    <!-- <img class="card-img-top" src="" alt="Card image cap" /> -->
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;
                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="padding: 1rem 0.69rem!important; background-color: rgba(8, 129, 120, 0.2)"
                            >
                                <i
                                    class="icons icon icon-sm rounded-circle"
                                    style="
                                        background-color: rgb(8 129 120 / 65%);
                                        color: #fff;
                                        padding: 4px;
                                    "
                                >
                                    <svg xmlns="http://www.w3.org/2000/svg"  width="20"
                                        height="20" fill="none" viewBox="0 0 24 24" stroke-width="1" stroke="currentColor" class="w-6 h-6">
  <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v12m-3-2.818.879.659c1.171.879 3.07.879 4.242 0 1.172-.879 1.172-2.303 0-3.182C13.536 12.219 12.768 12 12 12c-.725 0-1.45-.22-2.003-.659-1.106-.879-1.106-2.303 0-3.182s2.9-.879 4.006 0l.415.33M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
</svg>

                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title">Pending Order</h6>
                            <span>{{ order_info.pending }}</span> <br />
                            <span class="text-sm">
                                Shipping fees are not included
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
            <div class="col-md-3 rounded">
                <div class="card" style="border-radius: 8px">
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;
                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="padding: 1rem 0.69rem!important; background-color: rgba(8, 129, 120, 0.2)"
                            >
                                <i
                                    class="icons icon icon-sm rounded-circle"
                                    style="
                                        background-color: rgb(8 129 120 / 65%);
                                        color: #fff;
                                        padding: 4px;
                                    "
                                >
                                    <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        fill="none"
                                        width="20"
                                        height="20"
                                        stroke-width="1"
                                        stroke="currentColor"
                                        class="w-6 h-6"
                                        viewBox="0 0 20 23"
                                    >
                                        <path
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            d="M15.59 14.37a6 6 0 0 1-5.84 7.38v-4.8m5.84-2.58a14.98 14.98 0 0 0 6.16-12.12A14.98 14.98 0 0 0 9.631 8.41m5.96 5.96a14.926 14.926 0 0 1-5.841 2.58m-.119-8.54a6 6 0 0 0-7.381 5.84h4.8m2.581-5.84a14.927 14.927 0 0 0-2.58 5.84m2.699 2.7c-.103.021-.207.041-.311.06a15.09 15.09 0 0 1-2.448-2.448 14.9 14.9 0 0 1 .06-.312m-2.24 2.39a4.493 4.493 0 0 0-1.757 4.306 4.493 4.493 0 0 0 4.306-1.758M16.5 9a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Z"
                                        />
                                    </svg>
                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title">On Delivery</h6>
                            <span>{{ order_info.processing }}</span> <br />
                            <span class="text-sm">
                                Shipping fees are not included
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
            <div class="col-md-3 rounded ">
                <div class="card" style="border-radius: 8px">
                    <!-- <img class="card-img-top" src="" alt="Card image cap" /> -->
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;
                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="padding: 1rem 0.69rem!important; background-color: rgba(8, 129, 120, 0.2)"
                            >
                                <i
                                    class="icons icon icon-sm rounded-circle"
                                    style="
                                        background-color: rgb(8 129 120 / 65%);
                                        color: #fff;
                                        padding: 4px;
                                    "
                                >
                                    <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        fill="none"
                                        viewBox="0 0 24 24"
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        class="w-6 h-6"
                                        width="20"
                                        height="20"
                                    >
                                        <path
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                            d="M6.429 9.75 2.25 12l4.179 2.25m0-4.5 5.571 3 5.571-3m-11.142 0L2.25 7.5 12 2.25l9.75 5.25-4.179 2.25m0 0L21.75 12l-4.179 2.25m0 0 4.179 2.25L12 21.75 2.25 16.5l4.179-2.25m11.142 0-5.571 3-5.571-3"
                                        />
                                    </svg>
                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                                Total Delivered
                            </h6>
                            <span>{{ order_info.delivered }}</span> <br />
                            <span class="text-sm">
                                Shipping fees are not included
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
            <div class="col-md-3 rounded ">
                <div class="card" style="border-radius: 8px">
                    <!-- <img class="card-img-top" src="" alt="Card image cap" /> -->
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;
                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="padding: 1rem 0.69rem!important; background-color: rgba(8, 129, 120, 0.2)"
                            >
                                <i
                                    class="icons icon icon-sm rounded-circle"
                                    style="
                                        background-color: rgb(8 129 120 / 65%);
                                        color: #fff;
                                        padding: 4px;
                                    "
                                >
                                <svg xmlns="http://www.w3.org/2000/svg"  width="20"
                                        height="20" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
  <path stroke-linecap="round" stroke-linejoin="round" d="M15.042 21.672 13.684 16.6m0 0-2.51 2.225.569-9.47 5.227 7.917-3.286-.672Zm-7.518-.267A8.25 8.25 0 1 1 20.25 10.5M8.288 14.212A5.25 5.25 0 1 1 17.25 10.5" />
</svg>

                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                                Active Order
                            </h6>
                            <span>{{ status_info.active }}</span> <br />
                            <span class="text-sm">
                                Shipping fees are not included
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
            <div class="col-md-3 rounded ">
                <div class="card" style="border-radius: 8px">
                    <!-- <img class="card-img-top" src="" alt="Card image cap" /> -->
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;

                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="padding: 1rem 0.69rem!important; background-color: rgba(8, 129, 120, 0.2)"
                            >
                                <i
                                    class="icons icon icon-sm rounded-circle"
                                    style="
                                        background-color: rgb(8 129 120 / 65%);
                                        color: #fff;
                                        padding: 4px;
                                    "
                                >
                                <svg xmlns="http://www.w3.org/2000/svg"  width="20"
                                        height="20" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
  <path stroke-linecap="round" stroke-linejoin="round" d="m20.25 7.5-.625 10.632a2.25 2.25 0 0 1-2.247 2.118H6.622a2.25 2.25 0 0 1-2.247-2.118L3.75 7.5m6 4.125 2.25 2.25m0 0 2.25 2.25M12 13.875l2.25-2.25M12 13.875l-2.25 2.25M3.375 7.5h17.25c.621 0 1.125-.504 1.125-1.125v-1.5c0-.621-.504-1.125-1.125-1.125H3.375c-.621 0-1.125.504-1.125 1.125v1.5c0 .621.504 1.125 1.125 1.125Z" />
</svg>

                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                                Cancel Order
                            </h6>
                            <span>{{ status_info.cancel }}</span> <br />
                            <span class="text-sm">
                                Shipping fees are not included
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
            <div class="col-md-3 rounded">
                <div class="card" style="border-radius: 8px">
                    <!-- <img class="card-img-top" src="" alt="Card image cap" /> -->
                    <div
                        class="card-body d-flex align-items-center"
                        style="
                            height: 100vh;
                            max-height: 143px;
                            column-gap: 20px;
                        "
                    >
                        <div>
                            <span
                                class="rounded-circle"
                                style="padding: 1rem 0.69rem!important; background-color: rgba(8, 129, 120, 0.2)"
                            >
                                <i
                                    class="icons icon icon-sm rounded-circle"
                                    style="
                                        background-color: rgb(8 129 120 / 65%);
                                        color: #fff;
                                        padding: 4px;
                                    "
                                >
                                <svg xmlns="http://www.w3.org/2000/svg"  width="20"
                                        height="20" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
  <path stroke-linecap="round" stroke-linejoin="round" d="M21 7.5V18M15 7.5V18M3 16.811V8.69c0-.864.933-1.406 1.683-.977l7.108 4.061a1.125 1.125 0 0 1 0 1.954l-7.108 4.061A1.125 1.125 0 0 1 3 16.811Z" />
</svg>

                                </i>
                            </span>
                        </div>
                        <div class="icons-content">
                            <h6 class="mb-1 card-title text-bold">
                                On-Hold Order
                            </h6>
                            <span>{{ status_info.onhold }}</span> <br />
                            <span class="text-sm">
                                Shipping fees are not included
                            </span>
                        </div>

                        <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="row sales layout-top-spacing">
            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one">
                    <div class="widget-heading">
                        <ul class="tabs tab-pills">
                            <li>
                                <a
                                    href="javascript:void(0);"
                                    id="tb_1"
                                    class="tabmenu"
                                    >Total Earning</a
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="widget-content">
                        <div class="tabs tab-content">
                            <div id="content_1" class="tabcontent">
                                <total-earning
                                    :totalEarning="totalEarning"
                                    height="303"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-two">
                    <div class="widget-heading">
                        <h5 class="">Sales by Category</h5>
                    </div>
                    <div class="widget-content">
                        <top-product :doughtData="doughtData" />
                    </div>
                </div>
            </div>

            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one">
                    <div class="widget-heading">
                        <ul class="tabs tab-pills">
                            <li>
                                <a
                                    href="javascript:void(0);"
                                    id="tb_1"
                                    class="tabmenu"
                                    >Current Year Customer</a
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="widget-content">
                        <div class="tabs tab-content">
                            <div id="content_1" class="tabcontent">
                                <customer-of-month :chartData="chartData" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div
                class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing"
            >
                <div class="widget widget-chart-one">
                    <div class="widget-heading">
                        <ul class="tabs tab-pills">
                            <li>
                                <a
                                    href="javascript:void(0);"
                                    id="tb_1"
                                    class="tabmenu"
                                    >Sales Of Month</a
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="widget-content">
                        <div class="tabs tab-content">
                            <div id="content_1" class="tabcontent">
                                <sales-of-month
                                    :totalEarning="totalSaleMonth"
                                    height="358"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
        <div class="widget widget-table-two">
            <div class="widget-heading">
                <h5 class="">Recent Orders</h5>
            </div>

            <div class="widget-content">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th><div class="th-content">OrderID</div></th>
                                <th><div class="th-content">Customer</div></th>
                                <th><div class="th-content">Price</div></th>
                                <th>
                                    <div class="th-content">Payment Type</div>
                                </th>
                                <th><div class="th-content">Payment</div></th>
                            </tr>
                        </thead>
                        <tbody v-if="orders && orders.length > 0">
                            <template v-for="order in orders" :key="order.id">
                                <tr>
                                    <td>{{ order.order_id }}</td>
                                    <td>
                                        {{
                                            order.user_shipping_info.first_name
                                        }}
                                        {{ order.user_shipping_info.last_name }}
                                    </td>
                                    <td>{{ order.total_price }}</td>
                                    <td class="text-center">
                                        <span
                                            v-if="order.payment_status == 0"
                                            class="badge badge-primary"
                                            >COD</span
                                        >
                                        <span v-else class="badge badge-light"
                                            >Others</span
                                        >
                                    </td>
                                    <td>
                                        <span
                                            v-if="order.payment_status == 0"
                                            class="badge badge-warning"
                                            >Unpaid</span
                                        >
                                        <span
                                            v-if="order.payment_status == 1"
                                            class="badge badge-primary"
                                            >Paid</span
                                        >
                                        <span
                                            v-if="order.payment_status == 2"
                                            class="badge badge-light"
                                            >Failed</span
                                        >
                                        <span
                                            v-if="order.payment_status == 3"
                                            class="badge badge-danger"
                                            >Cancel</span
                                        >
                                    </td>
                                </tr>
                            </template>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import CustomerOfMonth from "./chart/CustomerOfMonth.vue";
import SalesOfMonth from "./chart/SalesOfMonth.vue";
import TopProductSale from "./chart/TopProductSale.vue";
import TotalEarning from "./chart/TotalEarning.vue";

export default {
    components: {
        "total-earning": TotalEarning,
        "top-product": TopProductSale,
        "customer-of-month": CustomerOfMonth,
        "sales-of-month": SalesOfMonth,
    },

    data() {
        return {
            loaded: false,
            chartData: null,
            doughtData: null,
            totalEarning: null,
            totalSaleMonth: null,
            orders: [],
            order_info: {
                ttl: 0,
                pending: 0,
                processing: 0,
                delivered: 0,
            },
            status_info: {
                active: 0,
                cancel: 0,
                onhold: 0,
            },
        };
    },

    methods: {
        getOrder() {
            axios
                .get(baseUrl + `get-order?no_paginate=yes&take_some=10`)
                .then((result) => {
                    this.orders = result.data;
                })
                .catch((errors) => {
                    console.log(errors);
                });
        },

        getOrderInfo() {
            axios
                .get(baseUrl + `get-order-info`)
                .then((result) => {
                    result.data.countdata.map((item, i) => {
                        switch (item.order_position) {
                            case "0":
                                this.order_info.ttl = item.total;
                                break;
                            case "1":
                                this.order_info.pending = item.total;
                                break;
                            case "2":
                                this.order_info.processing = item.total;
                                break;
                            case "3":
                                this.order_info.delivered = item.total;
                                break;
                        }
                    });
                    result.data.orStatus.map((item, i) => {
                        switch (item.status) {
                            case "0":
                                this.status_info.cancel = item.order_status;
                                break;
                            case "1":
                                this.status_info.active = item.order_status;
                                break;
                            case "2":
                                this.status_info.onhold = item.order_status;
                                break;
                        }
                    });
                })
                .catch((errors) => {
                    console.log(errors);
                });
        },

        getDataMonth() {
            axios.get(baseUrl + "customer-of-this-month").then((response) => {
                this.chartData = {
                    labels: response.data.customer.map(
                        (item) => item.monthname
                    ),
                    datasets: [
                        {
                            label: "This Year Customer",
                            data: response.data.customer.map(
                                (item) => item.count
                            ),
                            backgroundColor: [
                                "rgba(255, 99, 132, 0.2)",
                                "rgba(255, 159, 64, 0.2)",
                                "rgba(255, 205, 86, 0.2)",
                                "rgba(75, 192, 192, 0.2)",
                                "rgba(54, 162, 235, 0.2)",
                                "rgba(153, 102, 255, 0.2)",
                                "rgba(201, 203, 207, 0.2)",
                                "rgba(255, 51, 51, 0.2)",
                                "rgba(51, 153, 255, 0.2)",
                                "rgba(255, 102, 255, 0.2)",
                                "rgba(255, 229, 204, 0.2)",
                                "rgba(102, 255, 102, 0.2)",
                            ],
                            borderColor: [
                                "rgb(255, 99, 132)",
                                "rgb(255, 159, 64)",
                                "rgb(255, 205, 86)",
                                "rgb(75, 192, 192)",
                                "rgb(54, 162, 235)",
                                "rgb(153, 102, 255)",
                                "rgb(201, 203, 207)",
                                "rgb(255, 51, 51)",
                                "rgb(51, 153, 255)",
                                "rgb(255, 102, 255)",
                                "rgb(255, 229, 204)",
                                "rgb(102, 255, 102)",
                            ],
                            borderWidth: 1,
                        },
                    ],
                };

                this.doughtData = {
                    labels: response.data.sale_by_cat.map(
                        (item) => item.catname
                    ),
                    datasets: [
                        {
                            backgroundColor: [
                                "#41B883",
                                "#E46651",
                                "#00D8FF",
                                "#DD1B16",
                                "#FF6347",
                                "#FF8C00",
                                "#9ACD32",
                                "#8A2BE2",
                                "#DA70D6",
                                "#F5DEB3",
                            ],
                            hoverOffset: 1,
                            data: response.data.sale_by_cat.map(
                                (item) => item.productsCount
                            ),
                        },
                    ],
                };

                this.totalEarning = {
                    labels: response.data.earning.map((itm) => itm.monthname),
                    datasets: [
                        {
                            label: "Total Earning",
                            backgroundColor: "#f87979",
                            data: response.data.earning.map(
                                (itm) => itm.total_earn
                            ),
                            fill: false,
                            borderColor: "rgb(75, 192, 192)",
                            tension: 0.1,
                        },
                    ],
                };

                this.totalSaleMonth = {
                    labels: response.data.sales_of_month.map(
                        (itm) => itm.dayname
                    ),
                    datasets: [
                        {
                            label: "Sales This Month",
                            backgroundColor: "#d17cfd",
                            data: response.data.sales_of_month.map(
                                (itm) => itm.total_sale
                            ),
                            fill: false,
                            borderColor: "rgb(255, 205, 86)",
                            tension: 0.1,
                        },
                    ],
                };
                this.loaded = true;
            });
        },
    },

    mounted() {
        this.getDataMonth();
        this.getOrder();
        this.getOrderInfo();
    },
};
</script>

<style>
.gdar {
    background: linear-gradient(
        linear-gradient(140deg, #6e85b1 0 34%, #d9dce0 -40% 51%)
    ) !important;
}
</style>

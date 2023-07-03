<template>
<div class="layout-px-spacing" v-if="loaded">
    <div class="row sales layout-top-spacing">
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
            <div class="widget widget-chart-one">
                <div class="widget-heading">
                    <ul class="tabs tab-pills">
                        <li><a href="javascript:void(0);" id="tb_1" class="tabmenu">Total Earning</a></li>
                    </ul>
                </div>

                <div class="widget-content">
                    <div class="tabs tab-content">
                        <div id="content_1" class="tabcontent"> 
                            <total-earning :totalEarning="totalEarning" height="303"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
            <div class="widget widget-chart-two">
                <div class="widget-heading">
                    <h5 class="">Sales by Category</h5>
                </div>
                <div class="widget-content">
                    <top-product :doughtData="doughtData" />
                </div>
            </div>
        </div>

        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
            <div class="widget widget-chart-one">
                <div class="widget-heading">
                    <ul class="tabs tab-pills">
                        <li><a href="javascript:void(0);" id="tb_1" class="tabmenu">Current Year Customer</a></li>
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

        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
            <div class="widget widget-chart-one">
                <div class="widget-heading">
                    <ul class="tabs tab-pills">
                        <li><a href="javascript:void(0);" id="tb_1" class="tabmenu">Sales Of Month</a></li>
                    </ul>
                </div>

                <div class="widget-content">
                    <div class="tabs tab-content">
                        <div id="content_1" class="tabcontent"> 
                           <sales-of-month :totalEarning="totalSaleMonth" height="358" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-12 layout-spacing">
            <div class="widget widget-chart-one">
                <div class="statbox">
                    <div class="widget-content widget-content-area rounded-pills-icon">
                        <ul class="nav nav-pills justify-content-around" id="rounded-pills-icon-tab" role="tablist">
                            <li class="nav-item ml-2 mr-2">
                                <a class="nav-link mb-2 text-center" id="rounded-pills-icon-home-tab" data-toggle="pill" href="#rounded-pills-icon-home" role="tab" aria-controls="rounded-pills-icon-home" aria-selected="false">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag"><path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path><line x1="3" y1="6" x2="21" y2="6"></line><path d="M16 10a4 4 0 0 1-8 0"></path></svg> Total Order <p class="text-success font-weight-bold">{{ order_info[0] ? order_info[0].ttl : 0 }}</p></a>
                            </li>
                            <li class="nav-item ml-2 mr-2">
                                <a class="nav-link mb-2 text-center" id="rounded-pills-icon-profile-tab" data-toggle="pill" href="#rounded-pills-icon-profile" role="tab" aria-controls="rounded-pills-icon-profile" aria-selected="false"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-package"><line x1="16.5" y1="9.4" x2="7.5" y2="4.21"></line><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg> Order Pending <p class="text-success font-weight-bold">{{ order_info[1] ? order_info[1].pending : 0 }}</p></a>
                            </li>
                            <li class="nav-item ml-2 mr-2">
                                <a class="nav-link mb-2 text-center" id="rounded-pills-icon-contact-tab" data-toggle="pill" href="#rounded-pills-icon-contact" role="tab" aria-controls="rounded-pills-icon-contact" aria-selected="false"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-refresh-cw"><polyline points="23 4 23 10 17 10"></polyline><polyline points="1 20 1 14 7 14"></polyline><path d="M3.51 9a9 9 0 0 1 14.85-3.36L23 10M1 14l4.64 4.36A9 9 0 0 0 20.49 15"></path></svg> Order Processing <p class="text-success font-weight-bold">{{ order_info[2] ? order_info[2].processing : 0 }}</p></a>
                            </li>

                            <li class="nav-item ml-2 mr-2">
                                <a class="nav-link mb-2 text-center" id="rounded-pills-icon-settings-tab" data-toggle="pill" href="#rounded-pills-icon-settings" role="tab" aria-controls="rounded-pills-icon-settings" aria-selected="true"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg> Total Delivered <p class="text-success font-weight-bold">{{ order_info[3] ? order_info[3].delivered : 0 }}</p></a>
                            </li>
                        </ul>
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
                            <th><div class="th-content">SL</div></th>
                            <th><div class="th-content">OrderID</div></th>
                            <th><div class="th-content">Customer</div></th>
                            <th><div class="th-content">Price</div></th>
                            <th><div class="th-content">Payment Type</div></th>
                            <th><div class="th-content">Payment</div></th>
                        </tr>
                    </thead>
                    <tbody v-if="orders && orders.length > 0">
                        <template v-for="(order,index) in orders" :key="order.id">
                            <tr>
                                <td>{{ index+1 }}</td>
                                <td>{{ order.order_id }}</td>
                                <td>{{ order.user.name }}</td>
                                <td>{{ order.total_price }}</td>
                                <td class="text-center">
                                    <span v-if="order.payment_status == 0" class="badge badge-primary">COD</span>
                                    <span v-else class="badge badge-light">Others</span>
                                </td>
                                <td>
                                    <span v-if="order.payment_status == 0" class="badge badge-warning">Unpaid</span>
                                    <span v-if="order.payment_status == 1" class="badge badge-primary">Paid</span>
                                    <span v-if="order.payment_status == 2" class="badge badge-light">Failed</span>
                                    <span v-if="order.payment_status == 3" class="badge badge-danger">Cancel</span>
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
import CustomerOfMonth from './chart/CustomerOfMonth.vue'
import SalesOfMonth from './chart/SalesOfMonth.vue'
import TopProductSale from './chart/TopProductSale.vue'
import TotalEarning from './chart/TotalEarning.vue'

export default {
    components: { 
        'total-earning' : TotalEarning,
        'top-product' : TopProductSale,
        'customer-of-month': CustomerOfMonth,
        'sales-of-month' : SalesOfMonth
    },

    data(){
        return {
            loaded: false,
            chartData: null,
            doughtData: null,
            totalEarning: null,
            totalSaleMonth: null,
            orders: [],
            order_info: []
        }
    },

    methods:{
        getOrder(){
            axios.get(baseUrl+`get-order?no_paginate=yes&take_some=10`)
            .then(result => {
                this.orders = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });  
        },

        getOrderInfo(){
            axios.get(baseUrl+`get-order-info`)
            .then(result => {
                var dt = ['ttl','pending','processing','delivered']
                result.data.map((item,i) => {
                    var colname = dt[item.order_position]
                    const obj={}
                    obj[colname] = item.total
                    this.order_info.push(obj)
                });
            })
            .catch(errors => {
                console.log(errors);
            });
        },

        getDataMonth(){
            axios.get(baseUrl+'customer-of-this-month')
            .then(response => {
                this.chartData = {
                    labels: response.data.customer.map(item => item.monthname),
                    datasets: [
                    {
                        label: 'This Year Customer',
                        data: response.data.customer.map(item => item.count),
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(255, 159, 64, 0.2)',
                            'rgba(255, 205, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(201, 203, 207, 0.2)',
                            'rgba(255, 51, 51, 0.2)',
                            'rgba(51, 153, 255, 0.2)',
                            'rgba(255, 102, 255, 0.2)',
                            'rgba(255, 229, 204, 0.2)',
                            'rgba(102, 255, 102, 0.2)'
                        ],
                        borderColor: [
                            'rgb(255, 99, 132)',
                            'rgb(255, 159, 64)',
                            'rgb(255, 205, 86)',
                            'rgb(75, 192, 192)',
                            'rgb(54, 162, 235)',
                            'rgb(153, 102, 255)',
                            'rgb(201, 203, 207)',
                            'rgb(255, 51, 51)',
                            'rgb(51, 153, 255)',
                            'rgb(255, 102, 255)',
                            'rgb(255, 229, 204)',
                            'rgb(102, 255, 102)'
                        ],
                        borderWidth: 1
                       
                    }
                    ]
                };

                this.doughtData = {
                    labels: response.data.sale_by_cat.map(item => item.catname),
                    datasets: [
                        {
                        backgroundColor: ['#41B883','#E46651','#00D8FF','#DD1B16','#FF6347','#FF8C00','#9ACD32','#8A2BE2','#DA70D6','#F5DEB3'],
                        hoverOffset: 1,
                        data: response.data.sale_by_cat.map(item => item.productsCount)
                        }
                    ]
                };

                this.totalEarning = {
                    labels: response.data.earning.map(itm => itm.monthname),
                    datasets: [
                        {
                        label: 'Total Earning',
                        backgroundColor: '#f87979',
                        data: response.data.earning.map(itm => itm.total_earn),
                        fill: false,
                        borderColor: 'rgb(75, 192, 192)',
                        tension: 0.1
                        }
                    ]
                }

                this.totalSaleMonth = {
                    labels: response.data.sales_of_month.map(itm => itm.dayname),
                    datasets: [
                        {
                        label: 'Sales This Month',
                        backgroundColor: '#d17cfd',
                        data: response.data.sales_of_month.map(itm => itm.total_sale),
                        fill: false,
                        borderColor: 'rgb(255, 205, 86)',
                        tension: 0.1
                        }
                    ]
                }
                this.loaded = true
            })

        }

    },

    mounted(){
        this.getDataMonth()
        this.getOrder()
        this.getOrderInfo()
    }
}
</script>

<style>

</style>
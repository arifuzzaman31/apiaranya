<template>
  <div class="row" v-if="loaded">
    <div class="col-md-6 col-sm-6 col-12">
        <total-earning :totalEarning="totalEarning" />
    </div>
    <div class="col-md-6 col-sm-6 col-12">  
        <top-product :doughtData="doughtData" />
    </div>
    <div class="col-md-6 col-sm-6 col-12">  
        <customer-of-month :chartData="chartData" />
    </div> 
     <div class="col-12 col-sm-6">
        <sales-of-month :totalEarning="totalSaleMonth" />
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
        }
    },

    methods:{
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
                        data: response.data.earning.map(itm => itm.total_earn)
                        }
                    ]
                }

                this.totalSaleMonth = {
                    labels: response.data.sales_of_month.map(itm => itm.dayname),
                    datasets: [
                        {
                        label: 'Sales This Month',
                        backgroundColor: '#d17cfd',
                        data: response.data.sales_of_month.map(itm => itm.total_sale)
                        }
                    ]
                }
                this.loaded = true
            })

        }

    },

    mounted(){
        this.getDataMonth()
    }
}
</script>

<style>

</style>
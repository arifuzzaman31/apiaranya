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
     <!-- <div class="col-12">  
        <sales-of-month />
    </div>  -->
</div>
</template>

<script>
import CustomerOfMonth from './chart/CustomerOfMonth.vue'
// import SalesOfMonth from './chart/SalesOfMonth.vue'
import TopProductSale from './chart/TopProductSale.vue'
import TotalEarning from './chart/TotalEarning.vue'

export default {
    components: { 
        'total-earning' : TotalEarning,
        'top-product' : TopProductSale,
        'customer-of-month': CustomerOfMonth,
    //     'sales-of-month' : SalesOfMonth
    },

    data(){
        return {
            loaded: false,
            chartData: null,
            doughtData: null,
            totalEarning: null,
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
                            'rgba(201, 203, 207, 0.2)'
                            ],
                            borderColor: [
                            'rgb(255, 99, 132)',
                            'rgb(255, 159, 64)',
                            'rgb(255, 205, 86)',
                            'rgb(75, 192, 192)',
                            'rgb(54, 162, 235)',
                            'rgb(153, 102, 255)',
                            'rgb(201, 203, 207)'
                            ],
                            borderWidth: 1
                       
                    }
                    ]
                };

                this.doughtData = {
                    labels: response.data.sale_by_cat.map(item => item.catname),
                    datasets: [
                        {
                        backgroundColor: ['#41B883', '#E46651', '#00D8FF', '#DD1B16'],
                        data: response.data.sale_by_cat.map(item => item.productsCount)
                        }
                    ]
                };

                this.totalEarning = {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
                    datasets: [
                        {
                        label: 'Total Earning',
                        backgroundColor: '#f87979',
                        data: [40, 39, 10, 40, 39, 80, 40]
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
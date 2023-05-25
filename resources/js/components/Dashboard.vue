<template>
  <div class="row">
    <div class="col-md-6 col-sm-6 col-12">
        <total-earning />
    </div> 
    <div class="col-md-6 col-sm-6 col-12">  
        <top-product />
    </div> 
    <div class="col-md-12 col-sm-6 col-12">  
        <customer-of-month />
    </div> 
    <div class="col-12">  
        <sales-of-month />
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
}
</script>

<style>

</style>
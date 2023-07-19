require('./vue-assets');

import { createApp } from 'vue';
import OrderReport from './components/report/OrderReport.vue';
import StockReport from './components/report/StockReport.vue';
import paymentReport from './components/report/paymentReport.vue';

const app = createApp({})

app.component('order-report', OrderReport)
app.component('stock-report', StockReport)
app.component('payment-report', paymentReport)
app.mount('#app')
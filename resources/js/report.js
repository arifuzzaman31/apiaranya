require('./vue-assets');

import { createApp } from 'vue';
import OrderReport from './components/report/OrderReport.vue';
import StockReport from './components/report/StockReport.vue';
import paymentReport from './components/report/paymentReport.vue';
import IndividualCustomerReport from './components/report/IndividualCustomerReport.vue';
import InvoiceReport from './components/report/InvoiceReport.vue';

const app = createApp({})

app.component('order-report', OrderReport)
app.component('stock-report', StockReport)
app.component('payment-report', paymentReport)
app.component('individual-customer-report', IndividualCustomerReport)
app.component('invoice-report', InvoiceReport)
app.mount('#app')
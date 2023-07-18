require('./vue-assets');

import { createApp } from 'vue';
import OrderReport from './components/report/OrderReport.vue';
import StockReport from './components/report/StockReport.vue';
// import ViewConfig from './components/report/ViewConfig.vue';

const app = createApp({})

app.component('order-report', OrderReport)
app.component('stock-report', StockReport)
// app.component('view-config', ViewConfig)
app.mount('#app')
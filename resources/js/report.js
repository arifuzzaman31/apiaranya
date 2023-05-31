require('./vue-assets');

import { createApp } from 'vue';
import OrderReport from './components/report/OrderReport.vue';
// import ApproveRefund from './components/refund/ApproveRefund.vue';
// import ViewConfig from './components/report/ViewConfig.vue';

const app = createApp({})

app.component('order-report', OrderReport)
// app.component('approve-refund', ApproveRefund)
// app.component('view-config', ViewConfig)
app.mount('#app')
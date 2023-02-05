require('./vue-assets');

import { createApp } from 'vue';
import ViewOrder from './components/order/ViewOrder.vue';
import ViewCustomer from './components/customer/ViewCustomer.vue';

const app = createApp({})
app.component('view-order', ViewOrder)
app.component('view-customer', ViewCustomer)
app.mount('#app')
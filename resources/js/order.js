require('./vue-assets');

import { createApp } from 'vue';
import ViewOrder from './components/order/ViewOrder.vue';
import ViewCustomer from './components/customer/ViewCustomer.vue';
<<<<<<< HEAD
=======
import ViewCustomerOrder from './components/customer/ViewCustomerOrder.vue';
>>>>>>> 61aedc59fb98f3e281503131099af59d41062474

const app = createApp({})
app.component('view-order', ViewOrder)
app.component('view-customer', ViewCustomer)
<<<<<<< HEAD
=======
app.component('customer-order', ViewCustomerOrder)
>>>>>>> 61aedc59fb98f3e281503131099af59d41062474
app.mount('#app')
require('./vue-assets');

import { createApp } from 'vue';
import ViewOrder from './components/order/ViewOrder.vue';

const app = createApp({})
app.component('view-order', ViewOrder)
app.mount('#app')
require('./vue-assets');

import { createApp } from 'vue';
import HomePage from './components/pages/HomePage.vue';
import Shipping from './components/pages/Shipping.vue';

const app = createApp({})
app.component('view-homepage', HomePage)
app.component('view-shipping', Shipping)
app.mount('#app')
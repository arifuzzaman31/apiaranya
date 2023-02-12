require('./vue-assets');

import { createApp } from 'vue';
import HomePage from './components/pages/HomePage.vue';

const app = createApp({})
app.component('view-homepage', HomePage)
app.mount('#app')
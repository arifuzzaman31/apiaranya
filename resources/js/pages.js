require('./vue-assets');

import { createApp } from 'vue';
import HomePage from './components/pages/HomePage.vue';
import Shipping from './components/pages/Shipping.vue';
import Media from './components/pages/MediaManager.vue';

const app = createApp({})
app.component('view-homepage', HomePage)
app.component('view-shipping', Shipping)
app.component('view-media', Media)
app.mount('#app')
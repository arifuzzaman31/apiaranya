require('./vue-assets');

import { createApp } from 'vue';
import ViewCategory from './components/category/ViewCategory.vue';

const app = createApp({})
app.component('view-category', ViewCategory)
app.mount('#app')
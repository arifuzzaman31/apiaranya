require('./vue-assets');

import { createApp } from 'vue';
import ViewProduct from './components/product/ViewProduct.vue';
import CreateProduct from './components/product/CreateProduct.vue';
import EditProduct from './components/product/EditProduct.vue';

const app = createApp({})
app.component('view-product', ViewProduct)
app.component('create-product', CreateProduct)
app.component('edit-product', EditProduct)
app.mount('#app')
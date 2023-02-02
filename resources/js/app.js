require('./vue-assets');

import { createApp } from 'vue';
import Test from './components/test/Test.vue';

const app = createApp({})

app.component('welcome', Test)

app.mount('#app')
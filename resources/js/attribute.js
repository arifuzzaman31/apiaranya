require('./vue-assets');
// import router from './router'

import { createApp } from 'vue';
import ViewColor from './components/attribute/color/ViewColor.vue';
import ViewSize from './components/attribute/size/ViewSize.vue';
import ViewFabric from './components/attribute/fabric/ViewFabric.vue';

const app = createApp({})
app.component('view-color', ViewColor)
app.component('view-size', ViewSize)
app.component('view-fabric', ViewFabric)
// app.use(router)
app.mount('#app')
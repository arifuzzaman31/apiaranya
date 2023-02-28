require('./vue-assets');
// import router from './router'

import { createApp } from 'vue';
import ViewColor from './components/attribute/color/ViewColor.vue';
import ViewSize from './components/attribute/size/ViewSize.vue';
import ViewFabric from './components/attribute/fabric/ViewFabric.vue';
import ViewVendor from './components/attribute/vendor/ViewVendor.vue';
import ViewArtist from './components/attribute/artist/ViewArtist.vue';
import ViewBrand from './components/attribute/brand/ViewBrand.vue';
import ViewDesigner from './components/attribute/designer/ViewDesigner.vue';

const app = createApp({})
app.component('view-color', ViewColor)
app.component('view-size', ViewSize)
app.component('view-fabric', ViewFabric)
app.component('view-vendor', ViewVendor)
app.component('view-artist', ViewArtist)
app.component('view-brand', ViewBrand)
app.component('view-designer', ViewDesigner)
// app.use(router)
app.mount('#app')
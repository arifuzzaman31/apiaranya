require('./vue-assets');

import { createApp } from 'vue';
import ViewCampaign from './components/campaign/ViewCampaign.vue';
import CreateCampaign from './components/campaign/CreateCampaign.vue';
import CampaignProduct from './components/campaign/CampaignProduct.vue';

const app = createApp({})
app.component('view-campaign', ViewCampaign)
app.component('create-campaign', CreateCampaign)
app.component('campaign-product', CampaignProduct)
app.mount('#app')
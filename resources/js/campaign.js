require('./vue-assets');

import { createApp } from 'vue';
import ViewCampaign from './components/campaign/ViewCampaign.vue';

const app = createApp({})
app.component('view-campaign', ViewCampaign)
app.mount('#app')
require('./vue-assets');

import { createApp } from 'vue';
import StoryHome from './components/story/StoryHome.vue';
import VLazyImage from "v-lazy-image";

const app = createApp({})
app.component('story-home', StoryHome)
app.component('v-lazy-image',VLazyImage)
app.mount('#app')

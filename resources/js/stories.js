require('./vue-assets');

import { createApp } from 'vue';
import StoryHome from './components/story/StoryHome.vue';
import StoryAbout from './components/story/StoryAbout.vue';
import StoryCommunity from './components/story/StoryCommunity.vue';
import EditCommunity from './components/story/EditCommunity.vue';
import StoryBlog from './components/story/StoryBlog.vue';
import CreateBlog from './components/story/CreateBlog.vue';
import EditBlog from './components/story/EditBlog.vue';
import VLazyImage from "v-lazy-image";

const app = createApp({})
app.component('story-home', StoryHome)
app.component('story-about', StoryAbout)
app.component('story-community', StoryCommunity)
app.component('edit-community', EditCommunity)
app.component('story-blog', StoryBlog)
app.component('create-blog', CreateBlog)
app.component('edit-blog', EditBlog)
app.component('v-lazy-image',VLazyImage)
app.mount('#app')

require('./vue-assets');

import { createApp } from 'vue';
import StoryHome from './components/story/StoryHome.vue';
import StoryAbout from './components/story/StoryAbout.vue';
import StoryCommunity from './components/story/StoryCommunity.vue';
import EditCommunity from './components/story/EditCommunity.vue';
import StoryBlog from './components/story/StoryBlog.vue';
import CreateBlog from './components/story/CreateBlog.vue';
import EditBlog from './components/story/EditBlog.vue';
import Sustainability from './components/story/Sustainability.vue';
import CreateSustainability from './components/story/CreateSustainability.vue';
import EditSustainability from './components/story/EditSustainability.vue';
import Certificate from './components/story/Certificate.vue';
import ViewColorStory from './components/story/ViewColorStory.vue';
import CreateColorStory from './components/story/CreateColorStory.vue';
import EditColorStory from './components/story/EditColorStory.vue';
import VLazyImage from "v-lazy-image";

const app = createApp({})
app.component('story-home', StoryHome)
app.component('story-about', StoryAbout)
app.component('story-community', StoryCommunity)
app.component('edit-community', EditCommunity)
app.component('story-blog', StoryBlog)
app.component('create-blog', CreateBlog)
app.component('edit-blog', EditBlog)
app.component('view-sustainability', Sustainability)
app.component('create-sustainability', CreateSustainability)
app.component('edit-sustainability', EditSustainability)
app.component('sustainability-certificate', Certificate)
app.component('color-story', ViewColorStory)
app.component('create-colorstory', CreateColorStory)
app.component('edit-colorstory', EditColorStory)
app.component('v-lazy-image',VLazyImage)
app.mount('#app')

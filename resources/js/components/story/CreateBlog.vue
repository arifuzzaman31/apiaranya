<script>
import Mixin from '../../mixer'
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import MediaHelper from '../common/MediaHelper.vue'
export default {
    mixins: [Mixin],
    components: {
        MediaHelper,QuillEditor
    },
    data(){
        return {
            form: {
                title: '',
                banner_image: '',
                short_description: '',
                description: '',
                status: 1
            },
            validation_error : {},
            url: baseUrl
        }
    },
    methods : {
        async createBlog(){
            await axios.post('create-blog',this.form).then(
                    response => {
                        if (response.data.status == "success") {
                            this.clearForm()
                        this.successMessage(response.data);
                        setTimeout(()=>{
                            window.location.href = "story-blog";
                        },1200)
                    }
                    }
                ). catch(e => {
                    if(e.response.status == 422){
                        this.validation_error = e.response.data.errors;
                        this.validationError();
                    }
                })
        },
        selectImage(item){
            this.form.banner_image = item
        },
        mediaModalOpen() {
            $("#pageMediaModal").modal("show");
        },
        clearForm(){
            this.form = {
                title: '',
                banner_image: '',
                short_description: '',
                description: '',
                status: 1
            }
        }
    }
}
</script>
<template>
<div class="row">
    <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
        <div class="statbox">
            <div class="widget-content widget-content-area">
                <form @submit.prevent="createBlog()">
                    <div class="form-group">
                        <label for="title-blog">Title</label>
                        <input type="text" class="form-control" v-model="form.title" id="title-blog" placeholder="Title">
                        <span
                            v-if="validation_error.hasOwnProperty('title')"
                            class="text-danger"
                        >
                            {{ validation_error.title[0] }}
                        </span>
                    </div>
                    <div class="form-group">
                        <button
                                type="button"
                                @click="mediaModalOpen()"
                                title="Change The Image"
                                class="btn btn-primary-log my-2"
                            >
                            Add Blog Image
                            </button>
                            <div class="container" style="align-items: center;">
                            <v-lazy-image
                                :src="form.banner_image"
                                class="card-img-top img-top"
                                alt="banner-link"
                                :src-placeholder="url + 'demo.png'"
                            />
                            </div>
                    </div>

                    <div class="form-group">
                        <label for="emp_passw">Short Description</label>
                        <textarea class="form-control" v-model="form.short_description" rows="4"></textarea>
                        <span
                            v-if="validation_error.hasOwnProperty('short_description')"
                            class="text-danger"
                        >
                            {{ validation_error.short_description[0] }}
                        </span>
                    </div>

                    <div class="row mt-1">
                        <div id="tooltips" class="col-lg-12 layout-spacing col-md-12">
                            <div class="widget-content ">
                                <label for="editor-container">Description</label>
                                <QuillEditor style="min-height:200px;" theme="snow" v-model:content="form.description" contentType="html" />
                            </div>
                        </div>
                    </div>
                    <button
                            type="submit"
                            title="Update The Image"
                            class="btn btn-primary-log my-2"
                        >
                            Submit
                        </button>
                </form>
            </div>
        </div>
    </div>
    <media-helper :setImg="selectImage">
        <template v-slot:viewimage>
            <div class="col-md-12 d-flex justify-content-center my-2">
                <v-lazy-image :src="form.banner_image" class="card-img-top" :alt="form.banner_image" :src-placeholder="url+'demo.png'" />
            </div>
        </template>
    </media-helper>
</div>
</template>
<style scoped>
.img-top {
    width: 50% !important;
}
</style>

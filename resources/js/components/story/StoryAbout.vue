<script>
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import Mixin from "../../mixer";
import MediaHelper from "../common/MediaHelper.vue";
export default {
    mixins: [Mixin],
    components: { MediaHelper, QuillEditor },
    data(){
        return {
            form:{
                title: '',
                description: '',
                feature_image: '',
                status: 1,
            },
            story:{},
            url:baseUrl
        }
    },
    methods: {
        getAboutData(){
                try{
                    axios.get(baseUrl+`get-about-info`)
                    .then(response => {
                        this.form.title = response.data.title
                        this.form.description = response.data.description
                        this.form.feature_image = response.data.feature_image
                    }).catch(error => {
                        console.log(error)
                    })
                }catch(e){
                    console.log(e)
                }
        },
        mediaModalOpen() {
            $("#pageMediaModal").modal("show");
        },
        selectImage(item) {
            this.form.feature_image = item;
        },
        updateHomeData(){
            axios
                .post(baseUrl + "update-about-section", this.form)
                .then((response) => {
                    if (response.data.status == "success") {
                        this.form.title = ''
                        this.form.description = ''
                        this.form.feature_image = ''
                        this.successMessage(response.data);
                        setTimeout(()=>{
                            window.location.href = "about-aranya";
                        },1200)
                    }
                })

        }
    },
    mounted(){
        this.getAboutData()
    }
}
</script>
<template>
<div class="row">
    <div id="tableHover" class="col-lg-12 col-12">
        <div class="statbox widget box box-shadow">
            <div>
                <h4 class="mx-2">About Aranya</h4>
            </div>
            <div class="widget-content widget-content-area">
                <button
                                type="button"
                                @click="mediaModalOpen()"
                                title="Change The Image"
                                class="btn btn-success my-2"
                            >
                            About Feature Image
                            </button>
                <div class="container">
                    <v-lazy-image
                        :src="form.feature_image"
                        class="card-img-top img-top"
                        alt="banner-link"
                        :src-placeholder="url + 'demo.png'"
                    />
                </div>

                <div>
                    <form @submit.prevent="updateHomeData()" method="post">
                        <div class="form-group mb-4">
                            <label for="title-about">Title</label>
                            <input type="text" v-model="form.title" class="form-control" id="title-about" placeholder="Write The Title">
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
                            class="btn btn-info my-2"
                        >
                            Update
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
        <media-helper :setImg="selectImage">
            <template v-slot:viewimage>
                <div class="col-md-12 d-flex justify-content-center my-2">
                    <v-lazy-image
                        :src="form.feature_image"
                        class="card-img-top"
                        alt="banner-link"
                        :src-placeholder="url + 'demo.png'"
                    />
                </div>
            </template>
        </media-helper>
</div>
</template>
<style scoped>
.img-top {
    width: 75% !important;
}
</style>

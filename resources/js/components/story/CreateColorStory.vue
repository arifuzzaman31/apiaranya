<script>
import Mixin from "../../mixer";
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import MediaHelper from "../common/MediaHelper.vue";
export default {
    mixins: [Mixin],
    props:["colors"],
    components: { MediaHelper,QuillEditor},
    data(){
        return {
            form: {
                title: '',
                short_description: '',
                description: '',
                feature_image: '',
                bg_image: '',
                pr_imgs: [],
                status: 1
            },
            page: 1,
            url: baseUrl,
            runningImg: '',
            setToField: '',
            validation_error: {},
        }
    },
    methods: {
        storeColorStory(){
            try{
                axios.post('color-story',this.form).then(
                    response => {
                        if (response.data.status == "success") {
                                this.clearForm()
                            this.successMessage(response.data);
                            setTimeout(()=>{
                                window.location.href = this.url+"story-color-story";
                            },1200)
                        }
                    }
                ). catch(e => {
                    if(e.response.status == 422){
                        this.validation_error = e.response.data.errors;
                        this.validationError();
                    }
                })

            }catch(e){
                if(e.response.status == 422){
                    errors.value = e.response.data.errors;
                }
                this.validationError();
            }
        },
        selectImages(item) {
            if(this.setToField == 'pr-img'){
                if(this.form.pr_imgs && this.form.pr_imgs.length < 4){
                    this.form.pr_imgs.push(item)
                    new Set([...this.form.pr_imgs])
                } else {
                    this.validationError({"message":"Maximum 4 File Upload!"})
                }
            }else{
                this.setImgLink(item)
            }
        },
        mediaModalOpen(setTo){
            this.setToField = ''
            this.setToField = setTo
            $("#pageMediaModal").modal("show");
        },
        setImgLink(file_link){
            this.runningImg = file_link
            switch (this.setToField) {
                case 'feature':
                    this.form.feature_image = file_link
                    break;
                case 'bg-img':
                        this.form.bg_image = file_link
                    break;

                default:
                    break;
            }
        },
        clearForm(){
            this.form = {
                title:'',
                short_description:'',
                description:'',
                feature_image: '',
                bg_image: '',
                color_id:'',
                pr_imgs:[],
                status:1
            }
        }
    },
    mounted(){
    }
}
</script>

<template>
    <div class="row">
        <div id="tableHover" class="col-lg-12 col-12">
            <div class="statbox widget box box-shadow">
                <div>
                    <h4 class="mx-2">Add Color-Story</h4>
                </div>
                <div class="widget-content widget-content-area">
                    <form @submit.prevent="storeColorStory()">
                        <div class="form-row mb-4">
                                <div class="col-md-4 col-12 mb-2">
                                    <label for="title-color">Title</label>
                                    <input type="text" v-model="form.title" id="title-color" class="form-control" required placeholder="title">
                                    <span
                                        v-if="validation_error.hasOwnProperty('title')"
                                        class="text-danger"
                                    >
                                        {{ validation_error.title[0] }}
                                    </span>
                                </div>
                                <div class="col-md-4 col-12 mb-2">
                                    <label for="fabric">Add Color</label>

                                    <select
                                        id="fabric"
                                        class="form-control"
                                        v-model="form.color_id" required
                                    >
                                        <option selected="" value="">
                                            Choose Color
                                        </option>
                                        <option
                                            v-for="(value, index) in colors"
                                            :value="value.value"
                                            :key="index"
                                        >
                                            {{ value.name }}
                                        </option>
                                    </select>

                                </div>

                                <div class="col-12 mb-2">
                                    <label for="campdate">Short Description</label>
                                    <textarea required v-model="form.short_description" class="form-control"  placeholder="Short Description"></textarea>
                                    <span
                                        v-if="validation_error.hasOwnProperty('short_description')"
                                        class="text-danger"
                                    >
                                        {{ validation_error.short_description[0] }}
                                    </span>
                                </div>
                                <div class="col-12 mb-2">
                                <div id="tooltips" class="col-lg-12 layout-spacing col-md-12">
                                        <div class="widget-content ">
                                            <label for="editor-container">Description</label>
                                            <QuillEditor theme="snow" v-model:content="form.description" contentType="html" required />
                                        </div>
                                    </div>
                                </div>


                                <div class="col-12 my-2 text-center">
                                    <button type="button" class="btn btn-sm btn-info" @click="mediaModalOpen('pr-img')">Upload files</button>
                                </div>
                                <div class="col-md-3 d-flex justify-content-center" v-for="(itm,index) in this.form.pr_imgs" :key="index">
                                    <img :src="itm" class="img-fluid img-top rounded" />
                                    <button type="button" @click="() => this.form.pr_imgs.splice(index, 1)" class="close text-danger image-close" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="col-md-6 mt-3">
                                    <button
                                        type="button"
                                        @click="mediaModalOpen('feature')"
                                        title="Change The Image"
                                        class="btn btn-success my-2"
                                    >
                                    Add Feature Image
                                    </button>
                                    <div class="container">
                                        <v-lazy-image
                                            :src="form.feature_image"
                                            class="card-img-top img-top"
                                            alt="banner-link"
                                            :src-placeholder="url + 'demo.png'"
                                        />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <button
                                        type="button"
                                        @click="mediaModalOpen('bg-img')"
                                        title="Change The Image"
                                        class="btn btn-info my-2"
                                    >
                                    Add Details Image
                                    </button>
                                    <div class="container">
                                        <v-lazy-image
                                            :src="form.bg_image"
                                            class="card-img-top img-top"
                                            alt="banner-link"
                                            :src-placeholder="url + 'demo.png'"
                                        />
                                    </div>
                                </div>
                                <div class="form-group col-md-4">
                                    <div class="form-group">
                                        <select id="status-id" class="form-control  form-control-sm" v-model="form.status">
                                            <option value="0">Deactive</option>
                                            <option value="1">Active</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer md-button">
                              <button type="submit" class="btn btn-info-a">Submit</button>

                            </div>

                            </form>
                </div>
            </div>
        </div>
        <media-helper :setImg="selectImages">
            <template v-slot:viewimage>
                <div v-if="setToField == 'pr-img'" class="col-md-12 d-flex justify-content-center my-2" v-for="(itm,index) in this.form.pr_imgs" :key="index">
                    <img :src="itm" class="rounded" style="width:70%" />
                    <button type="button" @click="() => this.form.pr_imgs.splice(index, 1)" class="close text-danger image-close" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="col-md-12 d-flex justify-content-center my-2">
                    <v-lazy-image :src="runningImg" class="card-img-top" :alt="runningImg" :src-placeholder="url+'demo.png'" />
                </div>
            </template>
        </media-helper>
    </div>
</template>
<style scoped>
.controlss{
    width: 80% !important;
}
.img-top{
    max-width: 40% !important;
}
.modal-dialog {
  min-width: 92%;
  height: 80%;
  bottom: 0;
  padding: 0;
  top:40;
}
.component-card_selected {
    box-shadow: 4px 6px 10px -3px #bfc9d4;
}
.modal-content {
  height: auto;
  min-width: 100%;
  min-height: 100%;
  border-radius: 0;
  bottom: 0;
}
</style>

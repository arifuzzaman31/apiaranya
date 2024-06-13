<script>
import Mixin from "../../mixer";
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import MediaHelper from "../common/MediaHelper.vue";
export default {
    mixins: [Mixin],
    props:["commun"],
    components: { MediaHelper,QuillEditor},
    data(){
        return {
            form: {
                id: '',
                title: '',
                short_description: '',
                description: '',
                feature_image: '',
                detail_image: '',
                district_name: '',
                fabric_id: 0,
                pr_imgs: [],
                status: 0
            },
            allImages: [],
            fabrics: [],
            page: 1,
            url: baseUrl,
            runningImg: '',
            setToField: '',
            validation_error: {},
        }
    },
    methods: {
        setData(community){
            this.form.id = community.id
            this.form.title = community.title
            this.form.short_description = community.short_description
            this.form.description = community.description
            this.form.fabric_id = community.fabric_id
            this.form.feature_image = community.feature_image
            this.form.detail_image = community.detail_image
            this.form.district_name = community.district_name
            this.form.pr_imgs = community.pr_imgs ? JSON.parse(community.pr_imgs) : []
            this.form.status = community.status
        },
        selectImages(item) {
            if(this.form.pr_imgs && this.form.pr_imgs.length < 4){
                this.form.pr_imgs.push(item)
                new Set([...this.form.pr_imgs])
            } else {
                this.validationError({"message":"Maximum 4 File Upload!"})
            }
        },
        mediaModalOpen() {
            $("#pageMediaModal").modal("show");
        },
        mediaModalCall(setTo){
            this.setToField = setTo
            $("#mediaModalComm").modal("show");
        },
        setImgLink(file_link){
            this.runningImg = file_link
            switch (this.setToField) {
                case 'feature':
                    this.form.feature_image = file_link
                    break;
                case 'detail':
                        this.form.detail_image = file_link
                    break;

                default:
                    break;
            }
        },
        getAllImageData(){
            axios.get(baseUrl+`media-manager/create?page=${this.page}&per_page=12`)
            .then(result => {
                if(this.page == 1){
                    this.allImages = result.data;
                } else {
                    this.allImages.data.push(...result.data.data)
                }
                // this.allImages.data.map(itm => [...itm,{isSelected:true}])
            })
            .catch(errors => {
                console.log(errors);
            });
        },
        getFabricData(){
            axios.get(baseUrl+`fabrics/create?no_paginate=yes`)
            .then(result => {
                this.fabrics = result.data;
            })
            .catch(errors => {
                console.log(errors);
            });
        },
        updateCommunity(){
            axios.put(baseUrl+`update-community-data`,this.form)
            .then((response) => {
                if (response.data.status == "success") {
                    this.clearForm()
                    this.successMessage(response.data);
                    setTimeout(()=>{
                        window.location = baseUrl+"story-community";
                    },1200)
                }
            })
        },
        clearForm(){
            this.form = {
                id:'',
                title:'',
                short_description:'',
                description:'',
                fabric_id:'',
                feature_image:'',
                detail_image:'',
                district_name:'',
                pr_imgs:[],
                status:''
            }
        },
        loadMore(){
            this.page++
            this.getAllImageData()
        }
    },
    mounted(){
        this.setData(this.commun)
        this.getAllImageData()
        this.getFabricData()
    }
}
</script>

<template>
    <div class="row">
        <div id="tableHover" class="col-lg-12 col-12">
            <div class="statbox widget box box-shadow">
                <div>
                    <h4 class="mx-2">Edit Community</h4>
                </div>
                <div class="widget-content">
                    <form @submit.prevent="updateCommunity()">
                        <div class="form-row mb-4">
                                <div class="col-md-6 col-12 mb-2">
                                    <label for="title-comm">Title</label>
                                    <input type="text" v-model="form.title" id="title-comm" class="form-control" required placeholder="title">
                                    <span
                                        v-if="validation_error.hasOwnProperty('title')"
                                        class="text-danger"
                                    >
                                        {{ validation_error.title[0] }}
                                    </span>
                                </div>
                                <div class="col-md-6 col-12 mb-2">
                                    <label for="area-comm">Area Name</label>
                                    <select
                                        id="area"
                                        class="form-control"
                                        v-model="form.district_name" required
                                    >
                                        <option selected="" value="">Choose Dristict</option>
                                        <option value="Rangpur"> Rangpur </option>
                                        <option value="Nawabganj"> Nawabganj </option>
                                        <option value="Sirajganj"> Sirajganj </option>
                                        <option value="Rajshahi"> Rajshahi </option>
                                        <option value="Mymensingh"> Mymensingh </option>
                                        <option value="Tangail"> Tangail </option>
                                        <option value="Gazipur"> Gazipur </option>
                                        <option value="Sylhet"> Sylhet </option>
                                        <option value="Jhinaidaha"> Jhinaidaha </option>
                                        <option value="Jassore"> Jassore </option>
                                        <option value="Patuakhali"> Patuakhali </option>
                                        <option value="Rangamati"> Rangamati </option>
                                        <option value="Bandarban"> Bandarban </option>
                                    </select>
                                </div>
                                <div class="col-md-6 col-12 mb-2">
                                    <label for="fabric">Add Fabric</label>

                                    <select
                                        id="fabric"
                                        class="form-control"
                                        v-model="form.fabric_id" required
                                    >
                                        <option selected="" value="">
                                            Choose Fabric
                                        </option>
                                        <option
                                            v-for="(value, index) in fabrics"
                                            :value="value.id"
                                            :key="index"
                                        >
                                            {{ value.fabric_name }}
                                        </option>
                                    </select>

                                </div>
                                <div class="col-md-6 col-12 mb-2">
                                    <label for="title-comm">Status</label>
                                        <select id="status-id" class="form-control  form-control-sm" v-model="form.status">
                                            <option value="0">Deactive</option>
                                            <option value="1">Active</option>
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
                                        <div class="">
                                            <label for="editor-container">Description</label>
                                            <QuillEditor theme="snow" v-model:content="form.description" contentType="html" required />
                                        </div>
                                </div>


                                <div class="col-12 my-2 text-center">
                                    <button type="button" class="btn btn-sm btn-primary-log" @click="mediaModalOpen()">Upload files</button>
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
                                        @click="mediaModalCall('feature')"
                                        title="Change The Image"
                                        class="btn btn-primary-log my-2"
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
                                        @click="mediaModalCall('detail')"
                                        title="Change The Image"
                                        class="btn btn-primary-log my-2"
                                    >
                                    Add Details Image
                                    </button>
                                    <div class="container">
                                        <v-lazy-image
                                            :src="form.detail_image"
                                            class="card-img-top img-top"
                                            alt="banner-link"
                                            :src-placeholder="url + 'demo.png'"
                                        />
                                    </div>
                                </div>

                            </div>
                            <div class="modal-footer md-button">
                              <button type="submit" class="btn btn-primary-log">Update</button>

                            </div>

                            </form>
                </div>
            </div>
        </div>
        <media-helper :setImg="selectImages">
            <template v-slot:viewimage>
                <div class="col-md-12 d-flex justify-content-center my-2" v-for="(itm,index) in this.form.pr_imgs" :key="index">
                    <img :src="itm" class="rounded" style="width:70%" />
                    <button type="button" @click="() => this.form.pr_imgs.splice(index, 1)" class="close text-danger image-close" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </template>
        </media-helper>
        <div id="mediaModalComm" class="modal animated fadeInUp custo-fadeInBottom" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Media</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>

                    <div class="modal-body">
                        <div class="widget-content">
                            <div class="statbox widget">
                                <div class="widget-header">
                                    <div class="row">
                                        <div class="col-md-9 border-right" style="height: 75vh;overflow-y: auto;">
                                            <div class="row" v-if="allImages.data && allImages.data.length > 0">
                                                <div class="col-xl-2 col-md-3 col-sm-6 col-12" v-for="(item,ind) in allImages.data" :key="ind">
                                                    <div class="card component-card_2 mb-1">
                                                        <a href="#" type="button" @click="setImgLink(item.file_link)">
                                                            <v-lazy-image class="card-img-top" :src="item.file_link" :alt="item.product_name" :src-placeholder="url+'demo.png'" v-if="item.file_type != 'video'" />
                                                            <video :src="item.file_link" v-else autoplay muted controls class="controlss"></video>
                                                            <div class="card-body">
                                                                <h6 class="card-title">{{ item.product_name }}</h6>
                                                                <p class="card-text">{{ item.extension }}</p>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <button v-if="allImages.data && allImages.data.length > 0 && page < allImages.last_page" @click="loadMore()" class="btn btn-primary mt-4">Load More</button>
                                        </div>
                                        <div class="col-md-3"  style="max-height: 75vh;overflow-y: auto;">
                                            <v-lazy-image
                                                :src="runningImg"
                                                class="card-img-top"
                                                alt="banner-link"
                                            />
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="mt-2 d-flex justify-content-center">
                                <button class="btn btn-info" data-dismiss="modal"><i class="flaticon-cancel-12"></i>Select & Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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

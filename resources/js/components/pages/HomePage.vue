<script>
import Mixin from '../../mixer'
import MediaHelper from '../common/MediaHelper.vue'
export default {
  components: { MediaHelper },
    mixins: [Mixin],
    data() {
        return {
            form: {
                image_one: '',
                back_url_one: '',
                image_two: '',
                back_url_two: '',
                image_three: '',
                back_url_three: '',
                image_four: '',
                back_url_four: '',
                image_five: '',
                back_url_five: ''
            },
            updateFormdata: {
                category: '',
                categoryname: '',
                subcategory: '',
                imageuri: '',
                imagenumb: '',
                back_url: '',
                state: 'home'
            },
            url: baseUrl,
            allcategories: [],
            allsubcategories: [],
            target_state: '',
            allfiltersubcategories: [],
            validation_error: {},
        }
    },

    methods: {
            setImage(numb,uri){
                switch (numb) {
                    case 'one':
                        this.form.image_one = uri
                        this.updateFormdata.imageuri = uri
                        this.updateFormdata.imagenumb = 'one'
                        break;
                    case 'two':
                        this.form.image_two = uri
                        this.updateFormdata.imageuri = uri
                        this.updateFormdata.imagenumb = 'two'
                        break;
                    case 'three':
                        this.form.image_three = uri
                        this.updateFormdata.imageuri = uri
                        this.updateFormdata.imagenumb = 'three'
                        break;

                    case 'four':
                        this.form.image_four = uri
                        this.updateFormdata.imageuri = uri
                        this.updateFormdata.imagenumb = 'four'
                        break;

                    case 'five':
                        this.form.image_five = uri
                        this.updateFormdata.imageuri = uri
                        this.updateFormdata.imagenumb = 'five'
                        break;
                
                    default:
                        break;
                }
            },

            updateImage(){
                axios.post(baseUrl+'update-home-image',this.updateFormdata).then(response => {
                    if(response.data.status == 'success'){
                        // this.getHomeData()
                        this.clearFilter()
                        this.successMessage(response.data)
                    }
                })
            },

            getHomeData(){
                axios.get(baseUrl+'get-home-pagedata').then(response => {
                    this.form.image_one = response.data.image_one
                    this.form.image_two = response.data.image_two
                    this.form.image_three = response.data.image_three
                    this.form.image_four = response.data.image_four
                    this.form.image_five = response.data.image_five

                    this.form.back_url_two = response.data.back_url_two
                    this.form.back_url_three = response.data.back_url_three
                    this.form.back_url_four = response.data.back_url_four
                    this.form.back_url_five = response.data.back_url_five
                    this.form.back_url_six = response.data.back_url_six
                })
            },

            getCategory() {
                axios.get(baseUrl+'get-category?no_paginate=yes').then(response => {
                        let res = response.data.filter(data => data.parent_category == 0)
                        let subcat = response.data.filter(data => data.parent_category != 0)
                        this.allcategories = res
                        this.allfiltersubcategories = subcat
                    })
            },
            getSubCategories() {
                this.updateFormdata.categoryname = this.updateFormdata.category.slug
                const updateFormData = (this.allfiltersubcategories).filter((data) => data.parent_category == this.updateFormdata.category.id)
                this.allsubcategories = updateFormData
                this.form.back_url = this.updateFormdata.category.slug+'/'+this.updateFormdata.subcategory
            },

            clearFilter(){
                this.updateFormdata = {
                    category: '',
                    categoryname: '',
                    subcategory: '',
                    imageuri: '',
                    imagenumb: '',
                    back_url: '',
                    state: 'home'
                }
                this.allsubcategories = []
            },

        openPageMediaModal(serial){
            this.updateFormdata.imagenumb = serial
            $("#pageMediaModal").modal('show');
        },

        selectImage(item){
            this.updateFormdata.imageuri = item
            this.setImage(this.updateFormdata.imagenumb,item)
        }
    },
    mounted(){
        this.getHomeData()
        this.getCategory()
    },
    computed: {
        showPermission() {
            return window.userPermission;
        }
    }
}
</script>

<template>
    <div id="tabsBordered" class="col-lg-12 col-12 layout-spacing">
        <div class="statbox widget box box-shadow">
            <div class="widget-header">
                <div class="row">
                    <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                        <h4>Home Page</h4>
                    </div>
                </div>
            </div>
            <div class="widget-content widget-content-area vertical-border-pill">

                <div class="row mb-4 mt-3">
                    <div class="col-sm-3 col-12">
                        <div class="nav flex-column nav-pills mb-sm-0 mb-3 text-center mx-auto" id="v-border-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="v-border-pills-home-tab" data-toggle="pill" href="#v-border-pills-home" role="tab" aria-controls="v-border-pills-home" aria-selected="false">Video</a>
                            <a class="nav-link text-center" id="v-border-pills-profile-tab" data-toggle="pill" href="#v-border-pills-profile" role="tab" aria-controls="v-border-pills-profile" aria-selected="false">Image 1</a>
                            <a class="nav-link text-center" id="v-border-pills-messages-tab" data-toggle="pill" href="#v-border-pills-messages" role="tab" aria-controls="v-border-pills-messages" aria-selected="false">Image 2</a>
                            <a class="nav-link text-center" id="v-border-pills-settings-tab" data-toggle="pill" href="#v-border-pills-settings" role="tab" aria-controls="v-border-pills-settings" aria-selected="true">Image 3</a>
                            <a class="nav-link text-center" id="v-border-pills-image5-tab" data-toggle="pill" href="#v-border-pills-image5" role="tab" aria-controls="v-border-pills-image5" aria-selected="true">Image 4</a>
                        </div>
                    </div>

                    <div class="col-sm-6 col-12">
                        <div class="tab-content" id="v-border-pills-tabContent">
                            <div class="tab-pane fade active show" id="v-border-pills-home" role="tabpanel" aria-labelledby="v-border-pills-home-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Video Should be (1440 x 900) px, Ratio (16:9)</span>
                                </div>
                                <input type="submit" v-if="showPermission.includes('page-update')" class="btn btn-info btn-block mb-4 mr-2 controlss" @click="openPageMediaModal('one')" value="File Upload" />
                                <!-- <img class="mr-3" :src="form.image_one" alt="Home image one" />  -->
                                <video :src="form.image_one" autoplay muted controls class="controlss"></video>  
                                                                 
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-profile" role="tabpanel" aria-labelledby="v-border-pills-profile-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (1440 x 900) px, Ratio (16:9)</span>
                                </div>
                                <input type="submit" v-if="showPermission.includes('page-update')" class="btn btn-info btn-block mb-4 mr-2 controlss" @click="openPageMediaModal('two')" value="File Upload" />
                                <v-lazy-image class="mr-3 controlss" :src="form.image_two" alt="Home image two" :src-placeholder="url+'demo.png'" />
                                <p>Back Url: domain/{{ form.back_url_two }}</p>   
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-messages" role="tabpanel" aria-labelledby="v-border-pills-messages-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                                </div>
                                <input type="submit" v-if="showPermission.includes('page-update')" class="btn btn-info btn-block mb-4 mr-2 controlss"  @click="openPageMediaModal('three')" value="File Upload" />
                                <v-lazy-image width="600" class="mr-3 controlss" :src="form.image_three" alt="Home image three" :src-placeholder="url+'demo.png'" />
                                <p>Back Url: domain/{{ form.back_url_three }}</p>
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-settings" role="tabpanel" aria-labelledby="v-border-pills-settings-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                                </div>
                                <input type="submit" v-if="showPermission.includes('page-update')" class="btn btn-info btn-block mb-4 mr-2 controlss"  @click="openPageMediaModal('four')" value="File Upload" />
                          
                                <v-lazy-image width="600" class="mr-3" :src="form.image_four" alt="Home image four" :src-placeholder="url+'demo.png'" />
                                <p>Back Url: domain/{{ form.back_url_four }}</p>
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-image5" role="tabpanel" aria-labelledby="v-border-pills-image5-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (1440 x 700) px, Ratio (16:9)</span>
                                </div>
                                <input type="submit" v-if="showPermission.includes('page-update')" class="btn btn-info btn-block mb-4 mr-2 controlss" @click="openPageMediaModal('five')" value="File Upload" />
                              
                                <v-lazy-image width="600" class="mr-3" :src="form.image_five" alt="Home image five" :src-placeholder="url+'demo.png'" />
                                <p>Back Url: domain/{{ form.back_url_five }}</p>
                            </div>

                        </div>
                    </div>
                    
                    <div class="col-sm-3 col-12">
                        <p class="text-success" style="font-size:17px">Create Back Link</p>
                        <div class="my-2">
                            <select id="product-category" class="form-control" @change="getSubCategories()" v-model="updateFormdata.category">
                                <option selected="" value="">Choose Category</option>
                                <option v-for="(value,index) in allcategories" :value="value" :key="index">{{ value.category_name }}</option>
                            </select>
                        </div>
                        <div>
                            <select id="product-updateFormdata" class="form-control" v-model="updateFormdata.subcategory">
                                <option value="">Choose...</option>
                                <option v-for="(value,index) in allsubcategories" :value="value.slug" :key="index">{{ value.category_name }}</option>
                            </select>
                        </div>
                        <button type="submit" @click="updateImage()" v-if="showPermission.includes('page-update')" class="btn btn-info btn-block my-2">Update</button>
                       
                    </div>
                </div>
            </div>
        </div>
        <media-helper :setImg="selectImage">
            <template v-slot:viewimage>
                <div class="col-md-12 d-flex justify-content-center my-2">
                    <v-lazy-image :src="updateFormdata.imageuri" class="card-img-top" :alt="updateFormdata.imageuri" :src-placeholder="url+'demo.png'" v-if="updateFormdata.imagenumb != 'one'" />
                    <video :src="updateFormdata.imageuri" v-else autoplay muted controls class="controlss"></video>
                </div>
            </template>
        </media-helper>
    </div>
</template>

<style scoped>
.controlss{
    width: 80% !important;
}
.modal-dialog {
  min-width: 92%;
  height: 80%;
  bottom: 0;
  padding: 0;
  top:40;
}

.modal-content {
  height: auto;
  min-width: 100%;
  min-height: 100%;
  border-radius: 0;
  bottom: 0;
}
</style>
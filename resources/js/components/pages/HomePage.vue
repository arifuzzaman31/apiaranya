<script>
import Mixin from '../../mixer'
export default {
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
            filterdata: {
                category: '',
                categoryname: '',
                subcategory: '',
                imageuri: '',
                imagenumb: '',
                back_url: '',
                state: 'home'
            },
            filterdata: {
                imgs: []
            },
            allcategories: [],
            allImages: [],
            allsubcategories: [],
            page: 1,
            target_state: '',
            media_keyword: '',
            allfiltersubcategories: [],
            validation_error: {},
        }
    },

    methods: {
            setImage(numb,uri){
                switch (numb) {
                    case 'one':
                        this.form.image_one = uri
                        this.filterdata.imageuri = uri
                        this.filterdata.imagenumb = 'one'
                        break;
                    case 'two':
                        this.form.image_two = uri
                        this.filterdata.imageuri = uri
                        this.filterdata.imagenumb = 'two'
                        break;
                    case 'three':
                        this.form.image_three = uri
                        this.filterdata.imageuri = uri
                        this.filterdata.imagenumb = 'three'
                        break;

                    case 'four':
                        this.form.image_four = uri
                        this.filterdata.imageuri = uri
                        this.filterdata.imagenumb = 'four'
                        break;

                    case 'five':
                        this.form.image_five = uri
                        this.filterdata.imageuri = uri
                        this.filterdata.imagenumb = 'five'
                        break;
                
                    default:
                        break;
                }
            },

            updateImage(){
                axios.post(baseUrl+'update-home-image',this.filterdata).then(response => {
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

            setImageState(name){
                this.filterdata.imagenumb = name
            },

            getCloudWidget(){
                const widget = window.cloudinary.createUploadWidget(
                    { cloud_name: clName,
                        upload_preset: clPreset,
                        sources: [
                            "local",
                            "camera",
                            "google_drive",
                            "facebook",
                            "dropbox",
                            "instagram",
                            "unsplash"
                        ],
                        folder: "aranya", //upload files to the specified folder
                        
                        styles: {
                            palette: {
                                window: "#10173a",
                                sourceBg: "#20304b",
                                windowBorder: "#7171D0",
                                tabIcon: "#79F7FF",
                                inactiveTabIcon: "#8E9FBF",
                                menuIcons: "#CCE8FF",
                                link: "#72F1FF",
                                action: "#5333FF",
                                inProgress: "#00ffcc",
                                complete: "#33ff00",
                                error: "#cc3333",
                                textDark: "#000000",
                                textLight: "#ffffff"
                            },
                            fonts: {
                                default: null,
                                "sans-serif": {
                                    url: null,
                                    active: true
                                }
                            }
                        }
                    },
                    (error, result) => {
                    if (!error && result && result.event === "success") {
                        this.filterdata.imgs = []
                        this.filterdata.imgs.push(result.info)
                        this.uploadImage()
                        this.allImages.data.unshift({'file_link':result.info.secure_url,'product_name':result.info.public_id ,'extension':result.info.format})
                    }
                });
                    widget.open();
            },

            uploadImage(){
                axios.post(baseUrl+'media-manager',this.filterdata).then(response => {
                    if(response.data.status == 'success'){
                        // this.successMessage(response.data)
                        this.filterdata.imgs = []
                    }
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
                this.filterdata.categoryname = this.filterdata.category.slug
                const filterData = (this.allfiltersubcategories).filter((data) => data.parent_category == this.filterdata.category.id)
                this.allsubcategories = filterData
                this.form.back_url = this.filterdata.category.slug+'/'+this.filterdata.subcategory
            },

            clearFilter(){
                this.filterdata = {
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
            this.filterdata.imagenumb = serial
            $("#pageMediaModal").modal('show');
        },
        getImageData(){
            axios.get(baseUrl+`media-manager/create?page=${this.page}&per_page=10&keyword=${this.media_keyword}`)
            .then(result => {
                if(this.page == 1){
                    this.allImages = result.data;
                } else {
                    this.allImages.data.push(...result.data.data)
                }
            })
            .catch(errors => {
                console.log(errors);
            });  
        },
        loadMore(){
            this.getImageData(this.page++)
        },

        selectImage(item){
            this.filterdata.imageuri = item
            this.setImage(this.filterdata.imagenumb,item)
        },
        searchMedia(){
            if(this.media_keyword.length > 3) return;
            this.getImageData()
        }
    },
    mounted(){
        this.getHomeData()
        this.getCategory()
        this.getImageData()
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
                          
                                <v-lazy-image width="600" class="mr-3" :src="form.image_three" alt="Home image four" :src-placeholder="url+'demo.png'" />
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
                            <select id="product-category" class="form-control" @change="getSubCategories()" v-model="filterdata.category">
                                <option selected="" value="">Choose Category</option>
                                <option v-for="(value,index) in allcategories" :value="value" :key="index">{{ value.category_name }}</option>
                            </select>
                        </div>
                        <div>
                            <select id="product-filterdata" class="form-control" v-model="filterdata.subcategory">
                                <option value="">Choose...</option>
                                <option v-for="(value,index) in allsubcategories" :value="value.slug" :key="index">{{ value.category_name }}</option>
                            </select>
                        </div>
                        <button type="submit" @click="updateImage()" v-if="showPermission.includes('page-update')" class="btn btn-info btn-block my-2">Update</button>
                       
                    </div>
                </div>
            </div>
        </div>

        <div id="pageMediaModal" class="modal animated fadeInUp custo-fadeInBottom" role="dialog">
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
                                                    <div class="card component-card_9">
                                                        <a href="#" type="button" @click="selectImage(item.file_link)">
                                                            <v-lazy-image class="card-img-top" :src="item.file_link" :alt="item.product_name" :src-placeholder="url+'demo.png'" v-if="item.file_type != 'video'" />
                                                            <video :src="item.file_link" v-else autoplay muted controls class="controlss"></video>  
                                                        </a>
                                                        <div class="card-body">
                                                            <h6 class="card-title">{{ item.product_name }}</h6>
                                                            <p class="card-text">{{ item.extension }}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button v-if="allImages.data && allImages.data.length > 0 && page < allImages.last_page" @click="loadMore()" class="btn btn-primary mt-4">Load More</button>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="row"> 
                                                <div class="col-md-12"> 
                                                    <button @click="getCloudWidget()" v-if="showPermission.includes('add-media')" class="btn btn-primary btn-block mb-2 mr-3">Add File</button>
                                                    <input type="text" @keyup="searchMedia()" v-model="media_keyword" class="form-control" id="search" placeholder="Search by Name" />
                                                </div>
                                                <div class="col-md-12 d-flex justify-content-center my-2">
                                                    <v-lazy-image :src="filterdata.imageuri" class="card-img-top" :alt="filterdata.imageuri" :src-placeholder="url+'demo.png'" v-if="filterdata.imagenumb != 'one'" />
                                                    <video :src="filterdata.imageuri" v-else autoplay muted controls class="controlss"></video>
                                                </div>
                                            </div>
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
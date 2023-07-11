<script>
import Mixin from '../../mixer'
export default {
    mixins: [Mixin],
    props: ['categorydata'],
    data(){
        return {
            form: {
                image_one: '',
                image_two: '',
                image_three: '',
                imagenumb: ''
            },
            allImages: [],
            page: 1,
            media_keyword: '',
            filterdata: {
                imgs: []
            }
        }
    },

    methods: {

        setImage(numb,uri){
            switch (numb) {
                case 'one':
                    this.form.image_one = uri
                    break;
                case 'two':
                    this.form.image_two = uri
                    break;
                case 'three':
                    this.form.image_three = uri
                    break;
            
                default:
                    break;
            }

            return true;
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

        openCatMediaModal(serial){
            this.form.imagenumb = serial
            $("#catMediaModal").modal('show');
        },
        getImageData(){
            axios.get(baseUrl+`media-manager/create?page=${this.page}&per_page=10&keyword=${this.media_keyword}`)
            .then(result => {
                if(this.page == 1){
                    this.allImages = result.data;
                    console.log(result.data)
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
            this.form.imageuri = item
            this.setImage(this.form.imagenumb,item)
        },
        searchMedia(){
            if(this.media_keyword.length > 3) return;
            this.getImageData()
        },

        updateImage(){
            axios.put(baseUrl+'category/'+this.categorydata.id,this.form).then(response => {
                if(response.data.status == 'success'){
                    this.getCatData()
                    this.successMessage(response.data)
                }
            })
        },
        

        getCatData(){
            axios.get(baseUrl+'category/'+this.categorydata.id).then(response => {
                this.form.image_one = response.data.category_image_one
                this.form.image_two = response.data.category_image_two
                this.form.image_three = response.data.category_image_three
            })
        }


    },

    mounted(){
        this.form.image_one = this.categorydata.category_image_one
        this.form.image_two = this.categorydata.category_image_two
        this.form.image_three = this.categorydata.category_image_three
        this.getImageData()
    }
}
</script>

<template>
<div id="tabsBordered" class="col-lg-12 col-12 layout-spacing">
    <div class="statbox widget box box-shadow">
            <div class="widget-header"> 
                <div class="d-flex flex-column justify-content-center align-items-center" >
                    <div class="icon-container mb-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (1440 x 900) px, Ratio (16:9)</span>
                    </div>
                    <input type="submit" class="btn btn-info btn-block mb-4 mr-2" style="width: 50%;" @click="openCatMediaModal('one')" value="File Upload" />
                    <v-lazy-image class="mr-3" width="600" :src="form.image_one" alt="cat image one" :src-placeholder="url+'demo.png'" />
                </div>
            </div>
        </div>
        <div class="statbox widget mt-2">
            <div class="widget-header">
                    <div class="d-flex flex-column justify-content-center align-items-center">
                        <div class="icon-container mb-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                        </div>
                        <input type="submit" class="btn btn-info btn-block mb-4 mr-2" style="width: 50%;" @click="openCatMediaModal('two')" value="File Upload" />
                        <v-lazy-image class="mr-3" width="600" :src="form.image_two" alt="cat image two" :src-placeholder="url+'demo.png'" />
                    </div>
                </div>
            </div>
        <div class="statbox widget mt-2">
            <div class="widget-header">
                <div class="d-flex flex-column justify-content-center align-items-center">
                    <div class="icon-container mb-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                    </div>
                    <input type="submit" class="btn btn-info btn-block mb-4 mr-2" style="width: 50%;" @click="openCatMediaModal('three')" value="File Upload" />
                    <v-lazy-image class="mr-3" width="600" :src="form.image_three" alt="cat image three" :src-placeholder="url+'demo.png'" />
                </div> 
            </div>
        </div>
        <button type="submit" @click="updateImage()" class="btn btn-success my-2">Update</button>
    </div>
        <div id="catMediaModal" class="modal animated fadeInUp custo-fadeInBottom" role="dialog">
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
                                                            <v-lazy-image class="card-img-top" :src="item.file_link" :alt="item.product_name" v-if="item.file_type != 'video'" :src-placeholder="url+'demo.png'" />
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
                                                    <button @click="getCloudWidget()" class="btn btn-primary btn-block mb-2 mr-3">Add File</button>
                                                    <input type="text" @keyup="searchMedia()" v-model="media_keyword" class="form-control" id="search" placeholder="Search by Name" />
                                                </div>
                                                <div class="col-md-12 d-flex justify-content-center my-2"> 
                                                    <v-lazy-image :src="form.imageuri" class="card-img-top" :alt="form.imageuri" :src-placeholder="url+'demo.png'" />
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
  min-height: 90%;
  border-radius: 0;
  bottom: 0;
}
</style>
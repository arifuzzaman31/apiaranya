<script>
import Mixin from "../../mixer"

export default ({
    mixins: [Mixin],
    data(){
        return {
            allImages: [],
            filterdata: {
                imgs: []
            },
            search: '',
            page: 1,
            url: baseUrl
        }
    },
    methods: {
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

        getImageData(){
            axios.get(baseUrl+`media-manager/create?page=${this.page}&per_page=10&keyword=${this.search}`)
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
        deleteMedia(id){
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                if (result.isConfirmed) {
                    axios.delete(baseUrl+`media-manager/${id}`).then(
                        response => {
                            this.getImageData()
                            this.successMessage(response.data)
                        }
                    ). catch(error => {
                        this.validationError()
                    })
                }
            })
        },
        loadMore(){
            this.getImageData(this.page++)
        }

    },
    mounted(){
        this.getImageData()
    },
    computed: {
        showPermission() {
            return window.userPermission;
        }
    }
})
</script>

<template>
    <div id="tabsBordered" class="col-lg-12 col-12 layout-spacing">
        <div class="statbox widget">
            <div class="widget-header">
                <div class="row">
                    <div class="col-xl-12 col-md-12 col-sm-12 col-12  d-flex justify-content-between">
                        <h4>Media Manager</h4>
                        <button @click="getCloudWidget()" v-if="showPermission.includes('add-media')" class="btn btn-primary mb-2 mr-3">Add File</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="statbox widget">
            <div class="widget-header">
                <div class="row" v-if="allImages.data && allImages.data.length > 0">
                    <div class="col-xl-2 col-md-3 col-sm-6 col-12" v-for="(item,ind) in allImages.data" :key="ind">
                        <div class="card component-card_9">
                            <v-lazy-image :src="item.file_link" :alt="item.product_name" :src-placeholder="url+'demo.png'" v-if="item.file_type != 'video'" />
                            <video :src="item.file_link" v-else autoplay muted controls></video>
                            <div class="card-body">
                                <h6 class="card-title">{{ item.product_name }}</h6>
                                <div class="d-flex justify-content-between"> 
                                    <p class="card-text">{{ item.extension }}</p>
                                    <a href="#" type="button" @click.prevent="deleteMedia(item.id)" v-if="showPermission.includes('media-delete')">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 text-muted"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button  v-if="allImages.data && allImages.data.length > 0 && page < allImages.last_page" @click="loadMore()" class="btn btn-primary mt-4">Load More</button>
            </div>
        </div>
    </div>
</template>
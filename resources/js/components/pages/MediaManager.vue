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
                    this.filterdata.imgs.push(result.info)
                    this.uploadImage()
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
        loadMore(){
            this.getImageData(this.page++)
        }

    },
    mounted(){
        this.getImageData()
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
                        <button @click="getCloudWidget()" class="btn btn-primary mb-2 mr-3">Add File</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="statbox widget">
            <div class="widget-header">
                <div class="row" v-if="allImages.data && allImages.data.length > 0">
                    <div class="col-xl-2 col-md-3 col-sm-6 col-12" v-for="(item,ind) in allImages.data" :key="ind">
                        <!-- <img :src="item.file_link" class="img-fluid" :alt="item.product_name" /> -->
                        <div class="card component-card_9">
                            <img :src="item.file_link" class="card-img-top" :alt="item.product_name" v-if="item.file_type != 'video'">
                            <video :src="item.file_link" v-else autoplay muted controls></video>
                            <div class="card-body">
                                <h6 class="card-title">{{ item.product_name }}</h6>
                                <p class="card-text">{{ item.extension }}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <button  v-if="allImages.data && allImages.data.length > 0 && page < allImages.last_page" @click="loadMore()" class="btn btn-primary mt-4">Load More</button>
            </div>
        </div>
    </div>
</template>
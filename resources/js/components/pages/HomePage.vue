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
            allcategories: [],
            allsubcategories: [],
            allfiltersubcategories: [],
            validation_error: {},
        }
    },

    methods: {
        openUploadModal(numb) {
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
                    this.setImage(numb,result.info.secure_url)
                    // this.updateImage(numb,result.info.path)
                }
            });
                widget.open();
            },

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
                // alert(name)
                this.filterdata.imagenumb = name
            },

            getCategory() {
                axios.get(baseUrl+'get-category').then(response => {
                        let res = response.data.data.filter(data => data.parent_cat == 0)
                        let subcat = response.data.data.filter(data => data.parent_cat !== 0)
                        this.allcategories = res
                        this.allfiltersubcategories = subcat
                    })
            },
            getSubCategories() {
                this.filterdata.categoryname = this.filterdata.category.slug
                const filterData = (this.allfiltersubcategories).filter((data) => data.parent_cat == this.filterdata.category.id)
                this.allsubcategories = filterData
                this.form.back_url = this.filterdata.category.slug+'/'+this.filterdata.subcategory
            },
    },
    mounted(){
        this.getHomeData()
        this.getCategory()
    },
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
                            <a @click.prevent="setImageState('one')" class="nav-link active" id="v-border-pills-home-tab" data-toggle="pill" href="#v-border-pills-home" role="tab" aria-controls="v-border-pills-home" aria-selected="false">Video</a>
                            <a @click="setImageState('two')" class="nav-link text-center" id="v-border-pills-profile-tab" data-toggle="pill" href="#v-border-pills-profile" role="tab" aria-controls="v-border-pills-profile" aria-selected="false">Image 1</a>
                            <a @click="setImageState('three')" class="nav-link text-center" id="v-border-pills-messages-tab" data-toggle="pill" href="#v-border-pills-messages" role="tab" aria-controls="v-border-pills-messages" aria-selected="false">Image 2</a>
                            <a @click="setImageState('four')" class="nav-link text-center" id="v-border-pills-settings-tab" data-toggle="pill" href="#v-border-pills-settings" role="tab" aria-controls="v-border-pills-settings" aria-selected="true">Image 3</a>
                            <a @click="setImageState('five')" class="nav-link text-center" id="v-border-pills-image5-tab" data-toggle="pill" href="#v-border-pills-image5" role="tab" aria-controls="v-border-pills-image5" aria-selected="true">Image 4</a>
                        </div>
                    </div>

                    <div class="col-sm-6 col-12">
                        <div class="tab-content" id="v-border-pills-tabContent">
                            <div class="tab-pane fade active show" id="v-border-pills-home" role="tabpanel" aria-labelledby="v-border-pills-home-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Video Should be (1440 x 900) px, Ratio (16:9)</span>
                                </div>
                                <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('one')" value="File Upload" />
                                <!-- <img class="mr-3" :src="form.image_one" alt="Home image one" />  -->
                                <video :src="form.image_one" autoplay muted controls></video>  
                                                                 
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-profile" role="tabpanel" aria-labelledby="v-border-pills-profile-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (1440 x 900) px, Ratio (16:9)</span>
                                </div>
                                <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('two')" value="File Upload" />
                                <img class="mr-3" width="600" :src="form.image_two" alt="Home image two">
                                <p>Back Url: domain/{{ form.back_url_two }}</p>   
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-messages" role="tabpanel" aria-labelledby="v-border-pills-messages-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                                </div>
                                <input type="submit" class="btn btn-info btn-block mb-4 mr-2"  @click="openUploadModal('three')" value="File Upload" />
                                <img class="mr-3" width="600" :src="form.image_three" alt="Home image three">
                                <p>Back Url: domain/{{ form.back_url_three }}</p>
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-settings" role="tabpanel" aria-labelledby="v-border-pills-settings-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                                </div>
                                <input type="submit" class="btn btn-info btn-block mb-4 mr-2"  @click="openUploadModal('four')" value="File Upload" />
                                <img class="mr-3" width="600" :src="form.image_four" alt="Home image four">
                                <p>Back Url: domain/{{ form.back_url_four }}</p>
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-image5" role="tabpanel" aria-labelledby="v-border-pills-image5-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (1440 x 700) px, Ratio (16:9)</span>
                                </div>
                                <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('five')" value="File Upload" />
                                <img class="mr-3" width="600" :src="form.image_five" alt="Home image five">
                                <p>Back Url: domain/{{ form.back_url_five }}</p>
                            </div>

                        </div>
                    </div>
                    
                    <div class="col-sm-3 col-12">
                        <div class="my-2">
                            <select id="product-category" class="form-control" @change="getSubCategories()" v-model="filterdata.category">
                                <option selected="" value="">Choose Category</option>
                                <option v-for="(value,index) in allcategories" :value="value" :key="index">{{ value.cat_name }}</option>
                            </select>
                        </div>
                        <div>
                            <select id="product-filterdata" class="form-control" v-model="filterdata.subcategory">
                                <option value="">Choose...</option>
                                <option v-for="(value,index) in allsubcategories" :value="value.slug" :key="index">{{ value.cat_name }}</option>
                            </select>
                        </div>
                        <button type="submit" @click="updateImage()" class="btn btn-info btn-block my-2">Update</button>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
input,video,img{
    width: 80% !important;
}
</style>
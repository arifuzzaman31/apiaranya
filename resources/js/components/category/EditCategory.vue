<script>
import Mixin from '../../mixer'
export default {
    mixins: [Mixin],
    data(){
        return {
            allcategories: [],
            allsubcategories: [],
            allfiltersubcategories: [],
            filterdata: {
                category: {},
                subcategory: {}
            },
            up_show: false,
            form: {
                image_one: 'https://aranya-frontend.vercel.app/_next/image?url=%2Fassets%2Fsaree.png&w=1920&q=75',
                image_two: 'https://aranya-frontend.vercel.app/_next/image?url=%2Fassets%2Fsaree.png&w=1920&q=75',
                image_three: 'https://aranya-frontend.vercel.app/_next/image?url=%2Fassets%2Fsaree.png&w=1920&q=75',
                image_four: 'https://aranya-frontend.vercel.app/_next/image?url=%2Fassets%2Fsaree.png&w=1920&q=75'
            },
            
        }
    },
    methods: {
        getCategory() {
            axios.get(baseUrl+'get-category').then(response => {
                    let res = response.data.data.filter(data => data.parent_cat == 0)
                    let subcat = response.data.data.filter(data => data.parent_cat !== 0)
                    this.allcategories = res
                    this.allfiltersubcategories = subcat
                })
        },
        getSubCategories() {
            this.up_show = false
            const filterData = (this.allfiltersubcategories).filter(data => {
                if(this.filterdata.category.parent_cat != 0){
                    this.up_show = false 
                } else {
                    this.up_show = true 
                }
                return data.parent_cat == this.filterdata.category.id
            })
            this.allsubcategories = filterData
        },

        toggleShow(){
            this.up_show = true
        },

        openUploadModal(numb) {
            cloudinary.createUploadWidget(
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
                    console.log('Done uploading..: ', result.info);
                    this.setImage(numb,result.info.secure_url)
                    this.updateImage(numb,result.info.secure_url)
                }
                this.validationError({'status':'error','message':error.error.message})
                }).open();
            },

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

                case 'four':
                    this.form.image_four = uri
                    break;
            
                default:
                    break;
            }
        },

        updateImage(numb,uri){
            axios.post(baseUrl+'update-home-image',{'img_name':numb,'uri_link':uri}).then(response => {
                if(response.data.status == 'success'){
                    this.successMessage(response.data)
                }
            })
        },
    },
    mounted(){
        this.getCategory()
    }
}
</script>

<template>
<div class="">
    <div class="statbox widget">
        <div class="widget-header">
            <div class="row">
                <div class="col-md-4 col-lg-3 col-12 mb-3">
                    <label for="max_amount">Category</label>
                    <select id="product-category" class="form-control" @change="getSubCategories()" v-model="filterdata.category">
                        <option selected="" value="">Choose...</option>
                        <option v-for="(value,index) in allcategories" :value="value" :key="index">{{ value.cat_name }}</option>
                    </select>
                </div>

                <div class="col-md-4 col-lg-3 col-12 mb-3">
                    <label for="max_amount">Sub Category</label>
                    <select id="product-subcategory" class="form-control" v-model="filterdata.subcategory" @change="toggleShow()">
                        <option selected="" value="">Choose...</option>
                        <option v-for="(value,index) in allsubcategories" :value="value" :key="index">{{ value.cat_name }}</option>
                    </select>
                </div>
            </div>                 
        </div>
    </div>
    <div class="statbox widget mt-2">
        <div class="widget-header">
            <div class="row">
                <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-around">
                    <h6>Category : {{ filterdata.category.cat_name }}</h6>
                    <h6>Sub Category : {{ filterdata.subcategory.cat_name }}</h6>
                </div>                 
            </div>
        </div>
    </div>
    <div v-if="up_show">
        <div class="statbox widget mt-2">
            <div class="widget-header">             
                <div class="row">
                    <div class="col-12">
                        <div class="icon-container mb-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (1440 x 900) px, Ratio (16:9)</span>
                        </div>
                        <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('one')" value="File Upload" />
                        <img class="mr-3" width="600" :src="form.image_two" alt="cat image one">
                    </div>
                </div>
            </div>
        </div>
        <div class="statbox widget mt-2 d-flex justify-content-center">
            <div class="widget-header">
                    <div class="col-12">
                        <div class="icon-container mb-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                        </div>
                        <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('two')" value="File Upload" />
                        <img class="mr-3" width="600" :src="form.image_two" alt="cat image two">
                    </div>
                </div>
            </div>
        <div class="statbox widget mt-2">
            <div class="widget-header">
                <div class="col-12">
                    <div class="icon-container mb-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                    </div>
                    <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('three')" value="File Upload" />
                    <img class="mr-3" width="600" :src="form.image_two" alt="cat image three">
                </div> 
            </div>
        </div>
    </div>
</div>
</template>

<style scoped>
input,video,img{
    width: 60% !important;
}
</style>
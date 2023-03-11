<script>
import Mixin from '../../mixer'
export default {
    mixins: [Mixin],
    props: ['categorydata'],
    data(){
        return {
            form: {
                image_one: '',
                v_image_one: '',
                image_two: '',
                v_image_two: '',
                image_three: '',
                v_image_three: ''
            },
            
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
                    console.log('Done uploading..: ', result.info);
                    this.setImage(numb,result.info.secure_url)
                    this.updateImage(numb,result.info.path)
                }
            });
                widget.open();
        },

        setImage(numb,uri){
            switch (numb) {
                case 'one':
                    this.form.image_one = uri
                    this.form.v_image_one = uri
                    break;
                case 'two':
                    this.form.image_two = uri
                    this.form.v_image_two = uri
                    break;
                case 'three':
                    this.form.image_three = uri
                    this.form.v_image_three = uri
                    break;
            
                default:
                    break;
            }

            return true;
        },

        updateImage(numb,uri){
            axios.put(baseUrl+'category/'+this.categorydata.id,{'img_name':numb,'uri_link':uri}).then(response => {
                if(response.data.status == 'success'){
                    this.getCatData()
                    this.successMessage(response.data)
                }
            })
        },

        getCatData(){
            axios.get(baseUrl+'category/'+this.categorydata.id).then(response => {
                this.form.image_one = response.data.category_image_one
                this.form.v_image_one = response.data.category_image_one
                this.form.image_two = response.data.category_image_two
                this.form.v_image_two = response.data.category_image_two
                this.form.image_three = response.data.category_image_three
                this.form.v_image_three = response.data.category_image_three
            })
        }


    },

    mounted(){
        this.form.v_image_one = this.categorydata.category_image_one
        this.form.image_one = this.categorydata.category_image_one
        this.form.v_image_two = this.categorydata.category_image_two
        this.form.image_two = this.categorydata.category_image_two
        this.form.v_image_three = this.categorydata.category_image_three
        this.form.image_three = this.categorydata.category_image_three
    }
}
</script>

<template>
  <div class="" >
        <div class="statbox widget mt-2">
            <div class="widget-header"> 
                <div class="d-flex flex-column justify-content-center align-items-center" >
                    <div class="icon-container mb-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (1440 x 900) px, Ratio (16:9)</span>
                    </div>
                    <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('one')" value="File Upload" />
                    <img class="mr-3" width="600" :src="form.v_image_one" alt="cat image one">
                </div>
            </div>
        </div>
        <div class="statbox widget mt-2">
            <div class="widget-header">
                    <div class="d-flex flex-column justify-content-center align-items-center">
                        <div class="icon-container mb-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                        </div>
                        <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('two')" value="File Upload" />
                        <img class="mr-3" width="600" :src="form.v_image_two" alt="cat image two">
                    </div>
                </div>
            </div>
        <div class="statbox widget mt-2">
            <div class="widget-header">
                <div class="d-flex flex-column justify-content-center align-items-center">
                    <div class="icon-container mb-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                    </div>
                    <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('three')" value="File Upload" />
                    <img class="mr-3" width="600" :src="form.v_image_three" alt="cat image three">
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
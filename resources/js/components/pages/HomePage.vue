<script>

// const myWidget = cloudinary.createUploadWidget(
//   {
//     cloudName: clName,
//     uploadPreset: clPreset,
    //cropping: true, //add a cropping step
    // showAdvancedOptions: true,  //add advanced options (public_id and tag)
    // sources: [
    //     "local",
    //     "camera",
    //     "google_drive",
    //     "facebook",
    //     "dropbox",
    //     "instagram",
    //     "unsplash"
    // ], // restrict the upload sources to URL and local files
    // multiple: false,  //restrict upload to a single file
    // folder: "user_images", //upload files to the specified folder
    // tags: ["users", "profile"], //add the given tags to the uploaded files
    // context: {alt: "user_uploaded"}, //add the given context data to the uploaded files
    // clientAllowedFormats: ["images"], //restrict uploading to image files only
    // maxImageFileSize: 2000000,  //restrict file size to less than 2MB
    // maxImageWidth: 2000, //Scales the image down to a width of 2000 pixels before uploading
    // theme: "purple", //change to a purple theme
//   },
//   (error, result) => {
//     if (!error && result && result.event === "success") {
//       console.log("Done! Here is the image info: ", result.info);
//       document
//         .getElementById("home_image_one")
//         .setAttribute("src", result.info.secure_url);
//     }
//   }
// );
import Mixin from '../../mixer'
export default {
    mixins: [Mixin],
    data() {
        return {
            form: {
                image_one: '',
                image_two: '',
                image_three: '',
                image_four: '',
                image_five: '',
            },
            validation_error: {},
        }
    },

    methods: {
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
                    // cropping: true, //add a cropping step
                    // showAdvancedOptions: true,  //add advanced options (public_id and tag)
                    // sources: [ "local", "url"], // restrict the upload sources to URL and local files
                    // multiple: false,  //restrict upload to a single file
                    folder: "aranya", //upload files to the specified folder
                    // tags: ["users", "profile"], //add the given tags to the uploaded files
                    // context: {alt: "user_uploaded"}, //add the given context data to the uploaded files
                    // clientAllowedFormats: ["images"], //restrict uploading to image files only
                    // maxImageFileSize: 2000000,  //restrict file size to less than 2MB
                    // maxImageWidth: 2000, //Scales the image down to a width of 2000 pixels before uploading
                    // theme: "purple", //change to a purple theme
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

                    case 'five':
                        this.form.image_five = uri
                        break;
                
                    default:
                        break;
                }
            },

            updateImage(numb,uri){
                axios.post(baseUrl+'update-home-image',{'img_name':numb,'uri_link':uri}).then(response => {
                    if(response.data.status == 'success'){
                        this.getHomeData()
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
                })
            }
    },
    mounted(){
        this.getHomeData()
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

                    <div class="col-sm-9 col-12">
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
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-messages" role="tabpanel" aria-labelledby="v-border-pills-messages-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                                </div>
                                <input type="submit" class="btn btn-info btn-block mb-4 mr-2"  @click="openUploadModal('three')" value="File Upload" />
                                <img class="mr-3" width="600" :src="form.image_three" alt="Home image three">
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-settings" role="tabpanel" aria-labelledby="v-border-pills-settings-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (720 x 828) px, Ratio (16:24)</span>
                                </div>
                                <input type="submit" class="btn btn-info btn-block mb-4 mr-2"  @click="openUploadModal('four')" value="File Upload" />
                                <img class="mr-3" width="600" :src="form.image_four" alt="Home image four">
                            </div>

                            <div class="tab-pane fade" id="v-border-pills-image5" role="tabpanel" aria-labelledby="v-border-pills-image5-tab">
                                <div class="icon-container mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#17a2b8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg><span class="icon-name text-info"> Image Should be (1440 x 700) px, Ratio (16:9)</span>
                                </div>
                                <input type="submit" class="btn btn-info btn-block mb-4 mr-2" @click="openUploadModal('five')" value="File Upload" />
                                <img class="mr-3" width="600" :src="form.image_five" alt="Home image five">
                            </div>

                        </div>
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
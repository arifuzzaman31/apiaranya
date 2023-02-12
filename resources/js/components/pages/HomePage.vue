<script>

const myWidget = cloudinary.createUploadWidget(
  {
    cloudName: clName,
    uploadPreset: clPreset,
    cropping: true, //add a cropping step
    // showAdvancedOptions: true,  //add advanced options (public_id and tag)
    // sources: [ "local", "url"], // restrict the upload sources to URL and local files
    // multiple: false,  //restrict upload to a single file
    // folder: "user_images", //upload files to the specified folder
    // tags: ["users", "profile"], //add the given tags to the uploaded files
    // context: {alt: "user_uploaded"}, //add the given context data to the uploaded files
    // clientAllowedFormats: ["images"], //restrict uploading to image files only
    // maxImageFileSize: 2000000,  //restrict file size to less than 2MB
    // maxImageWidth: 2000, //Scales the image down to a width of 2000 pixels before uploading
    // theme: "purple", //change to a purple theme
  },
  (error, result) => {
    if (!error && result && result.event === "success") {
      console.log("Done! Here is the image info: ", result.info);
      document
        .getElementById("prod_default_image")
        .setAttribute("src", result.info.secure_url);
    }
  }
);

export default ({
    data() {
        return {
            form: {
                image_one: '',
                image_two: '',
                image_three: '',
                image_four: '',
                image_five: '',
            },
            openUploadModal: function(){
                myWidget.open();
            },
            validation_error: {},
        }
    },
})
</script>

<template>
    <div class="row">
        <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
            <div class="statbox widget box box-shadow">
                <div class="widget-header">
                    <div class="row">
                        <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                            <h4>Home Page</h4>
                        </div>                          
                    </div>
                </div>       
                <div class="widget-content widget-content-area">
                    <div class="row">
                        <div class="col-md-6 col-12">
                            
                        </div>
                    </div>
                    <form @submit.prevent="saveCampData()">
                        <div class="form-row mb-4">
                            <label for="product-image1">Home Image (One)</label>
                            <button type="button" class="btn btn-sm btn-info" @click="openUploadModal">Upload files</button>
                        </div>
                        <div class="form-row mb-4">
                            <label for="product-image1">Home Image (Two)</label>
                            <button type="button" class="btn btn-sm btn-info" @click="openUploadModal">Upload files</button>
                        </div>
                        <div class="form-row mb-4">
                            <label for="product-image1">Home Image (Three)</label>
                            <button type="button" class="btn btn-sm btn-info" @click="openUploadModal">Upload files</button>
                        </div>
                        <div class="form-row mb-4">
                            <label for="product-image1">Home Image (Four)</label>
                            <button type="button" class="btn btn-sm btn-info" @click="openUploadModal">Upload files</button>
                        </div>
                        <div class="form-row mb-4">
                            <label for="product-image1">Home Image (Five)</label>
                            <button type="button" class="btn btn-sm btn-info" @click="openUploadModal">Upload files</button>
                        </div>
                    
                            <input type="submit" name="time" class="btn btn-primary">
                      
                    </form>

                </div>
            </div>
        </div>

    </div>
</template>

<style scoped>

</style>
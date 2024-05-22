<script>
import Mixin from "../../mixer";
import MediaHelper from "../common/MediaHelper.vue";
export default {
    mixins: [Mixin],
    components: { MediaHelper },
    data(){
        return {
            form:{
                banner_link: ''
            },
            story:{},
            url:baseUrl
        }
    },
    methods: {
        getStoryData(){
                try{
                    axios.get(baseUrl+`get-story-info`)
                    .then(response => {
                        this.story = response.data
                        this.form.banner_link = response.data.banner_link
                    }).catch(error => {
                        console.log(error)
                    })
                }catch(e){
                    console.log(e)
                }
        },
        mediaModalOpen() {
            $("#pageMediaModal").modal("show");
        },
        selectImage(item) {
            this.form.banner_link = item;
        },
        updateHomeData(){
            axios
                .post(baseUrl + "update-home-section", this.form)
                .then((response) => {
                    if (response.data.status == "success") {
                        this.form.banner_link = ''
                        this.successMessage(response.data);
                        setTimeout(()=>{
                            window.location.href = "home-story";
                        },1200)
                    }
                })

        }
    },
    mounted(){
        this.getStoryData()
    }
}
</script>
<template>
<div class="row">
    <div id="tableHover" class="col-lg-12 col-12">
        <div class="statbox widget box box-shadow">
            <div>
                <h4 class="mx-2">Story Page</h4>
            </div>
            <div class="widget-content widget-content-area">
                <label>Story Banner Image</label>
                <div class="container">
                    <v-lazy-image
                        :src="form.banner_link"
                        class="card-img-top img-top"
                        alt="banner-link"
                        :src-placeholder="url + 'demo.png'"
                    />
                </div>
                <div class="d-flex justify-content-between">
                    <button
                            type="button"
                            @click="mediaModalOpen()"
                            title="Change The Image"
                            class="btn btn-primary-log my-2"
                        >
                            Change
                        </button>
                    <form @submit.prevent="updateHomeData()" method="post">
                        <button
                            type="submit"
                            title="Update The Image"
                            class="btn btn-primary-log my-2"
                        >
                            Update
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
        <media-helper :setImg="selectImage">
            <template v-slot:viewimage>
                <div class="col-md-12 d-flex justify-content-center my-2">
                    <v-lazy-image
                        :src="form.banner_link"
                        class="card-img-top"
                        alt="banner-link"
                        :src-placeholder="url + 'demo.png'"
                    />
                </div>
            </template>
        </media-helper>
</div>
</template>
<style scoped>
.img-top {
    width: 75% !important;
}
</style>

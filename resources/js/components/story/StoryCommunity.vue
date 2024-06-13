<script>
import Mixin from "../../mixer";
import ViewCommunity from './ViewCommunity.vue';
import MediaHelper from "../common/MediaHelper.vue";
export default {
    mixins: [Mixin],
    components: {MediaHelper,ViewCommunity },
    data(){
        return {
            form:{
                banner_link: '',
                type:'community'
            },
            url:baseUrl
        }
    },
    methods: {
        getCommunityData(){
                try{
                    axios.get(baseUrl+`get-story-info/community`)
                    .then(response => {
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
        selectImages(item) {
            this.form.banner_link = item
        },
        updateCommunityData(){
            axios
                .put(baseUrl + "update-home-story", this.form)
                .then((response) => {
                    if (response.data.status == "success") {
                        this.form.banner_link = ''
                        this.form.type = 'community'
                        this.successMessage(response.data);
                        setTimeout(()=>{
                            window.location.href = "story-community";
                        },1200)
                    }
                })

        }
    },
    mounted(){
        this.getCommunityData()
    }
}
</script>
<template>
<div class="row">
    <div id="tableHover" class="col-lg-12 col-12">
        <div class="statbox widget box box-shadow">
            <div>
                <h4 class="mx-2">Community Page</h4>
            </div>
            <div class="widget-content">
                <label>Community Feature Image</label>
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
                            class="btn btn-primary-log  my-2"
                        >
                            Change
                        </button>
                    <form @submit.prevent="updateCommunityData()" method="post">
                        <button
                            type="submit"
                            title="Update The Image"
                            class="btn btn-primary-log  my-2"
                        >
                            Update
                        </button>
                    </form>
                </div>
            </div>
            <ViewCommunity />
        </div>
    </div>
        <media-helper :setImg="selectImages">
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

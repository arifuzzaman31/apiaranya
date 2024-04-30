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
                    }).catch(error => {
                        console.log(error)
                    })
                }catch(e){
                    console.log(e)
                }
        },
        openPageMediaModal() {
            $("#pageMediaModal").modal("show");
        },
        selectImage() {
            const vExt = [
                "mp4",
                "WebM",
                "mov",
                "avi",
                "mkv",
                "wmv",
                "avchd",
                "flv",
            ];
        },
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
                        :src="story.banner_link"
                        class="card-img-top"
                        alt="banner-link"
                        :src-placeholder="url + 'demo.png'"
                    />
                    <a href="javascript:void(0);" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle text-primary"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg></a>
                </div>
            </div>
        </div>
    </div>
    <media-helper>
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

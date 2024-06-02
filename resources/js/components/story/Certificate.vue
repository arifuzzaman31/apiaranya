<script>
import Mixin from "../../mixer";
import MediaHelper from "../common/MediaHelper.vue";
export default {
    props:["certificates"],
    mixins: [Mixin],
    components: { MediaHelper},
    data(){
        return {
            form: {
                type: 'certificate',
                pr_imgs: [],
                status: 1
            },
            url: baseUrl,
            validation_error: {},
        }
    },
    methods: {
        updateCertificate(){
            try{
                axios.post(baseUrl+'add-certificate',this.form).then(
                    response => {
                        if (response.data.status == "success") {
                                this.clearForm()
                            this.successMessage(response.data);
                            setTimeout(()=>{
                                window.location.href = this.url+"story-sustainability";
                            },1200)
                        }
                    }
                )

            }catch(e){
                if(e.response.status == 422){
                    errors.value = e.response.data.errors;
                }
                this.validationError();
            }
        },
        selectImages(item) {
            if(this.form.pr_imgs && this.form.pr_imgs.length < 4){
                this.form.pr_imgs.push(item)
                new Set([...this.form.pr_imgs])
            } else {
                this.validationError({"message":"Maximum 4 File Upload!"})
            }
        },
        mediaModalOpen(){
            $("#pageMediaModal").modal("show");
        },
        prepareData(){
            this.certificates.map(itm => {
                this.form.pr_imgs.push(itm.banner_link)
            })
            this.form.type = 'certificate'
            this.form.status = 1
        },
        clearForm(){
            this.form = {
                type:'certificate',
                pr_imgs:[],
                status:1
            }
        }
    },
    mounted(){
        this.prepareData()
    }
}
</script>

<template>
    <div class="row">
        <div id="tableHover" class="col-lg-12 col-12">
            <div class="statbox widget box box-shadow">
                <div>
                    <h4 class="mx-2">Update Certificate</h4>
                </div>
                <div class="">
                    <form @submit.prevent="updateCertificate()">
                        <div class="form-row mb-4">
                                <div class="col-12 my-2 text-center">
                                    <button type="button" class="btn btn-sm btn-info" @click="mediaModalOpen()">Upload files</button>
                                </div>
                                <div class="col-md-3 d-flex justify-content-center" v-for="(itm,index) in this.form.pr_imgs" :key="index">
                                    <img :src="itm" class="img-fluid img-top rounded" />
                                    <button type="button" @click="() => this.form.pr_imgs.splice(index, 1)" class="close text-danger image-close" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            </div>
                            <div class="modal-footer md-button">
                              <button type="submit" class="btn btn-info-a">Update</button>

                            </div>

                            </form>
                </div>
            </div>
        </div>
        <media-helper :setImg="selectImages">
            <template v-slot:viewimage>
                <div class="col-md-12 d-flex justify-content-center my-2" v-for="(itm,index) in this.form.pr_imgs" :key="index">
                    <img :src="itm" class="rounded" style="width:70%" />
                    <button type="button" @click="() => this.form.pr_imgs.splice(index, 1)" class="close text-danger image-close" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </template>
        </media-helper>
    </div>
</template>
<style scoped>
.controlss{
    width: 80% !important;
}
.img-top{
    max-width: 40% !important;
}
.modal-dialog {
  min-width: 92%;
  height: 80%;
  bottom: 0;
  padding: 0;
  top:40;
}
.component-card_selected {
    box-shadow: 4px 6px 10px -3px #bfc9d4;
}
.modal-content {
  height: auto;
  min-width: 100%;
  min-height: 100%;
  border-radius: 0;
  bottom: 0;
}
</style>

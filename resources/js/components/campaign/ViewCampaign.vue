<script>
import { ref,reactive, onMounted } from 'vue';
import axios from 'axios';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
import Mixin from '../../mixer'
export default {
    mixins:[Mixin],
    components:{
        Bootstrap4Pagination
    },

    data(){
        return {
            campaigns: [],
            form: {
                campaign_name: '',
                campaign_title: '',
                campaign_banner: 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg',
                campaign_meta_image: '',
                start_at: '',
                expire_at: '',
                status: true
            },
            validation_error: {},
        }
    },
    methods:{
        getCampaign(page = 1){
            try{
                axios.get(baseUrl+`get-campaign?page=${page}`)
                .then(response => {
                    this.campaigns = response.data
                }).catch(error => {
                    console.log(error)
                })
            }catch(e){
                console.log(e)
            }
        },

        openUploadModal() {
            cloudinary.openUploadWidget(
                { cloud_name: 'diyc1dizi',
                    upload_preset: 'webable',
                    sources: [
                        "local",
                        "camera",
                        "google_drive",
                        "facebook",
                        "dropbox",
                        "instagram",
                        "unsplash"
                    ],
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
                    this.form.campaign_banner = result.info.secure_url;
                    this.form.campaign_meta_image = result.info.secure_url;
                }
                }).open();
            },

        deleteCampaign(id){
          Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
              }).then((result) => {
              if (result.isConfirmed) {
                  axios.delete(baseUrl+`campaign/${id}`).then(
                      response => {
                        this.getCampaign()
                          console.log(response.data)
                      }
                  ). catch(error => {
                    console.log(error)
                  })
              }
          })

        },

        storeCampaign(){
            try{
                axios.post('campaign',this.form).then(
                    response => {
                        this.successMessage(response.data)
                        $("#createCampModal").modal('hide');
                        this.getCampaign()
                    }
                ). catch(e => {
                    if(e.response.status == 422){
                        this.validation_error = e.response.data.errors;
                        this.validationError();
                    }
                })
                
            }catch(e){
                if(e.response.status == 422){
                    errors.value = e.response.data.errors;
                }
                this.validationError();
            }
        },

        editCamp(camp){
            this.form.campaign_name = camp.campaign_name
            this.form.campaign_title = camp.campaign_title
            this.form.campaign_banner = camp.campaign_banner_default
            this.form.campaign_meta_image = camp.campaign_meta_image
            this.form.start_at = camp.campaign_start_date
            this.form.expire_at = camp.campaign_expire_date
            this.form.status = camp.status
        },

        updateCampaign(){
         try{
               axios.patch('campaign/' + fabric_id.value,form).then(
                  response => {
                      $("#createCampModal").modal('hide');
                      fireToast(response.data)
                  }
              ). catch(e => {
                 if(e.response.status == 422){
                      errors.value = e.response.data.errors;
                  }
              })
              formReset()
              getCampaign()
          }catch(e){
              if(e.response.status == 422){
                  
              }
          }
      },

    },
    mounted(){
        this.getCampaign()
    }
}
</script>

<template>
    <div class="row">
        <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
            <div class="statbox widget box box-shadow">
                <div class="widget-header">
                    <div class="row">
                        <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                            <h4>Campaign</h4>
                            <button class="btn btn-primary mb-2" data-toggle="modal" data-target="#createCampModal" @click="formReset">Add New</button>
                        </div>                          
                    </div>
                </div>       
                <div class="widget-content widget-content-area">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>Campaign Name</th>
                            <th>Start Date</th>
                            <th>Expire Date</th>
                            <th class="text-center">Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <template v-for="(campaign,index) in campaigns.data" :key="campaign.id">
                            <tr>
                                <td>{{ index+1 }}</td>
                                <td>{{ campaign.campaign_name }}</td>
                                <td>{{ campaign.campaign_start_date }}</td>
                                <td>{{ campaign.campaign_start_date }}</td>
                                <td class="text-center">
                                    <label class="switch s-success  mb-4 mx-5">
                                        <input type="checkbox" :checked="campaign.status == 1 ? true : false" disabled>
                                        <span class="slider round"></span>
                                    </label>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-sm btn-info" @click="edit">Edit</button>
                                    <button type="button" class="btn btn-sm btn-danger ml-2">Delete</button>
                                </td>
                            </tr>					
                        </template>
                    </tbody>
                </table>
                    <Bootstrap4Pagination
                        :data="campaigns"
                        @pagination-change-page="getCampaign"
                    />
                    </div>

                </div>
            </div>
        </div>
        <div id="createCampModal" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Campaign</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" @click="formReset">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="widget-content widget-content-area">
                            <form @submit.prevent="storeCampaign()">
                                <div class="form-group">
                                    <label for="size_name">Campaign Name</label>
                                    <input type="text" v-model="form.campaign_name" id="Campaign_name" class="form-control" placeholder="Campaign name">
                                    <span
                                        v-if="validation_error.hasOwnProperty('campaign_name')"
                                        class="text-danger"
                                    >
                                        {{ validation_error.campaign_name[0] }}
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="campdate">Campaign Start Date</label>
                                    <input v-model="form.start_at" class="form-control" type="date" placeholder="Select Date.." />
                                    <span
                                        v-if="validation_error.hasOwnProperty('start_at')"
                                        class="text-danger"
                                    >
                                        {{ validation_error.start_at[0] }}
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="Campaign_name">Campaign End Date</label>
                                    <input v-model="form.expire_at" class="form-control" type="date" placeholder="Select Date.." />
                                    <span
                                        v-if="validation_error.hasOwnProperty('expire_at')"
                                        class="text-danger"
                                    >
                                        {{ validation_error.expire_at[0] }}
                                    </span>
                                </div>

                                <div class="col-12">
                                    <button type="button" class="btn btn-sm btn-info" @click="openUploadModal()">Upload files</button>
                                    <span
                                    v-if="validation_error.hasOwnProperty('campaign_banner')"
                                    class="text-danger"
                                >
                                    {{ validation_error.campaign_banner[0] }}
                                </span>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-4 col-6">
                                <label for="siz-status">Status</label>
                                        <label class="switch s-icons s-outline  s-outline-success  mb-4 mr-2">
                                            <input v-model="form.status" type="checkbox" :checked="form.status" id="siz-status">
                                            <span class="slider round"></span>
                                        </label>
                                </div>

                                <div class="modal-footer md-button">
                                    <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12" @click="formReset"></i> Discard</button>
            
                                    <button type="submit" class="btn btn-primary">Submit</button>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</template>


<style scoped>

</style>
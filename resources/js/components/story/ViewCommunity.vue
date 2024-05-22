<script>
import axios from 'axios';
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
import MediaHelper from "../common/MediaHelper.vue";
import Mixin from '../../mixer'
export default {
    mixins:[Mixin],
    components:{
        MediaHelper,
        QuillEditor,
        Bootstrap4Pagination
    },

    data(){
        return {
            communities: [],
            camp_id: '',
            form: {
                title: '',
                short_description: '',
                description: '',
                feature_image: '',
                detail_image: '',
                district_name: '',
                pr_imgs: [],
                status: true
            },
            url: baseUrl,
            limit: 3,
            keepLength: false,
            validation_error: {},
        }
    },
    methods:{
        getCommunity(page = 1){
            try{
                axios.get(baseUrl+`get-community?page=${page}`)
                .then(response => {
                    this.communities = response.data
                }).catch(error => {
                    console.log(error)
                })
            }catch(e){
                console.log(e)
            }
        },
        deleteCommunity(id){
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
                          this.successMessage(response.data)
                        this.getCommunity()
                        //   console.log(response.data)
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
                        $("#createCommunityModal").modal('hide');
                        this.getCommunity()
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

        formReset(){
            this.camp_id = ''
            this.form = {
                title: '',
                short_description: '',
                description: '',
                feature_image: '',
                detail_image: '',
                district_name: '',
                pr_imgs: [],
                status: true
            }
            this.validation_error = {}
        },

        editCommunity(community){
            this.id = community.id
            this.form.title = community.title
            this.form.short_description = community.short_description
            this.form.description = community.description
            this.form.feature_image = community.feature_image
            this.form.detail_image = community.detail_image
            this.form.pr_imgs = community.pr_imgs ?? []
            this.form.status = community.status = 1 ? true : false
        },

        updateCampaign(){
         try{
               axios.patch('campaign/' + this.camp_id,this.form).then(
                  response => {
                      $("#updateCommunityModal").modal('hide');
                      this.successMessage(response.data)
                      this.formReset()
                      this.getCommunity()
                  }
              ). catch(e => {
                 if(e.response.status == 422){
                    this.validation_error = e.response.data.errors;
                    this.validationError();
                  }
              })
          }catch(e){
              if(e.response.status == 422){

              }
          }
      },

    },
    computed: {
        showPermission() {
            return window.userPermission;
        }
    },
    mounted(){
        this.getCommunity()
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
                            <h4>Community</h4>
                        </div>
                    </div>
                </div>
                <div class="widget-content widget-content-area">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>Title</th>
                            <th>district name</th>
                            <th>Status</th>
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <template v-for="(community,index) in communities.data" :key="community.id">
                            <tr>
                                <td>{{ index+1 }}</td>
                                <td>{{ community.title }}</td>
                                <td>{{ community.district_name }}</td>
                                <td><span   class="badge rounded-pill"
                                   :class="
                                       community.status == 1
                                            ? 'alert-primary'
                                            : 'alert-danger'
                                    ">
                               
                                {{ community.status == '1' ? 'Active' : 'Inactive' }}  </span> </td>
                                <td class="text-center">
                                    <!-- <button
                                            type="button"
                                            class="btn btn-sm btn-info-a mx-2"
                                            @click="editCommunity(community)"
                                        >
                                            View
                                        </button> -->
                                        <a
                                            type="button"
                                            :href="url+'community-product/'+community.id"
                                            class="btn btn-sm btn-primary-log "
                                            >Edit</a>
                                </td>
                            </tr>
                        </template>
                    </tbody>
                </table>
                    <Bootstrap4Pagination
                        :data="communities"
                        :limit="limit"
                        :keep-length="keepLength"
                        @pagination-change-page="getCommunity"
                    />
                    </div>

                </div>
            </div>
        </div>
    </div>

</template>

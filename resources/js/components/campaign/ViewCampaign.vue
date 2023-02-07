<script>
import { ref,reactive, onMounted } from 'vue';
import axios from 'axios';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';

export default {
    components:{
        Bootstrap4Pagination
    },

    setup(){
      
      const campaigns  = ref([]);
      const errors  = ref([]);
      const campaign_id  = ref('');
      const form = reactive({
        campaign_name: '',
        campaign_title: '',
        campaign_banner_default: '',
        campaign_meta_image: '',
        campaign_start_date: '',
        campaign_expire_date: '',
        status: true
      });

      const getCampaign = async(page = 1) =>{
          let res = await axios.get(baseUrl+`get-campaign?page=${page}`);
          campaigns.value = res.data;
          console.log(campaigns.value)
      }

      const deleteCampaign = async(id)=>{
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
                        getCampaign()
                          console.log(response.data)
                      }
                  ). catch(error => {
                    console.log(error)
                  })
              }
          })

      }

      const storeCampaign = async() =>{
         try{
              await axios.post('campaign',form).then(
                  response => {
                      fireToast(response.data)
                      $("#fabricModal").modal('hide');
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
                  errors.value = e.response.data.errors;
              }
          }
      }

      const updateCampaign = async() =>{
         try{
              await axios.patch('campaign/' + fabric_id.value,form).then(
                  response => {
                      $("#fabricModal").modal('hide');
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
                  var data = [];
                  for(const key in e.response.data.errors){
                      data.push(e.response.data.errors[key][0]);
                  }
                  errors.value = data;
              }
          }
      }

      const editCampaign = (campaign) => {
          errors.value = [];
          fabric_id.value = campaign.id;
          form.campaign_name = campaign.campaign_name;
          form.campaign_title = campaign.campaign_title;
          form.campaign_banner_default = campaign.campaign_banner_default;
          form.campaign_meta_image = campaign.campaign_meta_image;
          form.campaign_start_date = campaign.campaign_start_date;
          form.campaign_expire_date = campaign.campaign_expire_date;
          form.status = campaign.status;
      }

      const formReset = () =>{
          errors.value = [];
          campaign_id.value = '';
          form.campaign_name = '';
          form.campaign_title = '';
          form.campaign_banner_default = '';
          form.campaign_meta_image = '';
          form.campaign_start_date = '';
          form.campaign_expire_date = '';
          form.status = true;
      }
      
      onMounted(() => {
            getCampaign()
      });

      return {
          campaigns,
          form,
          campaign_id,
          getCampaign,
          deleteCampaign,
          storeCampaign,
          updateCampaign,
          editCampaign,
          formReset,
          errors
      }
  }
}
</script>

<template>
    <div class="statbox">     
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
                                    <button type="button" class="btn btn-sm btn-info" data-toggle="modal" data-target="#fabricModal">Edit</button>
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
</template>


<style scoped>

</style>
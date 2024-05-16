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
            color_stories: [],
            url: baseUrl,
            limit: 3,
            keepLength: false,
            validation_error: {},
        }
    },
    methods:{
        getColorStoryData(page = 1) {
            try {
                axios
                    .get(baseUrl + `get-color-story-data?page=${page}`)
                    .then((response) => {
                        this.color_stories = response.data;
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            } catch (e) {
                console.log(e);
            }
        },
        deleteColorStory(id){
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
                  axios.delete(baseUrl+`color-story/${id}`).then(
                      response => {
                          this.successMessage(response.data)
                        this.getColorStoryData()
                        //   console.log(response.data)
                      }
                  ). catch(error => {
                    console.log(error)
                  })
              }
          })

        },
        formReset(){
            this.validation_error = {}
        },

    },
    computed: {
        showPermission() {
            return window.userPermission;
        }
    },
    mounted(){
        this.getColorStoryData()
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
                            <h4>Color Story</h4>
                            <a :href="url+'create-color-story'" class="btn btn-info-a mb-2 mr-3">Add New</a>
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
                            <th>short description</th>
                            <th>Status</th>
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <template v-for="(colorst,index) in color_stories.data" :key="colorst.id">
                            <tr>
                                <td>{{ index+1 }}</td>
                                <td>{{ colorst.title }}</td>
                                <td>{{ colorst.short_description }}</td>
                                <td>{{ colorst.status == '1' ? 'Active' : 'Inactive' }}</td>
                                <td class="text-center">

                                        <a
                                            type="button"
                                            :href="url+'color-story/'+colorst.id+'/edit'"
                                            class="btn btn-sm btn-delete "
                                            >Edit</a>
                                </td>
                            </tr>
                        </template>
                    </tbody>
                </table>
                    <Bootstrap4Pagination
                        :data="color_stories"
                        :limit="limit"
                        :keep-length="keepLength"
                        @pagination-change-page="getColorStoryData"
                    />
                    </div>

                </div>
            </div>
        </div>
    </div>

</template>

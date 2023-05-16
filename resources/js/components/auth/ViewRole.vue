<script>
import Mixin from '../../mixer'
export default {
    mixins:[Mixin],
    data(){
        return {
            roles: [],
            url: baseUrl,
            validation_error: {}
        }
    },
    methods: {
        getRole(){
            try{
                axios.get(baseUrl+'get-role-data').then(
                    response => {
                        this.roles = response.data.data
                    }
                ). catch(e => {
                   console.log(e.response.data)
                })
            }catch(e){
                if(e.response.status == 422){
                    this.validation_error = e.response.data.errors
                }
            }
        }
    },
    mounted(){
        this.getRole()
    }
}
</script>

<template>
<div class="statbox widget box box-shadow">
    <div class="widget-header">
        <div class="row" style="width:99%">
            <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between mx-3">
                <h4>Role List</h4>
                <a :href="url+'get-role'" class="btn btn-primary mb-2 mr-3">Add New</a>
            </div>                 
        </div>
    </div>
    <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
        <div class="statbox">
            <div class="widget-content widget-content-area">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover mb-4">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Category</th>
                                <th>Sub Category</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>36</td>
                                <td>Kids</td>
                                <td>Toddlers</td>
                                <td class="text-center">Active</td>
                                <td class="text-center">
                                <a class="btn btn-sm" target="_blank" :href="url+'category/41/edit'">Edit</a>
                                </td>
                            </tr>	
                        
                        </tbody>
                    </table>
                        
                </div>

            </div>
        </div>
    </div>
</div>
  
</template>


<style scoped>

</style>
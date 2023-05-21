<script>
import Mixin from '../../mixer'
export default {
    mixins:[Mixin],
    data(){
        return {
            categories: [],
            subcategories: [],
            form:{
                category_name: '',
                precedence: '',
                parent_category: 0,
                status: 1
            },
            category_id: '',
            url: baseUrl,
            validation_error: {}
        }
    },
    methods: {
        getCategory(){
            try{
                axios.get('get-category').then(
                    response => {
                        this.categories = response.data.filter((data) => data.parent_category == 0)
                    }
                ). catch(e => {
                   console.log(e.response.data)
                })
            }catch(e){
                if(e.response.status == 422){
                    this.validation_error = e.response.data.errors
                }
            }
        },

        storeCategory(){
            try{
                axios.post('category',this.form).then(
                    response => {
                        console.log(response.data)
                        this.successMessage(response.data)
                        $("#cateModal").modal('hide');
                        this.formReset()
                        this.getCategory()
                    }
                ). catch(e => {
                   console.log(e.response.data)
                })
            }catch(e){
                if(e.response.status == 422){
                    this.validation_error = e.response.data.errors
                }
            }
        },
        updateCategory(){},

        formReset(){
            this.validation_error = {}
            this.category_id = '';
            this.form = {
                category_name : '',
                precedence : '',
                parent_category: 0,
                status : 1
            }
        }
    },
    mounted(){
        this.getCategory()
    },
    computed: {
        showPermission() {
            return window.userPermission;
        }
    }
}
</script>

<template>
    <div class="statbox widget box box-shadow">
        <div class="widget-header">
            <div class="row" style="width:99%">
                <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between mx-3">
                    <h4>Category</h4>
                    <button class="btn btn-primary mb-2 mr-3" v-if="showPermission.includes('menu-create')" data-toggle="modal" data-target="#cateModal" @click="formReset">Add New</button>
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
                                <th class="text-center" v-if="showPermission.includes('menu-edit')">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>36</td>
                                <td>Kids</td>
                                <td>Toddlers</td>
                                <td class="text-center">Active</td>
                                <td class="text-center" v-if="showPermission.includes('menu-edit')">
                                   <a v-if="showPermission.includes('menu-edit')" class="btn btn-sm" target="_blank" :href="url+'category/41/edit'">Edit</a>
                                </td>
                            </tr>	
                          
                        </tbody>
                    </table>
                        
                </div>

            </div>
        </div>
    </div>
    <div id="cateModal" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" @click="formReset">
                        <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                    </button>
                </div>
                <div class="modal-body">
                    
                    <div class="widget-content widget-content-area">
                        <form>
                            <div class="form-group">
                                <label for="category_name">Category</label>
                                <input type="text" class="form-control" v-model="form.category_name" id="tax_name" placeholder="Category Name">
                                <span
                                    v-if="validation_error.hasOwnProperty('category_name')"
                                    class="text-danger"
                                >
                                    {{ validation_error.category_name[0] }}
                                </span>
                            </div>

                            <div class="form-group">
                                <label for="precedence">Precedence</label>
                                <input type="number" class="form-control" v-model="form.precedence" id="precedence" placeholder="Precedence">
                                <span
                                    v-if="validation_error.hasOwnProperty('precedence')"
                                    class="text-danger"
                                >
                                    {{ validation_error.precedence[0] }}
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
                                <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12" @click.prevent="formReset()"></i> Discard</button>
        
                                <button v-if="category_id == ''" type="button" class="btn btn-primary" @click.prevent="storeCategory()">Submit</button>

                                <button v-else type="button" class="btn btn-primary" @click.prevent="updateCategory()">Update</button>
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
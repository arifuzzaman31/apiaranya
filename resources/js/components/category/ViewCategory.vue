<script>
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
export default {

    components:{
        Bootstrap4Pagination
    },

    data(){
        return {
            categories: [],
            subcategories: [],
            validation_error: {}
        }
    },
    methods: {
        getCategory(){
            try{
                axios.get('category-subcategory-data').then(
                    response => {
                        this.categories = response.data
                        // const cat = response.data.data.filter((data) => data.parent_cat == 0)
                        // this.categories.push(...cat)
                        // const subcat = response.data.data.filter((data) => data.parent_cat != 0)
                        // this.subcategories.push(...subcat) 
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
        this.getCategory()
    }
}
</script>

<template>
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
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <template>
                                <tr>
                                    <td>Women</td>
                                    <td>
                                        <ul>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                        </ul>
                                    </td>
                                    
                                </tr>					
                            </template>
                        </tbody>
                    </table>
                        <Bootstrap4Pagination
                            :data="categories"
                            @pagination-change-page="getCategory"
                        />
                </div>

            </div>
        </div>
    </div>
</template>


<style scoped>

</style>
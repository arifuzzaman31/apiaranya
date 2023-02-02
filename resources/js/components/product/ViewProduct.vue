<script>
import { ref,reactive, onMounted } from 'vue';
import axios from 'axios';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';
import Mixin from '../../mixin';

export default {
    components:{
        Bootstrap4Pagination
    },
    setup() {
        const allproduct = ref([])
        const url = baseUrl;
        const { notifying } = Mixin;
        const getProduct = async(page = 1) => {
            try{
                await axios.get(baseUrl+`get-product?page=${page}`)
                .then(response => {
                    allproduct.value = response.data
                }).catch(error => {
                    console.log(error)
                })
            }catch(e){
                console.log(e)
            }
        }

        const deleteProduct = async(id) => {
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
                    axios.delete(baseUrl+`product/${id}`).then(
                        response => {
                            getProduct()
                            notifying(response.data)
                        }
                    ). catch(error => {
                    
                    })
                }
            })
        }

        onMounted(getProduct)

        return {
            allproduct,
            getProduct,
            deleteProduct,
            url
        }
        
    },
}
</script>
<style scoped>
.hide {
    visibility: hidden;
}
</style>
<template>
    <div class="container-fluid">
    <div class="row layout-top-spacing mb-4">
        <template v-for="(product,index) in allproduct.data" :key="index" >
            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6" :id="'card'+index">
                <div class="py-2">
                    <div class="card component-card_9">
                        <img :src="product.product_image" class="card-img-top" alt="widget-card-2">
                        <div class="card-body">
                            <p class="meta-date">Stock: {{ product.inventory.stock }}</p>
                            <h5 class="card-title">{{ product.product_name }}</h5>
                            <p class="card-text">Price: {{ product.mrp_price }}</p>

                            <div class="meta-info">
                                <div class="meta-user">
                                    <div class="user-name">Category: {{ product.category.category_name }}</div>
                                </div>

                                <div class="meta-action">
                                    <div class="icon-container">
                                        <a :href="url+'product/'+product.id+'/edit'" class="btn btn-sm btn-warning mx-1"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg></a>
                                    </div>

                                    <div class="icon-container">
                                        <button type="button" @click.prevent="deleteProduct(product.id)" class="btn btn-sm btn-danger"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></button>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </template>
    </div>
    <Bootstrap4Pagination
        :data="allproduct"
        @pagination-change-page="getProduct"
    />
</div>
</template>
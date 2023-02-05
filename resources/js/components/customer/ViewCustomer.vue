<script>
import { ref,reactive,onMounted } from 'vue';
import { Bootstrap4Pagination } from 'laravel-vue-pagination';

export default {
    components:{
        Bootstrap4Pagination
    },

    data(){
        return {
            customers: [],
            keyword:''
        }
    },
    methods: {
        getCustomer(page = 1) {
            try{
                 axios.get(baseUrl+`get-customer?page=${page}&keyword=${this.keyword}`)
                .then(response => {
                    this.customers = response.data
                }).catch(error => {
                    console.log(error)
                })
            }catch(e){
                console.log(e)
            }
        }
    },

    mounted(){
        this.getCustomer()
    }
    // setup() {
    //     const customers = ref([])
    //     const keyword = reactive('')
    //     const getCustomer = async(page = 1) => {
    //         try{
    //             await axios.get(baseUrl+`get-customer?page=${page}&keyword=${keyword}`)
    //             .then(response => {
    //                 customers.value = response.data
    //             }).catch(error => {
    //                 console.log(error)
    //             })
    //         }catch(e){
    //             console.log(e)
    //         }
    //     }

    //     const openCustomerOrderModal = (id) => {

    //     }

    //     onMounted(()=> getCustomer())

    //     return {
    //         customers,
    //         openCustomerOrderModal,
    //         keyword
    //     }
    // }
}
</script>

<template>  
<div class="widget-content widget-content-area">
    <div>
        <input type="text" class="form-controll"  @keyup="getCustomer()" v-model="keyword" />
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-hover mb-4">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th class="text-center">Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <template v-for="customer in customers.data">
                    <tr>
                        <td>{{ customer.id }}</td>
                        <td>{{ customer.first_name }}</td>
                        <td>{{ customer.phone }}</td>
                        <td>{{ customer.email }}</td>
                        <td>{{ customer.address }}</td>
                        <td>{{ customer.status }}</td>
                        <td>
                            <div class="dropdown custom-dropdown">
                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                                </a>

                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink1" style="will-change: transform;">
                                    <a type="button" @click="openCustomerOrderModal(customer.id)" class="dropdown-item" href="javascript:void(0);">Progess</a>
                                    <a class="dropdown-item" href="javascript:void(0);">Share</a>
                                    <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                    <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                </div>
                            </div>
                        </td>
                    </tr>					
                </template>
            </tbody>
        </table>
            <Bootstrap4Pagination
                :data="customers"
                @pagination-change-page="getCustomer"
            />
    </div>

</div>  
</template>
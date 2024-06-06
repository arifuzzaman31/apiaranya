<script>
import axios from "axios";
import { Bootstrap4Pagination } from "laravel-vue-pagination";
import Mixin from "../../mixer";
export default {
    mixins: [Mixin],
    components: {
        Bootstrap4Pagination,
    },

    data() {
        return {
            blogData: [],
            url: baseUrl,
            limit: 3,
            keepLength: false,
            validation_error: {},
        };
    },
    methods: {
        getBlogData(page = 1) {
            try {
                axios
                    .get(baseUrl + `get-blog-data?page=${page}`)
                    .then((response) => {
                        this.blogData = response.data;
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            } catch (e) {
                console.log(e);
            }
        },

        deleteBlog(id) {
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, delete it!",
            }).then((result) => {
                if (result.isConfirmed) {
                    axios
                        .delete(baseUrl + `blog/${id}`)
                        .then((response) => {
                            this.successMessage(response.data);
                            this.getBlogData();
                        })
                        .catch((error) => {
                            console.log(error);
                        });
                }
            });
        }
    },
    computed: {
        showPermission() {
            return window.userPermission;
        },
    },
    mounted() {
        this.getBlogData();
    },
};
</script>

<template>
    <div class="row">

        <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
            <h4 class="pt-2">Blog</h4>
            <a :href="url+'create-blog'" class="btn btn-info-a mb-2 mr-3">Add New</a>
        </div>
        <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
            <div class="statbox widget box box-shadow">
                <div class="widget-content">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Title</th>
                                    <th>short description</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <template
                                    v-for="(
                                        blog, index
                                    ) in blogData.data"
                                    :key="blog.id"
                                >
                                    <tr>
                                        <td>{{ index + 1 }}</td>
                                        <td style="width: 20%;">{{ blog.title }}</td>
                                        <td style="width: 45%;">{{ blog.short_description }}</td>
                                        <td class="text-center">
                                            <span
                                                class="badge rounded-pill"
                                                :class="
                                                    blog.status == 1
                                                        ? 'alert-primary'
                                                        : 'alert-danger'
                                                "
                                                >{{
                                                    blog.status
                                                        ? "Active"
                                                        : "Deactive"
                                                }}</span
                                            >
                                        </td>
                                        <td class="text-center">
                                                    <a
                                                        type="button"
                                                        :href="
                                                            url +
                                                            'blog/' +
                                                            blog.id + '/edit'
                                                        "
                                                        class="btn btn-sm btn-primary-log mx-2"
                                                        >Edit</a>
                                                    <button
                                                        type="button"
                                                        class="btn btn-sm btn-delete ml-2"
                                                        @click="
                                                            deleteBlog(
                                                                blog.id
                                                            )
                                                        "
                                                    >
                                                        Delete
                                                    </button>

                                        </td>
                                    </tr>
                                </template>
                            </tbody>
                        </table>
                        <Bootstrap4Pagination
                            :data="blogData"
                            :limit="limit"
                            :keep-length="keepLength"
                            @pagination-change-page="getBlogData"
                        />
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
.btn-info-a, .btn-view{
color:#fff;
background-color: #3c5676!important;
border-color: #3c5676!important;
}
.btn-info-a:hover, .btn-view:hover{
background-color: #3c5676;
border-color: #3c5676;
}
.btn-delete {
    color: #000 !important;
    background-color: #ffffff;
    border-color: #3c5676;
}
.btn-delete:hover {
    color: #fff !important;
    background-color:#3c5676!important;
    border-color: #3c5676!important;
}

</style>


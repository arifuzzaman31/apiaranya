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
            campaigns: [],
            camp_id: "",
            form: {
                campaign_name: "",
                campaign_title: "",
                campaign_banner: "",
                campaign_meta_image: "",
                start_at: "",
                expire_at: "",
                status: true,
            },
            discount: 0,
            url: baseUrl,
            limit: 3,
            keepLength: false,
            validation_error: {},
        };
    },
    methods: {
        getCampaign(page = 1) {
            try {
                axios
                    .get(baseUrl + `get-campaign?page=${page}`)
                    .then((response) => {
                        this.campaigns = response.data;
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            } catch (e) {
                console.log(e);
            }
        },

        getEdit(obj) {},

        deleteCampaign(id) {
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
                        .delete(baseUrl + `campaign/${id}`)
                        .then((response) => {
                            this.successMessage(response.data);
                            this.getCampaign();
                            //   console.log(response.data)
                        })
                        .catch((error) => {
                            console.log(error);
                        });
                }
            });
        },

        storeCampaign() {
            try {
                axios
                    .post("campaign", this.form)
                    .then((response) => {
                        this.successMessage(response.data);
                        $("#createCampModal").modal("hide");
                        this.getCampaign();
                    })
                    .catch((e) => {
                        if (e.response.status == 422) {
                            this.validation_error = e.response.data.errors;
                            this.validationError();
                        }
                    });
            } catch (e) {
                if (e.response.status == 422) {
                    errors.value = e.response.data.errors;
                }
                this.validationError();
            }
        },

        formReset() {
            this.camp_id = "";
            this.form = {
                campaign_name: "",
                campaign_title: "",
                campaign_banner: "",
                campaign_meta_image: "",
                start_at: "",
                expire_at: "",
                status: true,
            };
            this.discount = 0
            this.validation_error = {};
        },

        editCamp(camp) {
            this.camp_id = camp.id;
            this.form.campaign_name = camp.campaign_name;
            this.form.campaign_title = camp.campaign_title;
            this.form.campaign_banner = camp.campaign_banner_default;
            this.form.campaign_meta_image = camp.campaign_meta_image;
            this.form.start_at = camp.campaign_start_date;
            this.form.expire_at = camp.campaign_expire_date;
            this.form.status = camp.status = 1 ? true : false;
            $("#updateCampModal").modal("show");
        },
        discountModal(camp) {
            this.camp_id = camp;
            this.discount  = 0;
            $("#discountCampModal").modal("show");
        },

        addCampDiscount(){
            try {
                axios
                    .post("add-discount-to-camp",{camp_id:this.camp_id,discount:this.discount})
                    .then((response) => {
                        this.camp_id = ''
                        $("#discountCampModal").modal("hide");
                        this.successMessage(response.data);
                        this.formReset();
                    })
                    .catch((e) => {
                        if (e.response.status == 422) {
                            this.validation_error = e.response.data.errors;
                            this.validationError();
                        }
                    });
            } catch (e) {
                if (e.response.status == 422) {
                }
            }
        },

        updateCampaign() {
            try {
                axios
                    .patch("campaign/" + this.camp_id, this.form)
                    .then((response) => {
                        $("#updateCampModal").modal("hide");
                        this.successMessage(response.data);
                        this.formReset();
                        this.getCampaign();
                    })
                    .catch((e) => {
                        if (e.response.status == 422) {
                            this.validation_error = e.response.data.errors;
                            this.validationError();
                        }
                    });
            } catch (e) {
                if (e.response.status == 422) {
                }
            }
        },
    },
    computed: {
        showPermission() {
            return window.userPermission;
        },
    },
    mounted() {
        this.getCampaign();
    },
};
</script>

<template>
    <div class="row">
        <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
            <div class="statbox widget box box-shadow">
                <div class="widget-header">
                    <div class="row">
                        <div
                            class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between"
                        >
                            <h4>Campaign</h4>
                            <button
                                class="btn btn-info-a mb-2"
                                v-if="
                                    showPermission.includes('campaign-create')
                                "
                                data-toggle="modal"
                                data-target="#createCampModal"
                                @click="formReset"
                            >
                                Add New
                            </button>
                        </div>
                    </div>
                </div>
                <div class="widget-content">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover mb-4">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Campaign Name</th>
                                    <th>Start Date</th>
                                    <th>Expire Date</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <template
                                    v-for="(campaign, index) in campaigns.data"
                                    :key="campaign.id"
                                >
                                    <tr>
                                        <td>{{ index + 1 }}</td>
                                        <td>{{ campaign.campaign_name }}</td>
                                        <td>
                                            {{ campaign.campaign_start_date }}
                                        </td>
                                        <td>
                                            {{ campaign.campaign_expire_date }}
                                        </td>
                                        <td class="text-center">
                                            <label
                                                class="switch s-success mb-4 mx-5"
                                            >
                                                <input
                                                    type="checkbox"
                                                    :checked="
                                                        campaign.status == 1
                                                            ? true
                                                            : false
                                                    "
                                                    disabled
                                                />
                                                <span
                                                    class="slider round"
                                                ></span>
                                            </label>
                                        </td>

                                        <td class="text-center">
                                            <button
                                                type="button"
                                                class="btn btn-sm btn-info-a mx-2 my-1"
                                                @click="editCamp(campaign)"
                                            >
                                                View
                                            </button>
                                            <a
                                                type="button"
                                                :href="
                                                    url +
                                                    'campaign-product/' +
                                                    campaign.id
                                                "
                                                class="btn btn-sm btn-delete my-1"
                                                >Edit</a
                                            >

                                            <button
                                                type="button"
                                                class="btn btn-sm btn-delete mx-2 my-1"
                                                @click="
                                                    deleteCampaign(campaign.id)
                                                "
                                            >
                                                Delete
                                            </button>

                                            <button
                                                type="button"
                                                class="btn btn-sm btn-info-a mx-2 my-1"
                                                @click="
                                                    discountModal(campaign.id)
                                                "
                                            >
                                                Discount
                                            </button>
                                        </td>
                                    </tr>
                                </template>
                            </tbody>
                        </table>
                        <Bootstrap4Pagination
                            :data="campaigns"
                            :limit="limit"
                            :keep-length="keepLength"
                            @pagination-change-page="getCampaign"
                        />
                    </div>
                </div>
            </div>
        </div>
        <div
            id="createCampModal"
            class="modal animated fadeInUp custo-fadeInUp"
            role="dialog"
        >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Campaign</h5>
                        <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                            @click="formReset"
                        >
                            <svg
                                aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg"
                                width="24"
                                height="24"
                                viewBox="0 0 24 24"
                                fill="none"
                                stroke="currentColor"
                                stroke-width="2"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                class="feather feather-x"
                            >
                                <line x1="18" y1="6" x2="6" y2="18"></line>
                                <line x1="6" y1="6" x2="18" y2="18"></line>
                            </svg>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="">
                            <form @submit.prevent="storeCampaign()">
                                <div class="form-group">
                                    <label for="size_name">Campaign Name</label>
                                    <input
                                        type="text"
                                        v-model="form.campaign_name"
                                        id="Campaign_name"
                                        class="form-control"
                                        placeholder="Campaign name"
                                    />
                                    <span
                                        v-if="
                                            validation_error.hasOwnProperty(
                                                'campaign_name'
                                            )
                                        "
                                        class="text-danger"
                                    >
                                        {{ validation_error.campaign_name[0] }}
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="size_name">Banner Link</label>
                                    <input
                                        type="text"
                                        v-model="form.campaign_banner"
                                        id="Campaign_banner"
                                        class="form-control"
                                        placeholder="Campaign Banner Link"
                                    />
                                    <span
                                        v-if="
                                            validation_error.hasOwnProperty(
                                                'campaign_banner'
                                            )
                                        "
                                        class="text-danger"
                                    >
                                        {{
                                            validation_error.campaign_banner[0]
                                        }}
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="campdate">Start Date</label>
                                    <input
                                        v-model="form.start_at"
                                        class="form-control"
                                        type="date"
                                        placeholder="Select Date.."
                                    />
                                    <span
                                        v-if="
                                            validation_error.hasOwnProperty(
                                                'start_at'
                                            )
                                        "
                                        class="text-danger"
                                    >
                                        {{ validation_error.start_at[0] }}
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="Campaign_name">End Date</label>
                                    <input
                                        v-model="form.expire_at"
                                        class="form-control"
                                        type="date"
                                        placeholder="Select Date.."
                                    />
                                    <span
                                        v-if="
                                            validation_error.hasOwnProperty(
                                                'expire_at'
                                            )
                                        "
                                        class="text-danger"
                                    >
                                        {{ validation_error.expire_at[0] }}
                                    </span>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-4 col-6">
                                    <label for="siz-status">Status</label>
                                    <label
                                        class="switch s-icons s-outline s-outline-success mb-4 mr-2"
                                    >
                                        <input
                                            v-model="form.status"
                                            type="checkbox"
                                            :checked="form.status"
                                            id="siz-status"
                                        />
                                        <span class="slider round"></span>
                                    </label>
                                </div>

                                <div class="modal-footer md-button">
                                    <button class="btn" data-dismiss="modal">
                                        <i
                                            class="flaticon-cancel-12"
                                            @click="formReset"
                                        ></i>
                                        Discard
                                    </button>

                                    <button
                                        type="submit"
                                        class="btn btn-info-a"
                                    >
                                        Submit
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- for Edit -->
        <div
            id="updateCampModal"
            class="modal animated fadeInUp custo-fadeInUp"
            role="dialog"
        >
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Update Campaign</h5>
                        <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                            @click="formReset"
                        >
                            <svg
                                aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg"
                                width="24"
                                height="24"
                                viewBox="0 0 24 24"
                                fill="none"
                                stroke="currentColor"
                                stroke-width="2"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                class="feather feather-x"
                            >
                                <line x1="18" y1="6" x2="6" y2="18"></line>
                                <line x1="6" y1="6" x2="18" y2="18"></line>
                            </svg>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="widget-content">
                            <form @submit.prevent="updateCampaign()">
                                <div class="form-group">
                                    <label for="size_name">Campaign Name</label>
                                    <input
                                        type="text"
                                        v-model="form.campaign_name"
                                        id="Campaign_name"
                                        class="form-control"
                                        placeholder="Campaign name"
                                    />
                                    <span
                                        v-if="
                                            validation_error.hasOwnProperty(
                                                'campaign_name'
                                            )
                                        "
                                        class="text-danger"
                                    >
                                        {{ validation_error.campaign_name[0] }}
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="size_name">Banner Link</label>
                                    <input
                                        type="text"
                                        v-model="form.campaign_banner"
                                        id="Campaign_banner"
                                        class="form-control"
                                        placeholder="Campaign Banner Link"
                                    />
                                    <span
                                        v-if="
                                            validation_error.hasOwnProperty(
                                                'campaign_banner'
                                            )
                                        "
                                        class="text-danger"
                                    >
                                        {{
                                            validation_error.campaign_banner[0]
                                        }}
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="campdate"
                                        >Campaign Start Date</label
                                    >
                                    <input
                                        v-model="form.start_at"
                                        class="form-control"
                                        type="date"
                                        placeholder="Select Date.."
                                    />
                                    <span
                                        v-if="
                                            validation_error.hasOwnProperty(
                                                'start_at'
                                            )
                                        "
                                        class="text-danger"
                                    >
                                        {{ validation_error.start_at[0] }}
                                    </span>
                                </div>

                                <div class="form-group">
                                    <label for="Campaign_name"
                                        >Campaign End Date</label
                                    >
                                    <input
                                        v-model="form.expire_at"
                                        class="form-control"
                                        type="date"
                                        placeholder="Select Date.."
                                    />
                                    <span
                                        v-if="
                                            validation_error.hasOwnProperty(
                                                'expire_at'
                                            )
                                        "
                                        class="text-danger"
                                    >
                                        {{ validation_error.expire_at[0] }}
                                    </span>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-4 col-6">
                                    <label for="siz-status">Status</label>
                                    <label
                                        class="switch s-icons s-outline s-outline-success mb-4 mr-2"
                                    >
                                        <input
                                            v-model="form.status"
                                            type="checkbox"
                                            :checked="form.status"
                                            id="siz-status"
                                        />
                                        <span class="slider round"></span>
                                    </label>
                                </div>

                                <div class="modal-footer md-button">
                                    <button class="btn" data-dismiss="modal">
                                        <i
                                            class="flaticon-cancel-12"
                                            @click="formReset"
                                        ></i>
                                        Discard
                                    </button>

                                    <button
                                        type="submit"
                                        class="btn btn-info-a"
                                    >
                                        Submit
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Discount Modal -->
        <div
            id="discountCampModal"
            class="modal animated fadeInUp custo-fadeInUp"
            role="dialog"
        >
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Discount Add To Campaign</h5>
                        <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                            @click="formReset"
                        >
                            <svg
                                aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg"
                                width="24"
                                height="24"
                                viewBox="0 0 24 24"
                                fill="none"
                                stroke="currentColor"
                                stroke-width="2"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                class="feather feather-x"
                            >
                                <line x1="18" y1="6" x2="6" y2="18"></line>
                                <line x1="6" y1="6" x2="18" y2="18"></line>
                            </svg>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="widget-content">
                            <form @submit.prevent="addCampDiscount()">

                                <div class="form-group">
                                    <label for="Percentage">Discount Percentage</label>
                                    <input
                                        v-model="discount"
                                        class="form-control"
                                        type="number"
                                    />
                                </div>

                                <div class="modal-footer md-button">
                                    <button class="btn" data-dismiss="modal">
                                        <i
                                            class="flaticon-cancel-12"
                                            @click="formReset"
                                        ></i>
                                        Discard
                                    </button>

                                    <button
                                        type="submit"
                                        class="btn btn-info-a"
                                    >
                                        Submit
                                    </button>
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
.btn-info-a,
.btn-view {
    color: #fff;
    background-color: #3c5676 !important;
    border-color: #3c5676 !important;
}
.btn-info-a:hover,
.btn-view:hover {
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
    background-color: #3c5676 !important;
    border-color: #3c5676 !important;
}
</style>

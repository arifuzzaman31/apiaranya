<script>
import Mixin from "../../mixer";
export default {
    mixins: [Mixin],
    props: ["order", "details"],

    data() {
        return {
            order_status: {
                order_id: "",
                order_position: "",
                date: "",
                payment_status: "",
            },
            url: baseUrl
        };
    },

    methods: {
        paymentModify(uri, id) {
            this.order_status.order_id = id;
            Swal.fire({
                title: "Are you sure?",
                text: "Order Status will be Update!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, Do it!",
            }).then((result) => {
                if (result.isConfirmed) {
                    axios
                        .post(baseUrl + `${uri}/${id}`, this.order_status)
                        .then((response) => {
                            this.order_status.order_id = "";
                            this.successMessage(response.data);
                        })
                        .catch((error) => {
                            console.log(error);
                        });
                }
            });
        },
    },
    mounted() {
        this.order_status.order_id = this.order.id;
        this.order_status.payment_status = this.order.payment_status;
        this.order_status.order_position = this.order.order_position;
        console.log(this.details)
    },
    computed: {
        showPermission() {
            return window.userPermission;
        }
    }
};
</script>

<template>
    <section class="mx-auto">
        <h4 class="shadow-sm p-3 bg-white rounded mt-3">Order Details</h4>
        <div>
            <!-- <div class="row gx-5">
            <div class="col-md-9 bg-light shadow-lg p-3 bg-white rounded mt-1">
                First, but unordered
            </div>
            <div class="col-md-2 bg-light shadow-lg p-3 bg-white rounded mt-1">
                Second, but last
            </div>
            
            </div> -->
            <div class="overflow-hidden">
                <div class="row gx-2">
                    <div class="col-md-9">
                        <div class="p-3 border shadow-sm bg-white rounded">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-3">
                                        <h5>
                                            Invoice
                                            <span class="text-warning"
                                                >#AO-order:{{ order.id }}</span
                                            >
                                        </h5>
                                        <p class="text-secondary">
                                            Order Date:
                                            {{ dateToString(order.order_date) }}
                                        </p>
                                    </div>
                                    <div class="col-md-3" v-if="showPermission.includes('order-update')">
                                        <select
                                            class="form-control"
                                            @change="
                                                paymentModify(
                                                    'update-payment-status',
                                                    order.id
                                                )
                                            "
                                            v-model="
                                                order_status.payment_status
                                            "
                                        >
                                            <option value="0">Unpaid</option>
                                            <option value="1">Paid</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3" v-if="showPermission.includes('order-update')">
                                        <select
                                            class="form-control"
                                            @change="
                                                paymentModify(
                                                    'update/order/status',
                                                    order.id
                                                )
                                            "
                                            v-model="
                                                order_status.order_position
                                            "
                                        >
                                            <option value="0">Pending</option>
                                            <option value="1">
                                                Processing
                                            </option>
                                            <option value="2">
                                                On Delivery
                                            </option>
                                            <option value="3">Delivered</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3">
                                        <a
                                            :href="url+'order-details/'+order.id+'?from=pdf'"
                                            type="button"
                                            class="btn btn-success w-100"
                                        >
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                width="24"
                                                height="24"
                                                viewBox="0 0 24 24"
                                                fill="none"
                                                stroke="currentColor"
                                                stroke-width="2"
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                                class="feather feather-save me-1"
                                            >
                                                <path
                                                    d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"
                                                ></path>
                                                <polyline
                                                    points="17 21 17 13 7 13 7 21"
                                                ></polyline>
                                                <polyline
                                                    points="7 3 7 8 15 8"
                                                ></polyline>
                                            </svg>
                                            Download Invoice
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h6>Customer Info</h6>
                                        <p>
                                            Name: {{ order.user.name }} <br />
                                            Email: {{ order.user.email }} <br />
                                            Phone: {{ order.user.phone }} <br />
                                            <!-- Delivery Type: Scheduled <br> -->
                                            Delivery Time:
                                            {{ order.delivery.delivery_date }}
                                        </p>
                                    </div>
                                    <div class="col-md-3">
                                        <h6>Shipping Address</h6>
                                        <p v-if="order.is_same_address != 1">
                                            {{
                                                order.user_shipping_info
                                                    .street_address
                                            }}
                                            <br />
                                            {{ order.delivery.post_code }},
                                            <br />
                                            {{
                                                order.user_shipping_info.city
                                            }},{{
                                                order.user_shipping_info.country
                                            }}
                                        </p>
                                        <p v-else>Same as Billing Address</p>
                                    </div>
                                    <div class="col-md-3">
                                        <h6>Billing Address</h6>
                                        <p>
                                            {{
                                                order.user_billing_info
                                                    .street_address
                                            }}
                                            <br />
                                            {{
                                                order.user_billing_info
                                                    .post_code
                                            }}, <br />
                                            {{ order.user_billing_info.city }},
                                            {{ order.delivery.country }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <table class="table table-sm">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Product</th>
                                            <th>Unit Price</th>
                                            <th>Qty</th>
                                            <th class="text-right">
                                                Total Price
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr
                                            v-for="detail in details"
                                            :key="detail.id"
                                        >
                                            <td>{{ detail.id }}</td>
                                            <td>
                                                {{
                                                    detail.product.product_name
                                                }}
                                            </td>
                                            <!-- <img :src="detail.product.product_image" height="40" width="40" class="mx-1" /> -->
                                            <td>{{ detail.charge_selling_price }}</td>
                                            <td>{{ detail.quantity }}</td>
                                            <td class="text-right">
                                                {{ detail.total_charge_selling_price }}
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <hr />
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-2">
                                        <h6>Payment Method</h6>
                                        <p>
                                            {{
                                                order.payment_via == 1
                                                    ? "Cash On Delivery"
                                                    : "Online"
                                            }}
                                        </p>
                                    </div>
                                    <div class="col-md-3">
                                        <h6>Currency</h6>
                                        <p>{{ order.charged_currency }}</p>
                                    </div>
                                    <div class="col-md-2">
                                        <h6>Sub Total</h6>
                                        <p>{{ order.charge_total_price }}</p>
                                    </div>
                                    <div class="col-md-1">
                                        <h6>VAT</h6>
                                        <p>{{ order.charge_vat_amount }}</p>
                                    </div>
                                    <div class="col-md-2">
                                        <h6>Shipping Cost</h6>
                                        <p>{{ order.shipping_amount }}</p>
                                    </div>
                                    <div class="col-md-2">
                                        <h6>Grand Total</h6>
                                        <p class="text-warning">
                                            {{
                                                order.charge_total_price +
                                                order.shipping_amount +
                                                order.charge_vat_amount
                                            }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="p-4 border shadow-sm bg-white rounded">
                            <h5>Order Logs</h5>
                            <div class="stepper d-flex flex-column mt-4 ">
                                <div class="d-flex" v-if="order.delivery.process_state == 1">
                                    <div
                                        class="d-flex flex-column pr-3 align-items-center"
                                    >
                                        <div
                                            class="rounded-circle px-2 bg-primary text-white mb-1"
                                        >
                                            1
                                        </div>
                                        <div class="line h-100"></div>
                                    </div>
                                    <div>
                                        <h6 class="text-dark">
                                            Proccess
                                        </h6>
                                        <p class="lead text-muted pb-3">
                                            Payment status updated to Paid <br>
                                            at {{ dateToString(order.delivery.process_date) }}
                                        </p>
                                    </div>
                                </div>
                                <div class="d-flex" v-if="order.delivery.on_delivery_state == 2">
                                    <div
                                        class="d-flex flex-column pr-3 align-items-center"
                                    >
                                        <div
                                            class="rounded-circle px-2 bg-primary text-white mb-1"
                                        >
                                            2
                                        </div>
                                        <div class="line h-100"></div>
                                    </div>
                                    <div>
                                        <h6 class="text-dark">
                                            On Delivery
                                        </h6>
                                        <p class="lead text-muted pb-3">
                                            On Delivery status updated to On Delivered <br>
                                            at {{ dateToString(order.delivery.process_date) }}
                                        </p>
                                    </div>
                                </div>
                                <div class="d-flex" v-if="order.delivery.delivery_state == 3">
                                    <div
                                        class="d-flex flex-column pr-3 align-items-center"
                                    >
                                        <div
                                            class="rounded-circle px-2 bg-primary text-white mb-1"
                                        >
                                            3
                                        </div>
                                        <div class="line h-100 d-none"></div>
                                    </div>
                                    <div>
                                        <h6 class="text-dark">
                                           Delivered
                                        </h6>
                                        <p class="lead text-muted pb-3">
                                            Delivery status updated to Delivered <br>
                                            at {{ dateToString(order.delivery.process_date) }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<style scoped>
section {
    width: 85%;
}
.stepper .line {
	 width: 2px;
	 background-color: lightgrey !important;
}
 .stepper .lead {
	 font-size: .9rem;
}

</style>

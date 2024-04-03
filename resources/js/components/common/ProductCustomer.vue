<script>
export default {
    props: ["order_info"]
}
</script>
<template>
    <div id="customerViewModal" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content modal-lg">
                    <div class="modal-header">
                        <h5 class="modal-title">Customer</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="widget-content">
                            <table class="table table-bordered table-hover mb-4">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>OrderID</th>
                                        <th>Name</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <template v-for="(customer,index) in order_info" :key="index">
                                        <tr>
                                            <td>{{ ++index }}</td>
                                            <td>{{ customer.order.order_id }}</td>
                                            <td>{{ customer.user_id == 0 ? 'Guest' : customer.user.name }}</td>
                                            <td>{{ customer.user.phone }}</td>
                                            <td>{{ customer.user.email }}</td>
                                            <td>{{ customer.user.address }}</td>
                                        </tr>
                                    </template>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</template>

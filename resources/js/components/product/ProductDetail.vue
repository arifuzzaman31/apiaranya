<template>
   <div id="ProductDetails" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
        <div class="modal-dialog modal-xl">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Product View</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                    </button>
                </div>
                <div class="modal-body" v-if="product">
                    <div class="widget-content-area">
                        <h2>{{ product.p_name }}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
props: ['product']
}
</script>

<style>

</style>
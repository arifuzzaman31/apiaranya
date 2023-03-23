<template>
   <div id="ProductDetails" class="modal animated fadeInUp custo-fadeInUp" role="dialog">
        <div class="modal-dialog modal-xl cusotom-modal">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Product View</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                    </button>
                </div>
                <div class="modal-body" v-if="product">
                    <div class="row d-flex justify-content-between">
                        <div class="col-md-6 col-12">
                            <ul class="list-group ">
                                <li  class="list-group-item"><b>Product Name : {{ product.product_name }}</b></li>
                                <li  class="list-group-item"><b>Category : {{ product.category.category_name }}</b></li>
                                <li  class="list-group-item"><b>Sub-Category : {{ product.subcategory.category_name }}</b></li>
                                <li  class="list-group-item"><b>Design Code : {{ product.design_code }}</b></li>
                                <li  class="list-group-item"><b>Tax : {{ product.vat.tax_percentage }}%</b></li>
                                <li  class="list-group-item"><b>Dimension : {{ product.dimension }}</b></li>
                                <li  class="list-group-item"><b>Weight : {{ product.weight }}</b></li>
                                <li  class="list-group-item"><b>Lead Time : {{ product.lead_time }}</b></li>
                            </ul>
                            
                        </div>
                        <div class="d-flex justify-content-around col-md-6 col-12 w-100">
                            <img class="img-fluid orderImage" :src="product.image_one" alt="product-image" />
                            <img class="img-fluid orderImage" v-if="product.image_two != ''" :src="product.image_two" alt="product-image" />
                            <img class="img-fluid orderImage" v-if="product.image_three != ''" :src="product.image_three" alt="product-image" />
                            <img class="img-fluid orderImage" v-if="product.image_four != ''" :src="product.image_four" alt="product-image" />
                            <img class="img-fluid orderImage" v-if="product.image_five != ''" :src="product.image_five" alt="product-image" />
                        </div>
                    </div>

                    <div class="row mt-2 ">
                        <div class="col-12">
                            <ul class="list-group ">
                                <li  class="list-group-item"><p><b>Fabric : </b><span v-for="pf in product.product_fabric" :key="pf.id">{{ pf.fabric_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Vendor : </b><span v-for="pbr in product.product_vendor" :key="pbr.id">{{ pbr.vendor_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Brand : </b><span v-for="br in product.product_brand" :key="br.id">{{ br.brand_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Designer : </b><span v-for="pde in product.product_designer" :key="pde.id">{{ pde.designer_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Embellishment : </b><span v-for="emb in product.product_embellishment" :key="emb.id">{{ emb.embellishment_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Making : </b><span v-for="mk in product.product_making" :key="mk.id">{{ mk.making_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Season : </b><span v-for="sea in product.product_season" :key="sea.id">{{ sea.season_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Variety : </b><span v-for="vari in product.product_variety" :key="vari.id">{{ vari.variety_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Artist : </b><span v-for="art in product.product_artist" :key="art.id">{{ art.artist_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Consignment : </b><span v-for="consig in product.product_consignment" :key="consig.id">{{ consig.consignment }},</span></p></li>
                                <li  class="list-group-item"><p><b>Ingredient : </b><span v-for="ingrad in product.product_ingredient" :key="ingrad.id">{{ ingrad.ingredient_name }},</span></p></li>
                                <li  class="list-group-item"><p><b>Care : </b><span v-for="car in product.product_care" :key="car.id">{{ car.care_name }},</span></p></li>
                            </ul>
                        </div>
                    </div>

                    <div class="row mt-2 ">
                        <div class="col-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped table-checkable table-highlight-head mb-4">
                                    <thead>
                                        <tr>
                                            <th>Colour</th>
                                            <th>Size</th>
                                            <th>SKU</th>
                                            <th>CPU</th>
                                            <th class="text-center">MRP</th>
                                            <th class="text-center">Stock</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <template v-for="(attr) in product.inventory" :key="attr.id" >
                                            <tr>
                                                <td>
                                                    <p class="mb-0">{{ attr.colour.color_name }}</p>
                                                </td>
                                                <td>
                                                    <p class="mb-0">{{ attr.size.size_name }}</p>
                                                </td>
                                                <td>{{ attr.sku }}</td>
                                                <td>{{ attr.cpu }}</td>
                                                <td>{{ attr.mrp }}</td>
                                                <td class="text-center">
                                                    {{ attr.stock }}
                                                </td>
                                            </tr>
                                        </template>
                                    </tbody>
                                </table>
                            </div>
                        </div>
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

<style scoped>
.cusotom-modal {
    width: 100% !important;
}

.orderImage{
max-height: 40%;
max-width: 40%;
}

</style>
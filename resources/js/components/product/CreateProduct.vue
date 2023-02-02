<script>
import { ref,reactive, onMounted } from 'vue';
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import axios from 'axios';
import Multiselect from '@vueform/multiselect'
import Mixin from '../../mixin';
import useAttributes from '../../composables/attributes';

export default {
    components: {
        QuillEditor,
        Multiselect
    },

    setup() {
            const { notifying } = Mixin;
            const { allcategories, getCategory } = useAttributes();
           
            const allsubcategories = ref([]);
            const allcolours = ref([]);
            const allsizes = ref([]);
            const allfabrics = ref([]);
            const errors = ref([]);
            const form = reactive({
                product_name: '',
                sku: '',
                category: null,
                sub_category: null,
                product_image_one: '',
                product_image_two: '',
                design_code: '',
                stock: 0,
                cost: 0,
                price: 0,
                dimention: '',
                weight: '',
                care: '',
                is_fabric: true,
                selectfabrics : null,
                is_color: true,
                selectcolours : null,
                is_size: true,
                selectsize : null,
                discount_amount: '',
                discount_type: 1,
                max_amount: 0,
                discount_type: 1,
                description: '',
            });

            const submitForm = async() => {
                await axios.post(baseUrl+'product',form).then(response => {
                    if(response.data.status == 'success'){
                        clearForm()
                        notifying(response.data)
                    }
                    console.log(response.data)
                }).catch(e => {
                    console.log(e)
                    if(e.response.status == 422){
                        errors.value = e.response.data.errors;
                    }
                })
            };

            

            const getColour = async() => {
                try{
                    await axios.get(baseUrl+'colour/create?no_paginate=yes').then(response => {
                        // allcolours.value = response.data
                        const opt = []
                        response.data.map(data => {
                            opt.push({'value':data.id,'name':data.color_name})
                        })
                        allcolours.value = opt
                        // console.log(response.data)
                    }).catch(error => {
                        console.log(error)
                    })
                }catch(error){
                    console.log(error)
                }
            }

            const getSize = async() => {
                try{
                    await axios.get(baseUrl+'sizes/create?no_paginate=yes').then(response => {
                        const opt = []
                        response.data.map(data => {
                            opt.push({'value':data.id,'name':data.size_name})
                        })
                        allsizes.value = opt
                    }).catch(error => {
                        console.log(error)
                    })
                }catch(error){
                    console.log(error)
                }
            }

            const getFabric = async() => {
                try{
                    await axios.get(baseUrl+'fabrics/create?no_paginate=yes').then(response => {
                        const opt = []
                        response.data.map(data => {
                            opt.push({'value':data.id,'name':data.fabric_name})
                        })
                        allfabrics.value = opt
                    }).catch(error => {
                        console.log(error)
                    })
                }catch(error){
                    console.log(error)
                }
            }

            const getSubCategories = async() => {
                const filterData = (allcategories.value).filter((data) => data.parent_category == form.category)
                allsubcategories.value = filterData
            }

            const clearForm = () => {
                form.product_name = '';
                form.sku = '';
                form.category = null;
                form.sub_category = null;
                form.product_image_one = '';
                form.product_image_two = '';
                form.design_code = '';
                form.stock = 0;
                form.cost = 0;
                form.price = 0;
                form.dimention = '';
                form.weight = '';
                form.care = '';
                form.is_fabric = true;
                form.selectfabrics = null;
                form.is_color = true;
                form.selectcolours = null;
                form.is_size = true;
                form.selectsize = null;
                form.discount_amount = '';
                form.discount_type = 1;
                form.max_amount = 0;
                form.discount_type = 1;
                form.description = '';
            }

            onMounted(()=>{
                getCategory()
                getColour()
                getSize()
                getFabric()
            });

        return {
            form,
            allcategories,
            allsubcategories,
            getSubCategories,
            allcolours,
            allsizes,
            allfabrics,
            errors,
            submitForm,
            clearForm
        }
    },
}
</script>
<template>
    <form class="needs-validation" method="post" @submit.prevent="submitForm" id="add-product-form">
        <div class="row">
            <div id="tooltips" class="col-lg-12 layout-spacing col-md-12">
                <div class="statbox widget box ">
                    <div class="widget-content ">
                        <div class="form-row">
                            <div class="col-md-4">
                                <label for="product-name">Product name</label>
                                <input type="text" class="form-control" :class="errors.hasOwnProperty('product_name') ? 'is-invalid' : ''" id="product-name" placeholder="Product name" v-model="form.product_name" >
                                    <div
                                        v-if="errors.hasOwnProperty('product_name')"
                                        class="invalid-feedback"
                                    >
                                        {{ errors.product_name[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label for="product-sku">Product SKU</label>
                                <input type="text" class="form-control" :class="errors.hasOwnProperty('sku') ? 'is-invalid' : ''" id="product-sku" placeholder="SKU" v-model="form.sku" >
                                <div
                                        v-if="errors.hasOwnProperty('sku')"
                                        class="invalid-feedback"
                                    >
                                        {{ errors.sku[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label for="product-stock">Stock Qty</label>
                                <input type="number" class="form-control" :class="errors.hasOwnProperty('stock') ? 'is-invalid' : ''" id="product-stock" placeholder="Qty" v-model="form.stock" >
                                <div
                                        v-if="errors.hasOwnProperty('stock')"
                                        class="invalid-feedback"
                                    >
                                        {{ errors.stock[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="product-category">Category </label>
                                <select id="product-category" class="form-control" @change="getSubCategories()" v-model="form.category">
                                    <option selected="">Choose...</option>
                                    <option v-for="(value,index) in allcategories" :value="value.id" :key="index">{{ value.category_name }}</option>
                                </select>
                                <div
                                        v-if="errors.hasOwnProperty('category')"
                                        class="text-danger font-weight-bold"
                                    >
                                        {{ errors.category[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="product-category">Sub Category</label>
                                <select id="product-category" class="form-control" v-model="form.sub_category">
                                    <option selected="">Choose...</option>
                                    <option v-for="(value,index) in allsubcategories" :value="value.id" :key="index">{{ value.category_name }}</option>
                                </select>
                                <div
                                    v-if="errors.hasOwnProperty('sub_category')"
                                    class="text-danger font-weight-bold"
                                >
                                    {{ errors.sub_category[0] }}
                                </div>
                            </div>
    
                            <div class="col-md-4">
                                <label for="product-image1">Product Image (1:1)</label>
                                <input type="file" class="form-control" id="product-image">
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div class="row">
            <div id="tooltips" class="col-lg-12 layout-spacing col-md-12">
                <div class="statbox widget box ">
                    <div class="widget-content ">
                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <label for="design_code">Design Code</label>
                                <input type="text" class="form-control" :class="errors.hasOwnProperty('design_code') ? 'is-invalid' : ''" id="design_code" placeholder="Design Code" v-model="form.design_code">
                                <div
                                        v-if="errors.hasOwnProperty('design_code')"
                                        class="invalid-feedback"
                                    >
                                        {{ errors.design_code[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="product-cost">Cost</label>
                                <input type="number" class="form-control" id="product-cost" placeholder="Product Cost" v-model="form.cost" >
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="product-price">Price (MRP)</label>
                                <input type="number" class="form-control" :class="errors.hasOwnProperty('price') ? 'is-invalid' : ''" id="product-price" placeholder="Sale Price" v-model="form.price" >
                                <div
                                        v-if="errors.hasOwnProperty('price')"
                                        class="invalid-feedback"
                                    >
                                        {{ errors.price[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="dimention">Dimentions</label>
                                <input type="text" class="form-control" id="dimention" placeholder="Example: 29 × 27 × 5 cm" v-model="form.dimention" >
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="weight">Weight</label>
                                <input type="text" class="form-control" :class="errors.hasOwnProperty('weight') ? 'is-invalid' : ''" id="weight" placeholder="Example: 0.45 kg" v-model="form.weight" >
                                <div
                                        v-if="errors.hasOwnProperty('weight')"
                                        class="invalid-feedback"
                                    >
                                        {{ errors.weight[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="care">Care</label>
                                <input type="text" class="form-control" id="care" placeholder="Care" v-model="form.care" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div class="statbox widget box box-shadow">
            <div class="widget-header">
                <div class="row">
                    <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between">
                        <h5>Attribute</h5>
                    </div>                 
                    
                </div>                 
                    <div class="d-flex justify-content-around">
                        <div class="billing-cycle-radios">
                            <div class="radio billed-yearly-radio">
                                <div class="d-flex justify-content-center">
                                    <span class="txt-monthly mr-2">Colours</span>
                                    <label class="switch s-icons s-outline  s-outline-primary">
                                        <input v-model="form.is_color" :checked="form.is_color"  type="checkbox" id="colour">
                                        <span class="slider round"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="billing-cycle-radios">
                            <div class="radio billed-yearly-radio">
                                <div class="d-flex justify-content-center">
                                    <span class="txt-monthly mr-2">Size</span>
                                    <label class="switch s-icons s-outline  s-outline-primary">
                                        <input v-model="form.is_size" :checked="form.is_size" type="checkbox" id="size">
                                        <span class="slider round"></span>
                                    </label>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="billing-cycle-radios">
                            <div class="radio billed-yearly-radio">
                                <div class="d-flex justify-content-center">
                                    <span class="txt-monthly mr-2">Fabric</span>
                                    <label class="switch s-icons s-outline  s-outline-primary">
                                        <input v-model="form.is_fabric" :checked="form.is_fabric" type="checkbox" id="fabric">
                                        <span class="slider round"></span>
                                    </label>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="radio billed-yearly-radio">
                            <div class="d-flex justify-content-center">
                                <span class="txt-monthly mr-2">Discount</span>
                                <label class="switch s-icons s-outline  s-outline-primary">
                                    <input type="checkbox" v-model="form.is_discount" :checked="form.is_discount" id="discount6">
                                    <span class="slider round"></span>
                                </label>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
     
    
            <div class="statbox widget box box-shadow">
                <div class="widget-content ">
                    <div class="form-row">
                        <div class="col-md-12 mb-3" v-if="form.is_color">
                            <label for="product-category">Colour</label>
                             <Multiselect
                                v-model="form.selectcolours"
                               
                                mode="tags"
                                placeholder="Select Colour"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="allcolours"
                                :searchable="true"
                                >
                                <template v-slot:tag="{ option, handleTagRemove, disabled }">
                                <div
                                    class="multiselect-tag is-user"
                                    :class="{
                                    'is-disabled': disabled
                                    }"
                                >
                                    {{ option.name }}
                                    <span
                                    v-if="!disabled"
                                    class="multiselect-tag-remove"
                                    @mousedown.prevent="handleTagRemove(option, $event)"
                                    >
                                    <span class="multiselect-tag-remove-icon"></span>
                                    </span>
                                </div>
                                </template>
                            </Multiselect>
                        </div> 
                        <div class="col-md-12 mb-3" v-if="form.is_size">
                            <label for="product-category">Size</label>
                            <Multiselect
                                v-model="form.selectsize"
                                mode="tags"
                                placeholder="Select Size"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="allsizes"
                                :searchable="true"
                                >
                                <template v-slot:tag="{ option, handleTagRemove, disabled }">
                                <div
                                    class="multiselect-tag is-user"
                                    :class="{
                                    'is-disabled': disabled
                                    }"
                                >
                                    {{ option.name }}
                                    <span
                                    v-if="!disabled"
                                    class="multiselect-tag-remove"
                                    @mousedown.prevent="handleTagRemove(option, $event)"
                                    >
                                    <span class="multiselect-tag-remove-icon"></span>
                                    </span>
                                </div>
                                </template>
                            </Multiselect>
                        </div>

                        <div class="col-md-12 mb-3" v-if="form.is_fabric">
                            <label for="product-category">Fabric</label>
                            <Multiselect
                                v-model="form.selectfabrics"
                                mode="tags"
                                placeholder="Select Fabric"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="allfabrics"
                                :searchable="true"
                                >
                                <template v-slot:tag="{ option, handleTagRemove, disabled }">
                                <div
                                    class="multiselect-tag is-user"
                                    :class="{
                                    'is-disabled': disabled
                                    }"
                                >
                                    {{ option.name }}
                                    <span
                                    v-if="!disabled"
                                    class="multiselect-tag-remove"
                                    @mousedown.prevent="handleTagRemove(option, $event)"
                                    >
                                    <span class="multiselect-tag-remove-icon"></span>
                                    </span>
                                </div>
                                </template>
                            </Multiselect>
                        </div>
                    </div>
                    
                    <div class="form-row" v-if="form.is_discount">
                        <div class="col-md-4 mb-3">
                            <label for="discount_amount">Discount Amount</label>
                            <input type="number" v-model="form.discount_amount" class="form-control" id="discount_amount" placeholder="Discount Amount" >
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="discount_type">Discount Type</label>
                            <select class="form-control tagging" id="discount_type" v-model="form.discount_type">
                                <option value="flat">FLAT</option>
                                <option value="percentage">%</option>
                            </select>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="max_amount">Maximum</label>
                            <input type="number" class="form-control" :disabled="form.discount_type == 'flat' ? true : false" id="max_amount" placeholder="Maximum amount" v-model="form.max_amount" >
                        </div>
                    </div>
            </div>
        </div>
    
        <div class="row mt-2">
            <div id="tooltips" class="col-lg-12 layout-spacing col-md-12">
                <div class="statbox widget box ">
                    <div class="widget-content ">
                        <label for="editor-container">Description</label>
                        <QuillEditor theme="snow" v-model:content="form.description" contentType="html" />
                    </div>
                </div>
            </div>
        </div>
    
        <button class="btn btn-success" type="submit">Save</button>
    </form>
</template>
<style src="@vueform/multiselect/themes/default.css"></style>
<style>
  .multiselect-tag.is-user {
    padding: 5px 8px;
    border-radius: 22px;
    background: #35495e;
    margin: 3px 3px 8px;
  }

  .multiselect-tag.is-user img {
    width: 18px;
    border-radius: 50%;
    height: 18px;
    margin-right: 8px;
    border: 2px solid #ffffffbf;
  }

  .multiselect-tag.is-user i:before {
    color: #ffffff;
    border-radius: 50%;;
  }

  .user-image {
    margin: 0 6px 0 0;
    border-radius: 50%;
    height: 22px;
  }
</style>
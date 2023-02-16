<script>
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import Multiselect from '@vueform/multiselect'
import Mixin from '../../mixer';

export default {
    mixins: [Mixin],
    props:['pr_product'],
    components: {
        QuillEditor,
        Multiselect
    },
    data(){
        return {
            product: [],
            form : {
                product_name : '',
                sku : '',
                category : null,
                sub_category : null,
                product_image_one : '',
                product_image_two : '',
                product_image_three : '',
                product_image_four : '',
                product_image_five : '',
                design_code : '',
                stock : 0,
                cost : 0,
                price : 0,
                dimention : '',
                weight : '',
                care : '',
                is_fabric : true,
                selectfabrics : null,
                is_color : true,
                selectcolours : null,
                is_size : true,
                selectsize : null,
                discount_amount : '',
                discount_type : 1,
                max_amount : 0,
                description : ''
            },
            allcategories: [],
            allsubcategories: [],
            allfiltersubcategories: [],
            allcolours: [],
            allsizes: [],
            formData: new FormData(),
            allfabrics: [],
            validation_error: {}
        }
    },

    methods: {
        getCategory() {
            axios.get(baseUrl+'get-category').then(response => {
                const cat = response.data.data
                let res = cat.filter(data => data.parent_cat == 0)
                let subcat = cat.filter(data => data.parent_cat !== 0)
                this.allcategories.push(...res)
                // console.log(subcat)
                this.allfiltersubcategories.push(...subcat)
            })
        },

        openUploadModal(numb){
            const widget = window.cloudinary.createUploadWidget(
                { cloud_name: clName,
                    upload_preset: clPreset,
                    sources: [
                        "local",
                        "camera",
                        "google_drive",
                        "facebook",
                        "dropbox",
                        "instagram",
                        "unsplash"
                    ],
                    folder: "aranya", //upload files to the specified folder
                    
                    styles: {
                        palette: {
                            window: "#10173a",
                            sourceBg: "#20304b",
                            windowBorder: "#7171D0",
                            tabIcon: "#79F7FF",
                            inactiveTabIcon: "#8E9FBF",
                            menuIcons: "#CCE8FF",
                            link: "#72F1FF",
                            action: "#5333FF",
                            inProgress: "#00ffcc",
                            complete: "#33ff00",
                            error: "#cc3333",
                            textDark: "#000000",
                            textLight: "#ffffff"
                        },
                        fonts: {
                            default: null,
                            "sans-serif": {
                                url: null,
                                active: true
                            }
                        }
                    }
                },
                (error, result) => {
                if (!error && result && result.event === "success") {
                    console.log('Done uploading..: ', result.info);
                    this.setImage(numb,result.info.secure_url)
                    this.updateImage(numb,result.info.path)
                }
            });
                widget.open();
        },

        setImage(numb,uri){
            switch (numb) {
                case 'one':
                    this.form.product_image_one = uri
                    break;
                case 'two':
                    this.form.product_image_two = uri
                    break;
                case 'three':
                    this.form.product_image_three = uri
                    break;

                case 'four':
                    this.form.product_image_four = uri
                    break;

                case 'five':
                    this.form.product_image_five = uri
                    break;
            
                default:
                    break;
            }
        },

        updateImage(numb,uri){
            console.log(numb)
            console.log(uri)
            // axios.post(baseUrl+'update-product-image',{'img_name':numb,'uri_link':uri}).then(response => {
            //     if(response.data.status == 'success'){
            //     }
            // })
        },

        getColour() {
            try{
                 axios.get(baseUrl+'colour/create?no_paginate=yes').then(response => {
                    // allcolours.value = response.data
                    const opt = []
                    response.data.map(data => {
                        opt.push({'value':data.id,'name':data.color_name})
                    })
                    this.allcolours = opt
                    // console.log(response.data)
                }).catch(error => {
                    console.log(error)
                })
            }catch(error){
                console.log(error)
            }
        },
        getSize() {
            try{
                axios.get(baseUrl+'sizes/create?no_paginate=yes').then(response => {
                    const opt = []
                    response.data.map(data => {
                        opt.push({'value':data.id,'name':data.size_name})
                    })
                    this.allsizes = opt
                }).catch(error => {
                    console.log(error)
                })
            }catch(error){
                console.log(error)
            }
        },
        getFabric(){
            try{
                axios.get(baseUrl+'fabrics/create?no_paginate=yes').then(response => {
                    const opt = []
                    response.data.map(data => {
                        opt.push({'value':data.id,'name':data.fabric_name})
                    })
                    this.allfabrics = opt
                }).catch(error => {
                    console.log(error)
                })
            }catch(error){
                console.log(error)
            }
        },
        getSubCategories(){
            this.form.sub_category = ''
            const filterData = (this.allfiltersubcategories).filter((data) => data.parent_cat == this.form.category)
            this.allsubcategories = filterData
        },
        clearForm() {
            this.form = {
                product_name : '',
                sku : '',
                category : null,
                sub_category : null,
                product_image_one : '',
                product_image_two : '',
                design_code : '',
                stock : 0,
                cost : 0,
                price : 0,
                dimention : '',
                weight : '',
                care : '',
                is_fabric : true,
                selectfabrics : null,
                is_color : true,
                selectcolours : null,
                is_size : true,
                selectsize : null,
                discount_amount : '',
                discount_type : 1,
                max_amount : 0,
                description : ''
            },
            this.validation_error = {}
        }
    },

    mounted(){
        this.getCategory()
        this.getColour()
        this.getSize()
        this.getFabric()

        // const subc = this.allfiltersubcategories.filter(data => data.parent_cat == this.pr_product.sub_category_id)
        // this.allsubcategories.push(...subc)
        // // console.log(subc)
        this.form.product_name = this.pr_product.product_name
        this.form.sku = this.pr_product.sku
        this.form.category = this.pr_product.category_id
        this.form.sub_category = this.pr_product.sub_category_id
        this.form.stock = this.pr_product.inventory.stock
        this.form.design_code = this.pr_product.design_code
        this.form.cost = this.pr_product.cost
        this.form.price = this.pr_product.mrp_price
        this.form.dimension = this.pr_product.dimension
        this.form.weight = this.pr_product.weight
        this.form.care = this.pr_product.care
        this.form.selectcolours = this.pr_product.product_colour.map(color => color.id)
        this.form.selectsize = this.pr_product.product_size.map(size => size.id)
        this.form.selectfabrics = this.pr_product.product_fabric.map(fab => fab.id)
        this.form.description = this.pr_product.description
    }
}
</script>
<template>
    <form class="needs-validation" method="post" @submit.prevent="updateForm()" id="add-product-form">
        <div class="row">
            <div id="tooltips" class="col-lg-12 layout-spacing col-md-12">
                <div class="statbox widget box ">
                    <div class="widget-content ">
                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <label for="product-name">Product name</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('product_name') ? 'is-invalid' : ''" id="product-name" placeholder="Product name" v-model="form.product_name" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('product_name')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.product_name[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="product-sku">Product SKU</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('sku') ? 'is-invalid' : ''" id="product-sku" placeholder="SKU" v-model="form.sku" >
                                <div
                                        v-if="validation_error.hasOwnProperty('sku')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.sku[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="product-stock">Stock Qty</label>
                                <input type="number" class="form-control" :class="validation_error.hasOwnProperty('stock') ? 'is-invalid' : ''" id="product-stock" placeholder="Qty" v-model="form.stock" >
                                <div
                                        v-if="validation_error.hasOwnProperty('stock')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.stock[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4 mb-3">
                                <label for="product-category">Category </label>
                                <select id="product-category" class="form-control" @change="getSubCategories()" v-model="form.category">
                                    <option selected="">Choose...</option>
                                    <option v-for="(value,index) in allcategories" :value="value.id" :key="index">{{ value.cat_name }}</option>
                                </select>
                                <div
                                        v-if="validation_error.hasOwnProperty('category')"
                                        class="text-danger font-weight-bold"
                                    >
                                        {{ validation_error.category[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4 mb-3">
                                <label for="product-category">Sub Category</label>
                                <select id="product-category" class="form-control" v-model="form.sub_category">
                                    <option selected="">Choose...</option>
                                    <option v-for="(value,index) in allsubcategories" :value="value.id" :key="index">{{ value.cat_name }}</option>
                                </select>
                                <div
                                    v-if="validation_error.hasOwnProperty('sub_category')"
                                    class="text-danger font-weight-bold"
                                >
                                    {{ validation_error.sub_category[0] }}
                                </div>
                            </div>
    
                            <div class="col-md-4 mb-3">
                                <label for="product-image1">Product Image (1:1)</label>
                                <button type="button" class="btn btn-sm btn-info" @click="openUploadModal()">Upload files</button>
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
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('design_code') ? 'is-invalid' : ''" id="design_code" placeholder="Design Code" v-model="form.design_code">
                                <div
                                        v-if="validation_error.hasOwnProperty('design_code')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.design_code[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="product-cost">Cost</label>
                                <input type="number" class="form-control" id="product-cost" placeholder="Product Cost" v-model="form.cost" >
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="product-price">Price (MRP)</label>
                                <input type="number" class="form-control" :class="validation_error.hasOwnProperty('price') ? 'is-invalid' : ''" id="product-price" placeholder="Sale Price" v-model="form.price" >
                                <div
                                        v-if="validation_error.hasOwnProperty('price')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.price[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="dimention">Dimentions</label>
                                <input type="text" class="form-control" id="dimention" placeholder="Example: 29 × 27 × 5 cm" v-model="form.dimention" >
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="weight">Weight</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('weight') ? 'is-invalid' : ''" id="weight" placeholder="Example: 0.45 kg" v-model="form.weight" >
                                <div
                                        v-if="validation_error.hasOwnProperty('weight')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.weight[0] }}
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
                                placeholder="Select Fabric"
                                track-by="name"
                                label="name"
                                :close-on-select="true"
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
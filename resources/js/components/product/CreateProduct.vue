<script>
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import axios from 'axios';
import Multiselect from '@vueform/multiselect'
import Mixin from '../../mixer'

export default {
    mixins:[Mixin],
    components: {
        QuillEditor,
        Multiselect
    },

    data(){
        return {
            form: {
                product_name: '',
                sku: '',
                category: null,
                sub_category: null,
                vandor : 'Aranya',
                brand : 'Aranya',
                designer : '',
                embellishment : '',
                making : '',
                selectIngredient : null,
                lead_time : '',
                season : '',
                variety : '',
                fit : '',
                artist_name : '',
                consignment : '',
                ingredients : '',
                product_image_one : '',
                product_image_two : '',
                product_image_three : '',
                product_image_four : '',
                design_code: '',
                stock: 1,
                cost: 0,
                price: 0,
                dimention: '',
                weight: '',
                care: '',
                is_fabric: true,
                selectfabrics : null,
                is_color: true,
                color_size: true,
                selectcolours : null,
                is_size: true,
                selectsize : null,
                discount_amount: '',
                discount_type: 1,
                max_amount: 0,
                discount_type: 1,
                description: '',
                attrqty: [{colour_id:'',size_id:'',qty:''}]
            },

            allcategories: [],
            allsubcategories: [],
            allfiltersubcategories: [],
            allcolours: [],
            allsizes: [],
            allfabrics: [],
            validation_error: {}
        }
    },
    methods: {
        submitForm () {
             axios.post(baseUrl+'product',this.form).then(response => {
                console.log(response)
                if(response.data.status == 'success'){
                    this.clearForm()
                    this.successMessage(response.data)
                    window.location.href = baseUrl+"product"
                }
            }).catch(e => {
                console.log(e)
                if(e.response.status == 422){
                    this.validation_error = e.response.data.errors;
                    this.validationError()
                }
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
                    this.setImage(numb,result.info.path)
                    // widget.close()
                }
                this.validationError({'status':'error','message':error.error.message})
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
            return true;
        },

        addMore(){
            this.form.attrqty.push({colour_id:'',size_id:'',qty:''})
        },
        removeCatChild(index) {
            this.form.attrqty.splice(index, 1);
        },
       
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
            const filterData = (this.allfiltersubcategories).filter((data) => data.parent_cat == this.form.category)
            this.allsubcategories = filterData
        },
        clearForm() {
            this.form = {
                product_name : '',
                sku : '',
                category : null,
                sub_category : null,
                vandor : 'Aranya',
                brand : 'Aranya',
                designer : '',
                embellishment : '',
                making : '',
                lead_time : '',
                season : '',
                variety : '',
                fit : '',
                artist_name : '',
                ingredients : '',
                consignment : '',
                product_image_one : '',
                product_image_two : '',
                product_image_three : '',
                product_image_four : '',
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
            this.allsubcategories= [],
            this.allfiltersubcategories = [],
            this.validation_error = {}
        }
    },
    mounted(){
        this.getCategory()
        this.getColour()
        this.getSize()
        this.getFabric()
    }
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
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('product_name') ? 'is-invalid' : ''" id="product-name" placeholder="Product name" v-model="form.product_name" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('product_name')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.product_name[0] }}
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label for="product-sku">Product SKU</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('sku') ? 'is-invalid' : ''" id="product-sku" placeholder="SKU" v-model="form.sku" >
                                <div
                                        v-if="validation_error.hasOwnProperty('sku')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.sku[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="product-category">Category </label>
                                <select id="product-category" class="form-control" @change="getSubCategories()" v-model="form.category">
                                    <option value="">Choose...</option>
                                    <option v-for="(value,index) in allcategories" :value="value.id" :key="index">{{ value.cat_name }}</option>
                                </select>
                                <div
                                        v-if="validation_error.hasOwnProperty('category')"
                                        class="text-danger font-weight-bold"
                                    >
                                        {{ validation_error.category[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4 mt-1">
                                <label for="product-category">Sub Category</label>
                                <select id="product-category" class="form-control" v-model="form.sub_category">
                                    <option value="">Choose...</option>
                                    <option v-for="(value,index) in allsubcategories" :value="value.id" :key="index">{{ value.cat_name }}</option>
                                </select>
                                <div
                                    v-if="validation_error.hasOwnProperty('sub_category')"
                                    class="text-danger font-weight-bold"
                                >
                                    {{ validation_error.sub_category[0] }}
                                </div>
                            </div>
                            <div class="form-group col-md-4 mt-1">
                                <label for="product-Vandor">Vandor</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('vandor') ? 'is-invalid' : ''" id="product-name" placeholder="Vandor Name" v-model="form.vandor" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('vandor')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.vandor[0] }}
                                    </div>
                            </div>

                            <div class="form-group col-md-4 mt-1">
                                <label for="product-Brand">Brand</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('brand') ? 'is-invalid' : ''" id="product-name" placeholder="Brand Name" v-model="form.brand" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('brand')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.brand[0] }}
                                    </div>
                            </div>

                            <div class="form-group col-md-4 mt-1">
                                <label for="product-Brand">Designer</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('designer') ? 'is-invalid' : ''" id="Designer-name" placeholder="Designer Name" v-model="form.designer" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('designer')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.designer[0] }}
                                    </div>
                            </div>

                            <div class="form-group col-md-4 mt-1">
                                <label for="product-Brand">Embellishment</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('embellishment') ? 'is-invalid' : ''" id="Embellishment-name" placeholder="Embellishment" v-model="form.embellishment" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('embellishment')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.embellishment[0] }}
                                    </div>
                            </div>
                            
                            <div class="form-group col-md-4 mt-1">
                                <label for="product-Making">Making</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('making') ? 'is-invalid' : ''" id="Making-name" placeholder="Making" v-model="form.making" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('making')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.making[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4 mt-1">
                                <label for="product-LeadTime">Lead Time</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('lead_time') ? 'is-invalid' : ''" id="LeadTime-name" placeholder="Lead Time" v-model="form.lead_time" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('lead_time')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.lead_time[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4 mt-1">
                                <label for="product-Season">Season</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('season') ? 'is-invalid' : ''" id="Season-name" placeholder="Season" v-model="form.season" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('season')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.season[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4 mt-1">
                                <label for="product-Variety">Variety</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('variety') ? 'is-invalid' : ''" id="Variety-name" placeholder="Variety" v-model="form.variety" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('variety')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.variety[0] }}
                                    </div>
                            </div>

                            <div class="form-group col-md-4 mt-1">
                                <label for="product-Fit">Fit</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('fit') ? 'is-invalid' : ''" id="Fit-name" placeholder="Fit" v-model="form.fit" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('fit')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.fit[0] }}
                                    </div>
                            </div>

                            <div class="form-group col-md-4 mt-1">
                                <label for="product-ArtistName">Artist Name</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('artist_name') ? 'is-invalid' : ''" id="Fit-name" placeholder="Artist Name" v-model="form.artist_name" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('artist_name')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.artist_name[0] }}
                                    </div>
                            </div>

                            <div class="form-group col-md-4 mt-1">
                                <label for="product-Consignment">Consignment</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('consignment') ? 'is-invalid' : ''" id="Fit-name" placeholder="Consignment" v-model="form.consignment" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('consignment')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.consignment[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4 mt-1">
                                <label for="product-ingredients">Ingredients</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('ingredients') ? 'is-invalid' : ''" id="ingredients-name" placeholder="Ingredients" v-model="form.ingredients" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('ingredients')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.ingredients[0] }}
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div id="tooltips" class="mb-2">
            <div class="statbox widget box ">
                <div class="widget-content ">
                        <div class="row">
                        <div class="col-md-3 col-12 mt-4">
                                <label for="product-image1">Image (1:1)</label>
                                <!-- <input type="file" class="form-control" id="product-image"> -->
                                <button type="button" class="btn btn-sm btn-info" @click="openUploadModal('one')">Upload files</button>
                                <p class="mt-1 text-info" v-if="form.product_image_one != ''">{{  form.product_image_one }}</p>
                            </div>
                            <div class="col-md-3 col-12 mt-4">
                                <label for="product-image1">Image (1:1)</label>
                                <!-- <input type="file" class="form-control" id="product-image"> -->
                                <button type="button" class="btn btn-sm btn-info" @click="openUploadModal('two')">Upload files</button>
                                <p class="mt-1 text-info" v-if="form.product_image_two != ''">{{  form.product_image_two }}</p>
                            </div>
                            <div class="col-md-3 col-12 mt-4">
                                <label for="product-image1">Image (1:1)</label>
                                <!-- <input type="file" class="form-control" id="product-image"> -->
                                <button type="button" class="btn btn-sm btn-info" @click="openUploadModal('three')">Upload files</button>
                                <p class="mt-1 text-info" v-if="form.product_image_tree != ''">{{  form.product_image_tree }}</p>
                            </div>
                            <div class="col-md-3 col-12 mt-4">
                                <label for="product-image1">Image (1:1)</label>
                                <!-- <input type="file" class="form-control" id="product-image"> -->
                                <button type="button" class="btn btn-sm btn-info" @click="openUploadModal('four')">Upload files</button>
                                <p class="mt-1 text-info" v-if="form.product_image_four != ''">{{  form.product_image_four }}</p>
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
                                <label for="product-cost">Unit Cost</label>
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
                    <div class="d-flex mt-3">
                        <div class="billing-cycle-radios">
                            <div class="radio billed-yearly-radio">
                                <div class="d-flex justify-content-center">
                                    <span class="txt-monthly mr-2">Colour Size</span>
                                    <label class="switch s-icons s-outline  s-outline-primary">
                                        <input v-model="form.color_size" :checked="form.color_size"  type="checkbox" id="colour">
                                        <span class="slider round"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="billing-cycle-radios">
                            <div class="radio billed-yearly-radio">
                                <div class="d-flex justify-content-center">
                                    <span class="txt-monthly mr-2">Size</span>
                                    <label class="switch s-icons s-outline  s-outline-primary">
                                        <input v-model="form.is_size" :checked="form.is_size" type="checkbox" id="size">
                                        <span class="slider round"></span>
                                    </label>
                                    
                                </div>
                            </div>
                        </div> -->
                        <!-- <div class="billing-cycle-radios">
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
                        </div> -->
                    </div>
                </div>
            </div>
            
            <div class="statbox widget box box-shadow" v-if="form.color_size">
                <div class="widget-content ">
                    <div class="row text-center">
                        <div class="col-4  text-success">
                            <b>Coluor</b>
                        </div>
                        <div class="col-4  text-success">
                           <b>Size</b> 
                        </div>
                        <div class="col-2  text-success">
                            <b>Qty</b>
                        </div>
                        <div class="col-2  text-danger">
                            <b>Remove</b>
                        </div>
                    </div>
                    <div class="row" v-for="(qt,index) in form.attrqty" :key="index">
                        <div class="form-group col-md-4">
                            <select id="product-category" class="form-control" v-model="qt.colour_id">
                                <option value="">Choose...</option>
                                <option v-for="(value,index) in allcolours" :value="value.value" :key="index">{{ value.name }}</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <select id="product-category" class="form-control" v-model="qt.size_id">
                                <option value="">Choose...</option>
                                <option v-for="(value,index) in allsizes" :value="value.value" :key="index">{{ value.name }}</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <input type="number"  class="form-control" id="qty" v-model="qt.qty" placeholder="qty" >
                        </div>
                        <div class="form-group col-md-2 text-center" v-if="index != 0">
                            <a
                              href="javascript:void(0)"
                              @click.prevent="removeCatChild(index)"
                              class="mt-5"
                              ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 text-danger"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></a
                            >
                        </div>
                    </div>
                </div>
                <a
                        href="javascript:void(0)"
                        @click.prevent="addMore()"
                        class="btn btn-warning"
                    >Add More
                    </a>
            </div>

            <div class="statbox widget box box-shadow" v-else>
                <div class="widget-content ">
                    <div class="row">
                        <div class="form-group col-md-3 mt-1">
                                <label for="product-ingredients">Stock</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('stock') ? 'is-invalid' : ''" id="stock-name" placeholder="stock" v-model="form.stock" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('stock')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.stock[0] }}
                                    </div>
                            </div>
                    </div>
                </div>
            </div>
            
            <div class="statbox widget box box-shadow">
                <div class="widget-content ">
                    <div class="form-row">
                        <!-- <div class="col-md-12 mb-3" v-if="form.is_color">
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
                        </div> -->

                        <div class="col-md-12 mb-3" v-if="form.is_fabric">
                            <label for="product-category">Composition</label>
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
                    
                    <!-- <div class="form-row" v-if="form.is_discount">
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
                    </div> -->
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
<style scoped>
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
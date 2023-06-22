<script>
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import axios from 'axios';
import Multiselect from '@vueform/multiselect'
import Mixin from '../../mixer'
import ImageCard from './ImageCard.vue';

export default {
    props:['prp_vendor','prp_artist','prp_colour','prp_brand','prp_care','flat_colour','prp_consignment','prp_designer','prp_embellish','prp_fabric','prp_fit','prp_ingredient','prp_making','prp_season','prp_size','prp_variety','prp_tax'],
    mixins:[Mixin],
    components: {
        QuillEditor,
        Multiselect,
        ImageCard
    },

    data(){
        return {
            form: {
                product_name: '',
                category: '',
                sub_category: '',
                vendor : [],
                brand : [],
                designer : [],
                embellishment : [],
                making : [],
                lead_time : '',
                season : [],
                variety : [],
                tages : [],
                fit : [],
                artist : [],
                consignment : [],
                ingredients : [],
                flat_colour : [],
                selectedImages : [],
                design_code: '',
                unit: '',
                height: '',
                width: '',
                length: '',
                weight: '',
                care: [],
                fragile: 'No',
                fragile_charge: 0,
                vat: 1,
                is_fabric: true,
                selectfabrics : [],
                is_color: true,
                has_variation: false,
                selectcolours : [],
                is_size: true,
                selectsize : [],
                discount_amount: '',
                discount_type: 1,
                max_amount: 0,
                discount_type: 1,
                description: '',
                attrqty: [{colour_id:'',size_id:'',cpu:'',mrp:'',qty:'',sku:''}]
            },
            choose_colours: [],
            choose_sizes: [],
            combine: false,
            tages: [],
            allImages: [],
            page: 1,
            list_colour: [],
            allcategories: [],
            allsubcategories: [],
            allfiltersubcategories: [],
            media_keyword: '',
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

        addMore(){
            this.form.attrqty.push({colour_id:'',size_id:'',cpu:'',mrp:'',qty:'',sku:''})
        },
        removeCatChild(index) {
            this.form.attrqty.splice(index, 1);
        },
       
        getCategory() {
             axios.get(baseUrl+'get-category?no_paginate=yes').then(response => {
                const cat = response.data
                let res = cat.filter(data => data.parent_category == 0)
                let subcat = cat.filter(data => data.parent_category !== 0)
                this.allcategories.push(...res)
                // console.log(subcat)
                this.allfiltersubcategories.push(...subcat)
            })
        },

        getSubCategories(){
            const filterData = (this.allfiltersubcategories).filter((data) => data.parent_category == this.form.category)
            this.allsubcategories = filterData
        },

        addTag (newTag) {
            const tag = {
                name: newTag,
                code: newTag.substring(0, 2) + Math.floor((Math.random() * 10000000))
            }
            this.tages.push(tag)
            this.form.tages.push(tag)
        },

        makeAttrComb(){
            this.combine = true 
            this.form.attrqty = []
            if(this.choose_colours.length > 0 && this.form.is_color && this.form.is_size && this.choose_sizes.length > 0){
                new Set([...this.choose_colours])
                new Set([...this.choose_sizes])
                this.choose_colours.map(item => {
                    this.choose_sizes.map(it => {
                        this.form.attrqty.push({colour_id:item,size_id:it,cpu:'',mrp:'',qty:'',sku:''})
                    })
                })
            } else {
                if(this.choose_colours.length > 0 && this.form.is_color){
                    new Set([...this.choose_colours])
                    this.choose_sizes = []
                    this.choose_colours.map(item => {
                        this.form.attrqty.push({colour_id:item,size_id:'',cpu:'',mrp:'',qty:'',sku:''})
                    })
                } else {
                    new Set([...this.choose_sizes])
                    this.choose_colours = []
                    this.choose_sizes.map(it => {
                        this.form.attrqty.push({colour_id:'',size_id:it,cpu:'',mrp:'',qty:'',sku:''})
                    })
                }
            }
            
            
        },

        clearForm() {
            this.form = {
                product_name: '',
                category: '',
                sub_category: '',
                sku: '',
                vendor : [],
                brand : [],
                designer : [],
                embellishment : [],
                making : [],
                lead_time : '',
                season : [],
                variety : [],
                tages : [],
                fit : [],
                artist : [],
                consignment : [],
                ingredients : [],
                selectedImages : [],
                design_code: '',
                unit: '',
                height: '',
                width: '',
                length: '',
                weight: '',
                care: [],
                vat: 1,
                fragile: 'No',
                fragile_charge: 0,
                is_fabric: true,
                selectfabrics : [],
                is_color: true,
                has_variation: false,
                selectcolours : [],
                is_size: true,
                selectsize : [],
                discount_amount: '',
                discount_type: 1,
                max_amount: 0,
                discount_type: 1,
                description: '',
                attrqty: [{colour_id:'',size_id:'',cpu:'',mrp:'',qty:'',sku:''}]
            },
            this.allsubcategories= [],
            this.allfiltersubcategories = [],
            this.page = 1,
            this.validation_error = {}
        },
        mediaModalOpen(){
            $("#mediaModal").modal('show');
        },
        getImageData(){
            axios.get(baseUrl+`media-manager/create?page=${this.page}&per_page=10&keyword=${this.media_keyword}`)
            .then(result => {
                if(this.page == 1){
                    this.allImages = result.data;
                } else {
                    this.allImages.data.push(...result.data.data)
                }
            })
            .catch(errors => {
                console.log(errors);
            });  
        },
        loadMore(){
            this.getImageData(this.page++)
        },

        selectImage(item){
            // console.log(item.id)
            if(this.form.selectedImages && this.form.selectedImages.length < 4){
                this.form.selectedImages.push(item.file_link)
                new Set([...this.form.selectedImages])
            } else {
                this.validationError({"message":"Maximum 4 File Upload!"})
            }
        },
        searchMedia(){
            if(this.media_keyword.length > 3) return;
            this.getImageData()
        }
    },
    mounted(){
        this.prp_colour.map(color => {
           this.list_colour.push({'value':color.color_name,'name':color.color_name})
        })
        this.getCategory()
        this.getImageData()
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
                            
                            <div class="form-group col-md-4">
                                <label for="product-category">Category </label>
                                <select id="product-category" class="form-control" @change="getSubCategories()" v-model="form.category">
                                    <option value="">Choose Category...</option>
                                    <option v-for="(value,index) in allcategories" :value="value.id" :key="index">{{ value.category_name }}</option>
                                </select>
                                <div
                                        v-if="validation_error.hasOwnProperty('category')"
                                        class="text-danger font-weight-bold"
                                    >
                                        {{ validation_error.category[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="product-subcategory">Sub Category</label>
                                <select id="product-subcategory" class="form-control" v-model="form.sub_category">
                                    <option value="">Choose Sub Category...</option>
                                    <option v-for="(value,index) in allsubcategories" :value="value.id" :key="index">{{ value.category_name }}</option>
                                </select>
                                <div
                                    v-if="validation_error.hasOwnProperty('sub_category')"
                                    class="text-danger font-weight-bold"
                                >
                                    {{ validation_error.sub_category[0] }}
                                </div>
                            </div>

                            <div class="col-md-12 mb-3">
                            <label for="product-Vendor">Vendor</label>
                             <Multiselect
                                v-model="form.vendor"
                                mode="tags"
                                placeholder="Select Vendor"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_vendor"
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

                        <div class="col-md-12 mb-3">
                            <label for="product-Brand">Brand</label>
                             <Multiselect
                                v-model="form.brand"
                                mode="tags"
                                placeholder="Select Brand"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_brand"
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

                        <div class="col-md-12 mb-3">
                            <label for="product-Designer">Designer</label>
                             <Multiselect
                                v-model="form.designer"
                                mode="tags"
                                placeholder="Select Designer"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_designer"
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

                        <div class="col-md-12 mb-3">
                            <label for="product-Embellishment">Embellishment</label>
                             <Multiselect
                                v-model="form.embellishment"
                                mode="tags"
                                placeholder="Select Embellishment"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_embellish"
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

                        <div class="col-md-12 mb-3">
                            <label for="product-Making">Making</label>
                             <Multiselect
                                v-model="form.making"
                                mode="tags"
                                placeholder="Select Making"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_making"
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

                        <div class="col-md-12 mb-3">
                            <label for="product-Season">Season</label>
                             <Multiselect
                                v-model="form.season"
                                mode="tags"
                                placeholder="Select Season"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_season"
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

                        <div class="col-md-12 mb-3">
                            <label for="product-Variety">Variety</label>
                             <Multiselect
                                v-model="form.variety"
                                mode="tags"
                                placeholder="Select Variety"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_variety"
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

                        <div class="col-md-12 mb-3">
                            <label for="product-Fit">Fit</label>
                             <Multiselect
                                v-model="form.fit"
                                mode="tags"
                                placeholder="Select Fit"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_fit"
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

                        <div class="col-md-12 mb-3">
                            <label for="product-Artist">Artist</label>
                             <Multiselect
                                v-model="form.artist"
                                mode="tags"
                                placeholder="Select Artist"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_artist"
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
                        <div class="col-md-12 mb-3">
                            <label for="product-Consignment">Consignment</label>
                             <Multiselect
                                v-model="form.consignment"
                                mode="tags"
                                placeholder="Select Consignment"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_consignment"
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
                        <div class="col-md-12 mb-3">
                            <label for="product-Season">Ingredients</label>
                             <Multiselect
                                v-model="form.ingredients"
                                mode="tags"
                                placeholder="Select Ingredients"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_ingredient"
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

                        <div class="col-md-12 mb-3">
                            <label for="product-Care">Care</label>
                             <Multiselect
                                v-model="form.care"
                                mode="tags"
                                placeholder="Select Care"
                                track-by="name"
                                label="name"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_care"
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
                    </div>
                </div>
            </div>
        </div>
    
        <div id="tooltips" class="mb-2">
            <div class="statbox widget box ">
                <div class="widget-content ">
                    <div class="row">
                        <div class="col-12 my-2 text-center">
                            <button type="button" class="btn btn-sm btn-info" @click="mediaModalOpen()">Upload files</button>
                        </div>
                        <div class="col-md-3 d-flex justify-content-center" v-for="(itm,index) in this.form.selectedImages" :key="index"> 
                            <img :src="itm" style="width:80px;height:100px" class="img-fluid rounded" />
                            <button type="button" @click="() => this.form.selectedImages.splice(index, 1)" class="close text-danger image-close" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
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
                                <input type="text" class="form-control form-control-sm" :class="validation_error.hasOwnProperty('design_code') ? 'is-invalid' : ''" id="design_code" placeholder="Design Code" v-model="form.design_code">
                                <div
                                        v-if="validation_error.hasOwnProperty('design_code')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.design_code[0] }}
                                    </div>
                            </div>

                            <div class="form-group col-md-4 mb-3">
                                <label for="product-LeadTime">Fragile</label>
                                <select id="product-category" class="form-control form-control-sm" v-model="form.fragile">
                                    <option value="Yes">Fragile</option>
                                    <option value="No">Non-Fragile</option>
                                </select>
                                    <div
                                        v-if="validation_error.hasOwnProperty('fragile')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.fragile[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-4 mb-3">
                                <label for="product-fragile_charge">Fragile Charge</label>
                                <input type="number" class="form-control form-control-sm" :class="validation_error.hasOwnProperty('fragile_charge') ? 'is-invalid' : ''" id="fragile_charge-name" v-model="form.fragile_charge" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('fragile_charge')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.fragile_charge[0] }}
                                    </div>
                            </div>
                         
                            <div class="col-md-2 mb-3">
                                <label for="length">Length</label>
                                <input type="number" class="form-control form-control-sm" id="length" placeholder="Enter Length" v-model="form.length" />
                            </div>
                            <div class="col-md-2 mb-3">
                                <label for="height">Height</label>
                                <input type="number" class="form-control form-control-sm" id="height" placeholder="Enter Height" v-model="form.height" />
                            </div>
                            <div class="col-md-2 mb-3">
                                <label for="width">Width</label>
                                <input type="number" class="form-control form-control-sm" id="width" placeholder="Enter Width" v-model="form.width" />
                            </div>
                            <div class="col-md-2 mb-3">
                                <label for="unit">Unit</label>
                                <input type="text" class="form-control form-control-sm" id="unit" placeholder="Enter Width" v-model="form.unit" />
                            </div>
                            <div class="col-md-2 mb-3">
                                <label for="weight">Weight</label>
                                <input type="text" class="form-control form-control-sm" :class="validation_error.hasOwnProperty('weight') ? 'is-invalid' : ''" id="weight" placeholder="Example: 0.45 kg" v-model="form.weight" >
                                <div
                                        v-if="validation_error.hasOwnProperty('weight')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.weight[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-2 mb-3">
                                <label for="product-LeadTime">Lead Time</label>
                                <input type="text" class="form-control form-control-sm" :class="validation_error.hasOwnProperty('lead_time') ? 'is-invalid' : ''" id="LeadTime-name" placeholder="Lead Time" v-model="form.lead_time" >
                                    <div
                                        v-if="validation_error.hasOwnProperty('lead_time')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.lead_time[0] }}
                                    </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="statbox widget box-shadow">
            <div class="widget-content">
                <div class="form-row">
                    <div class="col-md-12">
                        <label for="product-Tags">VAT</label>
                        <Multiselect
                                v-model="form.vat"
                                placeholder="Select VAT"
                                track-by="name"
                                label="name"
                                :close-on-select="true"
                                :options="prp_tax"
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
            </div>
        </div>

        <div class="statbox widget box-shadow">
            <div class="widget-content">
                <div class="form-row">
                    <div class="col-md-12">
                        <label for="product-Tags">Colour</label>
                        <Multiselect
                                v-model="form.flat_colour"
                                placeholder="Select Colour"
                                track-by="name"
                                label="name"
                                mode="tags"
                                :close-on-select="false"
                                :search="true"
                                :options="flat_colour"
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
            </div>
        </div>

        <div class="statbox widget box box-shadow mt-3">
            <div class="widget-header">
                <div class="row">
                    <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex">
                        <h5>Attribute</h5>
                        <div class="ml-5  d-flex">
                            <div class="billing-cycle-radios">
                                <div class="radio billed-yearly-radio">
                                    <div class="d-flex justify-content-center">
                                        <span class="txt-monthly mr-2">Has Variations?</span>
                                        <label class="switch s-icons s-outline  s-outline-primary">
                                            <input v-model="form.has_variation" :checked="form.has_variation"  type="checkbox" id="colour">
                                            <span class="slider round"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>                 
                </div>         
            </div>
        </div>
        
        <div class="statbox widget box box-shadow" v-if="form.has_variation">
                <div class="widget-content ">
                        <div class="row" v-show="form.has_variation">
                            <div class="form-group col-md-3">
                                <div class="custom-control custom-checkbox mt-2">
                                    <input type="checkbox" v-model="form.is_color" :checked="form.is_color" class="custom-control-input" id="hasColour">
                                    <label class="custom-control-label" for="hasColour">Has Colour ?</label>
                                </div>
                            </div>
                            <div class="form-group col-md-9" v-show="form.is_color">
                                <Multiselect
                                    v-model="choose_colours"
                                    placeholder="Select Colour"
                                    track-by="name"
                                    label="name"
                                    mode="tags"
                                    :close-on-select="false"
                                    :search="true"
                                    :options="prp_colour"
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
                        <div class="row">
                            <div class="form-group col-md-3">
                                <div class="custom-control custom-checkbox mt-2">
                                    <input type="checkbox" v-model="form.is_size" :checked="form.is_size" class="custom-control-input" id="hasSize">
                                    <label class="custom-control-label" for="hasSize">Has Size ?</label>
                                </div>
                            </div>
                            <div class="form-group col-md-9" v-show="form.is_size">
                            <Multiselect
                                v-model="choose_sizes"
                                placeholder="Select Size"
                                track-by="name"
                                label="name"
                                mode="tags"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_size"
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
                   
                    <button class="btn btn-success btn-sm" type="button" @click.prevent="makeAttrComb()">Add</button>
                </div>
            </div>

            <div class="statbox widget box box-shadow" v-if="form.has_variation && combine">
                <div class="widget-content ">
                    <div class="row text-center">
                        <div class="col-2 col-sm-2 text-success" v-show="form.is_color">
                            <b>Colour</b>
                        </div>
                        <div class="col-2  text-success"  v-show="form.is_size">
                           <b>Size</b> 
                        </div>
                        <div class="col-2  text-success">
                            <b>SKU</b>
                        </div>
                        <div class="text-success" :class="(form.is_size && form.is_color) ? 'col-1' : 'col-2'">
                            <b>CPU</b>
                        </div>
                        <div class="col-1  text-success" :class="(form.is_size && form.is_color) ? 'col-2' : 'col-2'">
                            <b>MRP</b>
                        </div>
                        <div class="col-2 text-success">
                            <b>Qty</b>
                        </div>
                        <div class="col-1  text-danger">
                            <b>Remove</b>
                        </div>
                    </div>
                    <div class="row" v-for="(qt,index) in form.attrqty" :key="index">
                        <div class="form-group col-md-2 col-sm-2" v-show="form.is_color">
                            <select id="product-category" class="form-control form-control-sm" v-model="qt.colour_id">
                                <option value="">Choose Colour...</option>
                                <option v-for="(value,index) in prp_colour" :value="value.value" :key="index">{{ value.name }}</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2" v-show="form.is_size">
                            <select id="product-category" class="form-control form-control-sm" v-model="qt.size_id">
                                <option value="">Choose Size...</option>
                                <option v-for="(value,index) in prp_size" :value="value.value" :key="index">{{ value.name }}</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <input type="text"  class="form-control form-control-sm" id="sku" v-model="qt.sku" placeholder="SKU" required>
                        </div>
                        <div class="form-group" :class="(form.is_size && form.is_color) ? 'col-md-1' : 'col-md-2'">
                            <input type="number"  class="form-control form-control-sm" id="sku" v-model="qt.cpu" placeholder="CPU" required>
                        </div>
                        <div class="form-group" :class="(form.is_size && form.is_color) ? 'col-md-2' : 'col-md-2'">
                            <input type="number"  class="form-control form-control-sm" id="sku" v-model="qt.mrp" placeholder="MRP" required>
                        </div>
                        <div class="form-group col-md-2">
                            <input type="number"  class="form-control form-control-sm" id="qty" v-model="qt.qty" placeholder="qty" required>
                        </div>
                        <div class="form-group form-control-sm col-md-1 text-center" v-if="index != 0">
                            <a
                              href="javascript:void(0)"
                              @click.prevent="removeCatChild(index)"
                              class="mt-5"
                              ><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 text-danger"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg></a>
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

            <div class="statbox widget box box-shadow" v-if="!form.has_variation">
                <div class="widget-content ">
                    <div class="row text-center">
                        <div class="col-3 text-success">
                            <b>SKU</b>
                        </div>
                        <div class="col-3 text-success">
                            <b>CPU</b>
                        </div>
                        <div class="col-3 text-success">
                            <b>MRP</b>
                        </div>
                        <div class="col-3 text-success">
                            <b>Qty</b>
                        </div>
                        
                    </div>
                    <div class="row" v-for="(qt,index) in form.attrqty" :key="index">
                        <div class="form-group col-md-3">
                            <input type="text"  class="form-control" id="sku" v-model="qt.sku" placeholder="SKU" required>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="number"  class="form-control" id="sku" v-model="qt.cpu" placeholder="CPU" required>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="number"  class="form-control" id="sku" v-model="qt.mrp" placeholder="MRP" required>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="number"  class="form-control" id="qty" v-model="qt.qty" placeholder="qty" required>
                        </div>
                        
                    </div>
                </div>
            </div>

            <div class="statbox widget box box-shadow">
                <div class="widget-content ">
                    <div class="form-row">
                       
                        <div class="col-md-12 mb-3">
                            <label for="product-Fabric">Composition</label>
                            <Multiselect
                                v-model="form.selectfabrics"
                                placeholder="Select Fabric"
                                track-by="name"
                                label="name"
                                mode="tags"
                                :close-on-select="false"
                                :search="true"
                                :options="prp_fabric"
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
            </div>

        </div>
        <div class="statbox widget box box-shadow">
            <div class="widget-content ">
                <div class="form-row">
                    <div class="col-md-12 mb-3">
                        <label for="product-Tags">Tags</label>
                        <Multiselect
                            v-model="form.tages"
                            placeholder="Create Tags"
                            :create-option="true"
                            label="name" track-by="code"
                            mode="tags"
                            :close-on-select="false"
                            :searchable="true"
                            :options="tages"
                            :multiple="true" 
                            :taggable="true" 
                            @tag="addTag"
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

    <div id="mediaModal" class="modal animated fadeInUp custo-fadeInBottom" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Media</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                        </button>
                    </div>
            
                    <div class="modal-body">
                        <div class="widget-content">
                            <div class="statbox widget">
                                <div class="widget-header">
                                    <div class="row"> 
                                        <div class="col-md-9 border-right" style="height: 75vh;overflow-y: auto;">
                                            <div class="row" v-if="allImages.data && allImages.data.length > 0">
                                                <div class="col-xl-2 col-md-3 col-sm-6 col-12" v-for="(item,ind) in allImages.data" :key="ind">
                                                    <div class="card component-card_9">
                                                        <a href="#" type="button" @click="selectImage(item)">
                                                            <img :src="item.file_link" class="card-img-top" :alt="item.product_name">
                                                        </a>
                                                        <div class="card-body">
                                                            <h6 class="card-title">{{ item.product_name }}</h6>
                                                            <p class="card-text">{{ item.extension }}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button v-if="allImages.data && allImages.data.length > 0 && page < allImages.last_page" @click="loadMore()" class="btn btn-primary mt-4">Load More</button>
                                        </div>
                                        <div class="col-md-3"  style="height: 80vh;overflow-y: auto;">
                                            <div class="row"> 
                                                <div class="col-md-12"> 
                                                    <input type="text" @keyup="searchMedia()" v-model="media_keyword" class="form-control" id="search" placeholder="Search by Name" />
                                                </div>
                                                <div class="col-md-12 d-flex justify-content-center my-2" v-for="(itm,index) in this.form.selectedImages" :key="index"> 
                                                    <img :src="itm" style="width:80%;height:90%" class="img-fluid rounded" />
                                                    <button type="button" @click="() => this.form.selectedImages.splice(index, 1)" class="close text-danger image-close" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    
                                </div>
                            </div>
                            <div class="mt-2 d-flex justify-content-center">
                                <button class="btn btn-info" data-dismiss="modal"><i class="flaticon-cancel-12"></i>Select & Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</template>
<style src="@vueform/multiselect/themes/default.css"></style>
<style scoped>
.modal-dialog {
  min-width: 92%;
  height: 80%;
  bottom: 0;
  padding: 0;
  top:40;
}

.modal-content {
  height: auto;
  min-width: 100%;
  min-height: 100%;
  border-radius: 0;
  bottom: 0;
}
.image-close {
  position: absolute;
  font-size: 1.9rem;
  z-index: 2;
}

.image-close:hover:before {
  opacity: 1;
  transition: all 200ms ease;
}
</style>
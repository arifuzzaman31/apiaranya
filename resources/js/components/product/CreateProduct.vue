<script>
import { QuillEditor } from '@vueup/vue-quill'
import '@vueup/vue-quill/dist/vue-quill.snow.css';
import axios from 'axios';
import Multiselect from '@vueform/multiselect'
import Mixin from '../../mixer'

export default {
    props:['prp_vendor','prp_artist','prp_colour','prp_brand','prp_care','prp_consignment','prp_designer','prp_embellish','prp_fabric','prp_fit','prp_ingredient','prp_making','prp_season','prp_size','prp_variety','prp_tax'],
    mixins:[Mixin],
    components: {
        QuillEditor,
        Multiselect
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
                product_image_one : '',
                product_image_two : '',
                product_image_three : '',
                product_image_four : '',
                design_code: '',
                dimension: '',
                weight: '',
                care: [],
                vat: 1,
                is_fabric: true,
                selectfabrics : [],
                is_color: true,
                selectcolours : [],
                is_size: true,
                selectsize : [],
                discount_amount: '',
                discount_type: 1,
                max_amount: 0,
                discount_type: 1,
                description: '',
                attrqty: [{colour_id:[],size_id:'',cpu:'',mrp:'',qty:'',sku:''}]
            },
            tages: [],
            allcategories: [],
            allsubcategories: [],
            allfiltersubcategories: [],
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
                    this.setImage(numb,result.info.secure_url)
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
            this.form.attrqty.push({colour_id:[],size_id:'',qty:'',sku:''})
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

        getSubCategories(){
            const filterData = (this.allfiltersubcategories).filter((data) => data.parent_cat == this.form.category)
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
                product_image_one : '',
                product_image_two : '',
                product_image_three : '',
                product_image_four : '',
                design_code: '',
                dimension: '',
                weight: '',
                care: [],
                vat: 1,
                is_fabric: true,
                selectfabrics : [],
                is_color: true,
                color_size: true,
                selectcolours : [],
                is_size: true,
                selectsize : [],
                discount_amount: '',
                discount_type: 1,
                max_amount: 0,
                discount_type: 1,
                description: '',
                attrqty: [{colour_id:[],size_id:'',cpu:'',mrp:'',qty:'',sku:''}]
            },
            this.allsubcategories= [],
            this.allfiltersubcategories = [],
            this.validation_error = {}
        }
    },
    mounted(){
       
        this.getCategory()
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
                                    <option v-for="(value,index) in allcategories" :value="value.id" :key="index">{{ value.cat_name }}</option>
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
                                    <option v-for="(value,index) in allsubcategories" :value="value.id" :key="index">{{ value.cat_name }}</option>
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
                        <div class="col-md-3 col-12 mt-4">
                                <label for="product-image1">Image (1:1)</label>
                                <!-- <input type="file" class="form-control" id="product-image"> -->
                                <button type="button" class="btn btn-sm btn-info" @click="openUploadModal('one')">Upload files</button>
                                <p class="mt-1 text-info" v-if="form.product_image_one != ''">Image Uploaded</p>
                            </div>
                            <div class="col-md-3 col-12 mt-4">
                                <label for="product-image1">Image (1:1)</label>
                                <!-- <input type="file" class="form-control" id="product-image"> -->
                                <button type="button" class="btn btn-sm btn-info" @click="openUploadModal('two')">Upload files</button>
                                <p class="mt-1 text-info" v-if="form.product_image_two != ''">Image Uploaded</p>
                            </div>
                            <div class="col-md-3 col-12 mt-4">
                                <label for="product-image1">Image (1:1)</label>
                                <!-- <input type="file" class="form-control" id="product-image"> -->
                                <button type="button" class="btn btn-sm btn-info" @click="openUploadModal('three')">Upload files</button>
                                <p class="mt-1 text-info" v-if="form.product_image_three != ''">Image Uploaded</p>
                            </div>
                            <div class="col-md-3 col-12 mt-4">
                                <label for="product-image1">Image (1:1)</label>
                                <!-- <input type="file" class="form-control" id="product-image"> -->
                                <button type="button" class="btn btn-sm btn-info" @click="openUploadModal('four')">Upload files</button>
                                <p class="mt-1 text-info" v-if="form.product_image_four != ''">Image Uploaded </p>
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
                            <div class="col-md-3 mb-3">
                                <label for="design_code">Design Code</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('design_code') ? 'is-invalid' : ''" id="design_code" placeholder="Design Code" v-model="form.design_code">
                                <div
                                        v-if="validation_error.hasOwnProperty('design_code')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.design_code[0] }}
                                    </div>
                            </div>
                         
                            <div class="col-md-3 mb-3">
                                <label for="Dimension">Dimension</label>
                                <input type="text" class="form-control" id="dimension" placeholder="Example: 29 × 27 × 5 cm" v-model="form.dimension" >
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="weight">Weight</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('weight') ? 'is-invalid' : ''" id="weight" placeholder="Example: 0.45 kg" v-model="form.weight" >
                                <div
                                        v-if="validation_error.hasOwnProperty('weight')"
                                        class="invalid-feedback"
                                    >
                                        {{ validation_error.weight[0] }}
                                    </div>
                            </div>
                            <div class="form-group col-md-3 mb-3">
                                <label for="product-LeadTime">Lead Time</label>
                                <input type="text" class="form-control" :class="validation_error.hasOwnProperty('lead_time') ? 'is-invalid' : ''" id="LeadTime-name" placeholder="Lead Time" v-model="form.lead_time" >
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

        <div class="statbox widget box box-shadow">
            <div class="widget-header">
                <div class="row">
                    <div class="col-xl-12 col-md-12 col-sm-12 col-12 d-flex">
                        <h5>Attribute</h5>
                    </div>                 
                    
                </div>               
                    
                </div>
            </div>
            
            <div class="statbox widget box box-shadow">
                <div class="widget-content ">
                    <div class="row text-center">
                        <div class="col-3  text-success">
                            <b>Colour</b>
                        </div>
                        <div class="col-2  text-success">
                           <b>Size</b> 
                        </div>
                        <div class="col-2  text-success">
                            <b>SKU</b>
                        </div>
                        <div class="col-1  text-success">
                            <b>CPU</b>
                        </div>
                        <div class="col-1  text-success">
                            <b>MRP</b>
                        </div>
                        <div class="col-2  text-success">
                            <b>Qty</b>
                        </div>
                        <div class="col-1  text-danger">
                            <b>Remove</b>
                        </div>
                    </div>
                    <div class="row" v-for="(qt,index) in form.attrqty" :key="index">
                        <div class="form-group col-md-3">
                            <Multiselect
                                v-model="qt.colour_id"
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
                        <div class="form-group col-md-2">
                            <select id="product-category" class="form-control" v-model="qt.size_id">
                                <option value="">Choose Size...</option>
                                <option v-for="(value,index) in prp_size" :value="value.value" :key="index">{{ value.name }}</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <input type="text"  class="form-control" id="sku" v-model="qt.sku" placeholder="SKU" required>
                        </div>
                        <div class="form-group col-md-1">
                            <input type="number"  class="form-control" id="sku" v-model="qt.cpu" placeholder="CPU" required>
                        </div>
                        <div class="form-group col-md-1">
                            <input type="number"  class="form-control" id="sku" v-model="qt.mrp" placeholder="MRP" required>
                        </div>
                        <div class="form-group col-md-2">
                            <input type="number"  class="form-control" id="qty" v-model="qt.qty" placeholder="qty" required>
                        </div>
                        <div class="form-group col-md-1 text-center" v-if="index != 0">
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
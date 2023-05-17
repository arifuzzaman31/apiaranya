<script>
import Mixin from '../../mixer'
export default {
    mixins:[Mixin],
    props:['role_permission'],
    data(){
        return {
            form:{
                role_name: '',
                role_permissions: []
            },
            permissions: [],
            url: baseUrl,
            validation_error: {}
        }
    },
    methods: {
        getPermission(){
            try{
                axios.get(baseUrl+'get-permission-data').then(
                    response => {
                        this.permissions = response.data
                    }
                ). catch(e => {
                   console.log(e.response.data)
                })
            }catch(e){
                if(e.response.status == 422){
                    this.validation_error = e.response.data.errors
                }
            }
        },
        formReset(){
            this.validation_error = {}
            this.form = {
                role_name: '',
                role_permissions: []
            }
        }
    },
    mounted(){
        console.log(this.role_permission)
        // const rol = this.role_permission.map((item) => item.id)
        this.form.role_permissions.push(this.role_permission)
        this.getPermission()
    }
}
</script>

<template>
   
</template>

<style>

</style>
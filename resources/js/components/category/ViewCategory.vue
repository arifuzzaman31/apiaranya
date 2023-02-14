<script>

export default {

    data(){
        return {
            categories: [],
            subcategories: [],
            validation_error: {}
        }
    },
    methods: {
        getCategory(){
            try{
                axios.get('category-subcategory-data').then(
                    response => {
                        this.categories = response.data
                        // const cat = response.data.data.filter((data) => data.parent_cat == 0)
                        // this.categories.push(...cat)
                        // const subcat = response.data.data.filter((data) => data.parent_cat != 0)
                        // this.subcategories.push(...subcat) 
                    }
                ). catch(e => {
                   console.log(e.response.data)
                })
            }catch(e){
                if(e.response.status == 422){
                    this.validation_error = e.response.data.errors
                }
            }
        }
    },
    mounted(){
        // this.getCategory()
    }
}
</script>

<template>
  <div id="tableHover" class="col-lg-12 col-12 layout-spacing">
        <div class="statbox">   
            <div class="widget-content widget-content-area">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover mb-4">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Category</th>
                                <th>Sub Category</th>
                                <th class="text-center">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr>
                                <td>1</td>
                                <td>Women</td>
                                <td>Saree</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>2</td>
                                <td>Women</td>
                                <td>Salwar Kameez</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>3</td>
                                <td>Women</td>
                                <td>Kurti & Fatua</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>4</td>
                                <td>Women</td>
                                <td>Tops & Shirts</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>5</td>
                                <td>Women</td>
                                <td>Kimono</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>6</td>
                                <td>Women</td>
                                <td>Kaftan</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>7</td>
                                <td>Men</td>
                                <td>Panjabi</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>8</td>
                                <td>Men</td>
                                <td>Vest</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>9</td>
                                <td>Men</td>
                                <td>T-Shirt</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>10</td>
                                <td>Men</td>
                                <td>Fatua</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>11</td>
                                <td>Men</td>
                                <td>Shirts</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>12</td>
                                <td>Men</td>
                                <td>Jackets</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>13</td>
                                <td>Kids</td>
                                <td>N/A</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>14</td>
                                <td>Home Furnishings</td>
                                <td>Baby Kantha</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>15</td>
                                <td>Home Furnishings</td>
                                <td>Cushion Cover</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>16</td>
                                <td>Home Furnishings</td>
                                <td>Ceramic</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>17</td>
                                <td>Home Furnishings</td>
                                <td>Table Cloth</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>18</td>
                                <td>Home Furnishings</td>
                                <td>Bed Cover</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>19</td>
                                <td>Home Furnishings</td>
                                <td>Basket</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>20</td>
                                <td>Home Furnishings</td>
                                <td>Napkin</td>
                                <td class="text-center">Active</td>
                            </tr>					
                            <tr>
                                <td>21</td>
                                <td>Home Furnishings</td>
                                <td>Table Runner</td>
                                <td class="text-center">Active</td>
                            </tr>

                            <tr>
                                <td>22</td>
                                <td>Beauty Collection</td>
                                <td>N/A</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>23</td>
                                <td>Accessories</td>
                                <td>Aatong</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>24</td>
                                <td>Accessories</td>
                                <td>Cangbuk</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>25</td>
                                <td>Accessories</td>
                                <td>Ashtodhatu Jewellery</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>26</td>
                                <td>Accessories</td>
                                <td>Silver Jewellery</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>27</td>
                                <td>Accessories</td>
                                <td>Metal Jewellery</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>28</td>
                                <td>Accessories</td>
                                <td>Other Jewellery</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>29</td>
                                <td>Accessories</td>
                                <td>Scarves</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>30</td>
                                <td>Accessories</td>
                                <td>Orna</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>31</td>
                                <td>Accessories</td>
                                <td>Stoles</td>
                                <td class="text-center">Active</td>
                            </tr>				
                            <tr>
                                <td>32</td>
                                <td>Accessories</td>
                                <td>Shawls</td>
                                <td class="text-center">Active</td>
                            </tr>				
                          
                        </tbody>
                    </table>
                        
                </div>

            </div>
        </div>
    </div>
</template>


<style scoped>

</style>
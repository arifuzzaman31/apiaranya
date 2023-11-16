<table class="table">
    <thead>
        <tr>
            <th>id</th>
            <th>title</th>
            <th>description </th>
            <th>availability </th>
            <th>condition </th>
            <th>price</th>
            <th>link</th>
            <th>image_link</th>
            <th>brand</th>
            <th>quantity_to_sell_on_facebook</th>
            <th>sale_price</th>
            <th>custom_label_0</th>
            <th>custom_label_1</th>
            <th>custom_label_2</th>
            <th>sale_price_effective_date</th>
            <th>item_group_id</th>
            <th>gender</th>
            <th>color</th>
            <th>size</th>
            <th>age_group</th>
            <th>material</th>
            <th>pattern</th>
            <th>shipping</th>
            <th>shipping_weight</th>
            <th>style</th>
        </tr>
    </thead>
    <tbody>
        @foreach($products as $value)
            @if(isset($value))
                @php
                    $link = config('app.front_url').'products/'.($value->subcategory->slug ?? $value->category->slug).'/'.$value->id;
                    $salePrice = 0;
                    $orgPrice = 0;
                    foreach ($value->inventory as $inv) {
                        if($inv->discount){
                            if($inv->discount->discount_type == 'percentage'){
                                $salePrice = $inv->mrp - ($inv->mrp * ($inv->discount->discount_amount / 100));
                            } else {
                                $salePrice = $inv->mrp - $inv->discount->discount_amount;
                            }
                        } else {
                            $salePrice = $inv->mrp;
                        }
                        $orgPrice = $inv->mrp;
                    }
                @endphp
                <tr>
                    <td>{{ $value->id }}</td>
                    <td>{{ $value->product_name }}</td>
                    <td>{{ strip_tags($value->description) }}</td>
                    <td>in stock</td>
                    <td>new</td>
                    <td>{{ $orgPrice }}</td>
                    <td>{{ $link }}</td>
                    <td>{{ $value->image_one }}</td>
                    <td>{{ $value->product_brand[0]->brand_name ?? 0 }}</td>
                    <td>{{ $value->inventory[0]->stock ?? 0 }}</td>
                    <td>{{ floor($salePrice) }}</td>
                    <td>Apparel &amp; Accessories</td>
                    <td>Clothing</td>
                    <td>{{$value->subcategory->category_name ?? $value->category->category_name}}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>{{ $value->flat_colour }}</td>
                    <td></td>
                    <td>all ages</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>{{ $value->weight }} g</td>
                </tr>
            @endif
        @endforeach
    </tbody>
</table>

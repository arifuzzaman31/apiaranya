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
            <th>google_product_category</th>
            <th>fb_product_category</th>
            <th>quantity_to_sell_on_facebook</th>
            <th>sale_price</th>
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
                <tr>
                    <td>{{ $value->id }}</td>
                    <td>{{ $value->product_name }}</td>
                    <td>{{ strip_tags($value->description) }}</td>
                    <td>in stock</td>
                    <td>new</td>
                    <td>{{ $value->inventory[0]->mrp}} BDT</td>
                    <td>{{ $value->image_one }}</td>
                    <td>{{ $value->image_one }}</td>
                    <td>{{ $value->product_brand[0]->brand_name }}</td>
                    <td>Apparel &amp; Accessories &gt; Clothing</td>
                    <td>Apparel &amp; Accessories &gt; Clothing</td>
                    <td>{{ $value->inventory[0]->stock }}</td>
                    <td>{{ $value->inventory[0]->mrp }} BDT</td>
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

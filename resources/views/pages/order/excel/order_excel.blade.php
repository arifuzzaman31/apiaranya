<table>
	<thead>
	  <tr>
	    <th>Name</th>
	    <th>Mobile</th>
	    <th>Address </th>
	    <th>Area </th>
	    <th>District </th>
	    <th>Thana</th>
	    <th>Home Delivery</th>
	    <th>Pickup Point</th>
	    <th>Type</th>
	    <th>Code</th>
	    <th>Payment Method</th>
	    <th>Price</th>
	    <th>Product ID</th>
	    <th>Delivery Date</th>
	    <th>Comment</th>
	    <th>Number of item</th>
	    <th>Actual Product Price</th>
	  </tr>
	</thead>
	<tbody>
  
	@foreach($orders as $value)
	  <tr>
	    <td>{{ $value->user->name }}</td>
	    <td>{{ $value->user->phone }}</td>
	    <td>{{ $value->user->address }}</td>
	    <td>{{ $value->user_billing_info->country }}</td>
	    <td>{{ $value->user_billing_info->city }}</td>
	    <td>Not Found</td>
	    <td>{{ $value->delivery_type }}</td>
	    <td>{{ $value->pickup_point_no }}</td>
	    <td>N/A</td>
	    <td> {{ $value->percel_type }}</td>
	    <td>{{ $value->payment_method }}</td>
	    <td>{{ $value->requested_delivery_date }}</td>
	    <td>{{ $value->total_price + $value->shipping_amount + $value->vat_amount }}</td>
	    <td>N/A</td>
	    <td>{{ $value->total_item }}</td>
	    <td>{{ $value->total_price }}</td>
	  </tr>
	@endforeach
	</tbody>
</table>
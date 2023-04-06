<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Invoice</title>
    <style>
      table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 90%;
        max-width: 800px;
        margin: 0 auto;
      }

      td,
      th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
      }

      tr:nth-child(even) {
        background-color: #dddddd;
      }
      a {
        text-decoration: none;
      }
    </style>
  </head>
  <body>
    <table>
      <tr>
        <td style="border: none; color: #8a858e">
          Invoice ID: <strong>#{{ $order_info->order_id }}</strong>
        </td>
        <th style="border: none"></th>

        <td style="border: none; text-align: right">
          <a
            href="{{ url('/') }}"
            style="border: 1px solid #8a858e; padding: 5px; color: #8a858e"
            >araya.com.bd</a
          >
        </td>
      </tr>
    </table>
    <hr width="800px" />
    <table>
      <tr>
        <td style="border: none"></td>
        <th style="border: none; text-align: center">
          <img
            src="{{ asset('admin-assets/assets/img/aranya-logo-dark.png') }}"
            alt="Aranya Logo"
            width="50px"
          />
        </th>

        <td style="border: none; text-align: right"></td>
      </tr>
    </table>
    <hr width="800px" />
    <table>
      <tr>
        <td style="border: none; color: #8a858e">
          To: <strong style="color: #3092cb">{{ $order_info->user_billing_info->first_name != 'N/A' ? $order_info->user_billing_info->full_name : 'Unknown'}}</strong>
        </td>
        <th style="border: none"></th>

        <td style="border: none; text-align: right; color: #8a858e">Invoice</td>
      </tr>
      <tr style="background-color: #fff">
        <td style="border: none; color: #8a858e">{{ $order_info->user_billing_info->street_address != 'N/A' ? $order_info->user_billing_info->street_address : ''}}, {{ $order_info->user_billing_info->city != 'N/A' ?  $order_info->user_billing_info->city : ''}}</td>
        <td style="border: none"></td>

        <td style="border: none; text-align: right; color: #8a858e">
          ID: #{{ $order_info->order_id }}
        </td>
      </tr>
      <tr>
        <td style="border: none; color: #8a858e">{{ $order_info->user_billing_info->country != 'N/A' ? $order_info->user_billing_info->country : ''}}</td>
        <td style="border: none"></td>

        <td style="border: none; text-align: right; color: #8a858e">
          Order Date: {{ $order_info->order_date }}
        </td>
      </tr>
      <tr style="background-color: #fff">
        <td style="border: none; color: #8a858e">{{ $order_info->user_billing_info->phone != 'N/A' ? $order_info->user_billing_info->phone : ''}}</td>
        <td style="border: none"></td>

        <td style="border: none; text-align: right; color: #8a858e">
          Status:
          <span
            style="
              background-color: orange;
              padding: 5px;
              border-radius: 10px;
              color: black;
            "
            >{{ $order_info->payment_status == 1 ? 'Paid' : 'Unpaid'}}</span
          >
        </td>
      </tr>
    </table>

    <table style="margin-top: 2rem">
      <tr style="background-color: #5b93b4; border: none">
        <th style="border: none; color: #ffffff">SL</th>
        <th style="border: none; color: #ffffff">Product</th>
        <th style="border: none; color: #ffffff">Qty</th>
        <th style="border: none; color: #ffffff">Unit Price</th>
        <th style="border: none; color: #ffffff">Amount</th>
      </tr>
      @foreach($order_info->order_details as $key => $value)
        <tr>
            <td style="@if($key%2 != 0) border: none @endif" >{{ $key+1 }}</td>
            <td style="@if($key%2 != 0) border: none @endif">{{ $value->product->product_name }}</td>
            <td style="@if($key%2 != 0) border: none @endif">{{ $value->quantity }}</td>
            <td style="@if($key%2 != 0) border: none @endif">{{ $value->selling_price }}</td>
            <td style="@if($key%2 != 0) border: none @endif">{{ $value->total_selling_price }}</td>
        </tr>
      @endforeach
    </table>
    <table
      style="
        margin-top: 1rem;
        max-width: 600px;
        width: 90%;
        margin-right: 0 auto;
      "
    >
      <tr>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <!-- <td style="border: none; color: #8a858e">
          To: <strong style="color: #3092cb">Kabira</strong>
        </td> -->
        <td
          style="
            border: none;
            color: #8a858e;
            /* background-color: red; */
            text-align: right;
          "
        >
          SubTotal : <strong>{{ $order_info->total_price }}</strong>
        </td>

        <!-- <td style="border: none; text-align: right; color: #8a858e">invoice</td> -->
      </tr>
      <tr style="background-color: #fff">
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <!-- <td style="border: none; color: #8a858e">
          To: <strong style="color: #3092cb">Kabira</strong>
        </td> -->
        <td
          style="
            border: none;
            color: #8a858e;

            text-align: right;
          "
        >
          Tax : <strong>{{ $order_info->vat_amount }}</strong>
        </td>

        <!-- <td style="border: none; text-align: right; color: #8a858e">invoice</td> -->
      </tr>
      <tr>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <!-- <td style="border: none; color: #8a858e">
          To: <strong style="color: #3092cb">Kabira</strong>
        </td> -->
        <td
          style="
            border: none;
            color: #8a858e;
            /* background-color: red; */
            text-align: right;
          "
        >
          Shipping Charge : <strong>{{ $order_info->shipping_amount }}</strong>
        </td>

        <!-- <td style="border: none; text-align: right; color: #8a858e">invoice</td> -->
      </tr>
      <tr style="background-color: #fff">
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <th style="border: none"></th>
        <!-- <td style="border: none; color: #8a858e">
          To: <strong style="color: #3092cb">Kabira</strong>
        </td> -->
        <td
          style="
            border: none;
            color: #8a858e;
            /* background-color: red; */
            text-align: right;
          "
        >
          Total Amount : <strong>{{ $order_info->total_price + $order_info->vat_amount + $order_info->shipping_amount }}</strong>
        </td>

        <!-- <td style="border: none; text-align: right; color: #8a858e">invoice</td> -->
      </tr>
    </table>
  </body>
</html>

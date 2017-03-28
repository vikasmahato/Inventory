<?php 

$html = "<!DOCTYPE html>
<html lang='en'>
<head>
  <meta charset='utf-8'>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
  <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
  <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
</head>
<body>

<div class='container'>
  <h2>Item Details</h2>          
  <table class='table table-striped'>
    <thead>
      <tr>
        <th>Item Name</th>
        <th>Item Description</th>
        <th>Item Quantity</th>
        <th>Unit Price</th>
        <th>Total Price</th>
        <th>Pickup Location</th>
        <th>Delivery Location</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>".$challan_itarr['name']."</td>
        <td>".$challan_itarr['description']."</td>
        <td>".$challan_itarr['quantity']."</td>
        <td>".$challan_itarr['purchase_value']."</td>
        <td>".$challan_itarr['total_price']."</td>
        <td>".$pickup_arr['address']."</td>
        <td>".$delivery_arr['address']."</td>
      </tr>
      
    </tbody>
  </table>
</div>

</body>
</html>
" ;
?>
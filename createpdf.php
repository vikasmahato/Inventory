<?php
   
require 'includes/dbcon.php';

require_once 'plugins/dompdf/autoload.inc.php';
foreach (glob("classes/*.php") as $filename)
{
    include $filename;
}
use Dompdf\Dompdf;
$name ="";
$value = array();

            
            $order = $_GET['id'];
            $challan_id = $_POST['challan_id'];

$sql1 = "SELECT pickup_loc_id, delivery_loc_id FROM table_challan WHERE challan_id = $challan_id ";

$challan_loc = mysqli_query($con,$sql1);

$challan_arr = mysqli_fetch_array($challan_loc);
    
$pickup = mysqli_query($con,"SELECT location_name, address FROM table_location WHERE location_id = '".$challan_arr['pickup_loc_id']."'" );

$pickup_arr = mysqli_fetch_array($pickup);

$delivery = mysqli_query($con,"SELECT location_name, address FROM table_location WHERE location_id = '".$challan_arr['delivery_loc_id']."'" );

$delivery_arr = mysqli_fetch_array($delivery);

$sql2 =" SELECT name, purchase_value, quantity, description, total_price FROM table_item, challan_item_relation WHERE table_item.item_code = challan_item_relation.item_id AND challan_item_relation.challan_id = $challan_id ";

$challan_item = mysqli_query($con,$sql2);

$challan_itarr = mysqli_fetch_array($challan_item);
/*
echo $order." ".$challan_id;
*/

// reference the Dompdf namespace
/*use Dompdf\Dompdf;*/

// instantiate and use the dompdf class
$dompdf = new Dompdf();
require 'demo.php';
$dompdf->loadHtml($html);

// (Optional) Setup the paper size and orientation
$dompdf->setPaper('A4', 'landscape');

// Render the HTML as PDF
$dompdf->render();

// Output the generated PDF to Browser
$dompdf->stream();

 /*       $sql = "SELECT * FROM orders WHERE id = $id";
            
   
       foreach ($con->query($sql) as $row) {
           $value = $row;
          
        
            if (isset($_POST['formpdf_btn'])){generate($value, '1');}
           
}
*/

?>

<?php
if(isset($_POST['submit_row']))
{
     include("includes/dbcon.php");

 $item_code=$_POST['item_code'];
 $item_description=$_POST['item_description'];
 $item_quantity=$_POST['item_quantity'];
 $app_price=$_POST['app_price'];
 $total_price=$_POST['total_price'];
    
 for($i=0;$i<count($name);$i++)
 {
  if($name[$i]!="" && $age[$i]!="" && $job[$i]!="")
  { 
      $sql = "insert into challan_items values('$item_code[$i]','$item_description[$i]','$item_quantity[$i]')";
       mysqli_query($con, $sql);
  }
 }
}
?>
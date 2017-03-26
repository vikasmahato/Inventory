<?php
if(isset($_POST['submit_row']))
{
     include("includes/dbcon.php");
    error_reporting(E_ALL); ini_set('display_errors', 1);
    $location_from = $_POST['from'];
    $location_to = $_POST['to'];
    $job_order = $_POST['job_order'];
    $type = $_POST['type'];
    
 $item_code=$_POST['item_code'];
 $item_description=$_POST['item_description'];
 $item_quantity=$_POST['item_quantity'];
 $app_price=$_POST['app_price'];
 $total_price=$_POST['total_price'];
 $challan_id=time();
    
 for($i=0;$i<count($item_code);$i++)
 {
  if($item_code[$i]!="" && $item_quantity[$i]!="")
  { 
      
   //   $update_to = "UPDATE `location_item_relation` SET  `quantity`=quantity+ $item_quantity[$i] WHERE `location_id`='$location_to' AND `item_id`='$item_code[$i]' ";
      
  //   $update_to =  "INSERT INTO `location_item_relation` (location_id, item_id, quantity) VALUES('$location_to', '$item_code[$i]', $item_quantity[$i]) ON DUPLICATE KEY UPDATE `quantity`=quantity+ $item_quantity[$i] ";
      
     // $update_to =  "INSERT INTO `location_item_relation` (location_id, item_id, quantity) VALUES('$location_to', '$item_code[$i]', $item_quantity[$i]) ON DUPLICATE KEY UPDATE SET `quantity`= IF(item_id = $item_code[$i], quantity+ $item_quantity[$i], quantity )";
      
      $update_challan = "INSERT INTO `table_challan`(`challan_id`, `pickup_loc_id`, `delivery_loc_id`) VALUES ('$challan_id','$location_from','$location_to')";
      
      mysqli_query($con, $update_challan);
          
        $update_from = "UPDATE `location_item_relation` SET  `quantity`=quantity- $item_quantity[$i] WHERE `location_id`='$location_from' AND `item_id`='$item_code[$i]'";
      
      $update_challan_relation = "INSERT INTO `challan_item_relation`(`challan_id`, `item_id`, `quantity`, `job_order`) VALUES ('$challan_id','$item_code[$i]', $item_quantity[$i], '$job_order')";
      
      $sql = "SELECT * FROM `location_item_relation` WHERE `location_id`='$location_to' AND `item_id`='$item_code[$i]' ";
      
      $sql1 = mysqli_query($con,  $sql); 
if(mysqli_num_rows($sql1)==0){
    //row does not exist so create
    $update_to = "INSERT INTO `location_item_relation`(`location_id`, `item_id`, `quantity`) VALUES ('$location_to',$item_code[$i],$item_quantity[$i])";
     if(mysqli_query($con, $update_to)){
         echo "inserted ".$update_to ;
         if(mysqli_query($con, $update_from)){
             echo "updated ".$update_from ;
          if(mysqli_query($con, $update_challan_relation)){
              echo "sucess";
          }
          }
     }
} else {
    //update
     $update_to = "UPDATE `location_item_relation` SET  `quantity`=quantity+ $item_quantity[$i] WHERE `location_id`='$location_to' AND `item_id`='$item_code[$i]' ";
    if(mysqli_query($con, $update_to)){
         echo "updated ".$update_to ;
        if(mysqli_query($con, $update_from)){
             echo "updated ".$update_from ;
          if(mysqli_query($con, $update_challan_relation)){
              echo "sucess";
          }else{
              echo  $update_challan_relation;
              mysqli_query($con, $update_challan_relation);
              
          }
          }
     }
}
      
    
      
      mysqli_query($con, $update_to);
     /* if(mysqli_query($con, $update_to)){
          if(mysqli_query($con, $update_from)){
          if(mysqli_query($con, $update_challan_relation)){
              echo "sucess";
          }
          }
      }*/
    
      $update_challan = "INSERT INTO `table_challan`(`challan_id`, `pickup_loc_id`, `delivery_loc_id`) VALUES ('$challan_id','$location_from','$location_to')";
      
     //  mysqli_query($con, $sql);
  }
 }
}
?>
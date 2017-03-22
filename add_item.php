<?php

include("includes/dbcon.php");
error_reporting(E_ALL); ini_set('display_errors', 1);
$name = $_POST['name'];
$item_code = $_POST['item_code'];
$item_category = $_POST['item_category'];
$length = $_POST['length'];
$breadth = $_POST['breadth'];
$height = $_POST['height'];
$weight = $_POST['weight'];
$material = $_POST['material'];
$purchase_value = $_POST['purchase_value'];
$selling_value = $_POST['selling_value'];


$create_item = "INSERT INTO `table_item`(`name`, `item_code`, `length`, `breadth`, `height`, `weight`, `material`, `purchase_value`, `selling_value`) VALUES ('$name','$item_code','$length', '$breadth','$height','$weight','$material','$purchase_value','$selling_value' )";


$create_relation ="INSERT INTO `table_item_category_relation`(`item_id`, `category_id`) VALUES ('$item_code', '$item_category')";

if(mysqli_query($con, $create_item)){
    echo "sucess";
    if(mysqli_query($con, $create_relation)){
        echo "sucess";
    }else{echo $create_relation;}
}else {
   echo $create_item; 
}
/*if(mysqli_query($con, $create_item)){
    if(mysqli_query($con, $create_relation)){
        echo "sucess";
    }
}else {
    echo "An error occured. Please check that the item code is unique";
}*/



?>
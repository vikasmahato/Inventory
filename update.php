<?php
session_start();

function finance_credit_approve(){
    
    include("includes/dbcon.php");
    $oNo = $_POST['orderNo'];
    $oid = $_POST['orderId'];

    $sql = "UPDATE orders SET job_order = '$oNo' , status = 1 WHERE id = $oid ";
    mysqli_query($con, $sql);

}
if(isset($_POST['financecrd_app']))
{
   finance_credit_approve();
}

function finance_credit_deny(){
    
    include("includes/dbcon.php");
    $reason = $_POST['reason'];
    $oid = $_POST['orderId2'];

    $sql = "UPDATE orders SET reason = '$reason' , status = -1 WHERE id = $oid ";
    mysqli_query($con, $sql);

}
if(isset($_POST['financecrd_deny']))
{
   finance_credit_deny();
    
}
?>
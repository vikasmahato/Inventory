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

echo $order." ".$challan_id;

generate( $order, $challan_id);

 /*       $sql = "SELECT * FROM orders WHERE id = $id";
            
   
       foreach ($con->query($sql) as $row) {
           $value = $row;
          
        
            if (isset($_POST['formpdf_btn'])){generate($value, '1');}
           
}
*/
function generate( $order, $challan_id ){
    
    echo $order." ".$challan_id;

 require 'demo.php';
ini_set('display_errors', 1);

    $dompdf = new DOMPDF();
	$dompdf->load_html(${'form1'});
    	$dompdf->setPaper('A4', 'portrait');
	$dompdf->render();
$dompdf->stream("file1.pdf");
   
}

?>

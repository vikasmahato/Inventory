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

            
            $id = $_GET['id'];

        $sql = "SELECT * FROM orders WHERE id = $id";
            
   
       foreach ($con->query($sql) as $row) {
           $value = $row;
          
        
            if (isset($_POST['formpdf_btn'])){generate($value, '1');}
           
}

function generate($value, $s){

 require 'demo.php';
ini_set('display_errors', 1);

    $dompdf = new DOMPDF();
	$dompdf->load_html(${'form'.$s});
    	$dompdf->setPaper('A4', 'portrait');
	$dompdf->render();
$dompdf->stream("file".$s.".pdf");
   
}

?>

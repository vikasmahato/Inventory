<?php include("includes/header.php"); ?>
<?php 
error_reporting(E_ALL); ini_set('display_errors', 1);
$location_from = $_POST['pickup_location'];
$location_to = $_POST['delivery_location'];
$job_order = $_POST['job_order'];
$challan_type = $_POST['challan_type'];

$items = mysqli_query($con, "SELECT * FROM location_item_relation WHERE location_id =".$location_from."" );

//$items = mysqli_query($con, "SELECT table_item.name, table_item.item_code, location_item_relation.quantity FROM location_item_relation INNER JOIN table_item ON location_item_relation.item_id = table_item.item_code WHERE location_item_relation.location_id = 1 " );


?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
     $(document).on('focus','.item_code',function(){
        if (jQuery) {  
          // jQuery is loaded  
          alert("Yeah!");
        } else {
          // jQuery is not loaded
          alert("Doesn't Work");
        }
      });
    
function add_row()
{
 $rowno=$("#challan_table tr").length;
 $rowno=$rowno+1;
 $("#challan_table tr:last").after("<tr id='row"+$rowno+"'><td><input type='text' name='item_code[]' placeholder='ItemCode'></td><td><input type='text' name='item_description[]' placeholder='Description'></td><td><input type='text' name='item_quantity[]' placeholder='Quantity'></td><td><input type='text' name='app_price[]' placeholder='Approx Unit Price'></td><td><input type='text' name='total_price[]' placeholder='Total Price'></td><td><button class='btn btn-danger' type='button' onclick=delete_row('row"+$rowno+"')>-Delete</button></td></tr>");
}
function delete_row(rowno)
{
 $('#'+rowno).remove();
}
    
    //autocomplete script
$(document).on('focus','.item_code',function(){
alert("hello");
});
    
    $( ".item_code" ).focus(function() {
  alert( "Handler for .focus() called." );
});

</script>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Add New Challan
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Add New Challan</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
         <div class="row">
		        <div class="col-xs-12 table-responsive">
		          <table class="table table-striped">
		            <thead>
		            <tr>
		              <th>Item Code</th>
		              <th>Quantity</th>
		            </tr>
		            </thead>
		            <tbody>
		           	<?php
                        $sql="SELECT * FROM location_item_relation WHERE location_id ='".$location_from."'";
                        $items = mysqli_query($con, $sql );
                        
		           		foreach ($items as $value) { ?>
		           			    <tr>
					              <td><?php echo $value['item_id']; ?></td>
					              <td><?php echo $value['quantity']; ?></td>
					            </tr>
		           		<?php }
		           	?>
		            </tbody>
		          </table>
		        </div>
		        <!-- /.col -->
		      </div>
                
        
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
                         <blockquote>
	          <strong>Challan type:
	            </strong> <?php echo $challan_type;?>
	          </blockquote>
                <blockquote>
	          <strong>From Location:
	            </strong> <?php echo $location_from;?>
	          </blockquote>
                <blockquote>
	          <strong>To Location:
	            </strong> <?php echo $location_to;?>
	          </blockquote>
                 <blockquote>
	          <strong>Job Order:
	            </strong> <?php echo $job_order;?>
	          </blockquote>
                 
                   
                       
                       
                         <div id="form_div">
 
        <form method="post" action="add_challan.php">
  <table id="challan_table" class="table table-striped">
        <thead>
		            <tr>
		              <th>Item</th>
                        <th>Description</th>
		              <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>Total Price</th>
		            </tr>
		            </thead>
      <tbody>
   <tr id="row1">
    <td><input type="text" name="item_code[]" id="item_code" placeholder="Item Code"></td>
    <td><input type="text" name="item_description[]" id="item_description" placeholder="Description"></td>
    <td><input type="text" name="item_quantity[]" id="item_quantity" placeholder="Quantity"></td>
       <td><input type="text" name="app_price[]" placeholder="Approx Unit Price"></td>
        <td><input type="text" name="total_price[]" placeholder="Total Price"></td>
   </tr>
          </tbody>
  </table>
            <input type="hidden" name="from" value="<?php echo $location_from; ?>"/>
            <input type="hidden" name="job_order" value="<?php echo $job_order; ?>"/>
            <input type="hidden" name="to" value="<?php echo $location_to; ?>"/>
            <input type="hidden" name="type" value="<?php echo $challan_type; ?>"/>
  <div class='col-xs-12 col-sm-3 col-md-3 col-lg-3'>
      			<button class="btn btn-success addmore" type="button" onclick="add_row();">+ Add More</button>
      <button type="submit" name="submit_row" class="btn btn-primary" >Submit</button>
      		</div>
 </form>
</div>
                        
                
	    </div>
	   </div>
	  </div>
	 </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<script>


</script>
<?php include("includes/footer.php"); ?>
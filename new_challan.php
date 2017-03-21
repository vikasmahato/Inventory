<?php include("includes/header.php"); ?>
<?php 
$location_from = $_POST['pickup_location'];
$location_to = $_POST['delivery_location'];
$job_order = "";//$_POST[];
$challan_type = $_POST['challan_type'];
error_reporting(E_ALL); ini_set('display_errors', 1);
$items = mysqli_query($con, "SELECT * FROM location_item_relation WHERE location_id =".$location_from );
?>
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
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
	     
                   <form class="form-horizontal" role="form" method="post" action="add_challan.php">
                          <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="name">Challan type</label>
                    <div class="col-sm-10">
                       <?php echo $challan_type;?>
                    </div>
                  </div>
                       
                  <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="name">Pickup ID</label>
                    <div class="col-sm-10">
                       <?php echo $location_from; ?>
                    </div>
                  </div>
                    <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="name">Delivery ID</label>
                    <div class="col-sm-10">
                       <?php echo $location_to;?>
                    </div>
                  </div>
                       
                        <table class="table table-striped">
		            <thead>
		            <tr>
		              <th>Item</th>
		              <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>Total Price</th>
		            </tr>
		            </thead>
		            <tbody>
		           <tr>
                        <td> <input type="text" class="form-control" 
                        id="reason" name="item_code[]" placeholder="Code"/></td>
                       <td> <input type="text" class="form-control" name="item_quantity[]" placeholder="Quantity"/></td>
                       <td> <input type="text" class="form-control" name="app_price[]" placeholder="Unit Price"/></td>
                       <td> <input type="text" class="form-control" name="total_price[]" placeholder="Total Price"/></td>
                </tr>
		            </tbody>
		          </table>
                
                <input type="submit" id="submit-form" name="financecrd_deny" />
                </form>   
                
	    </div>
	   </div>
	  </div>
	 </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include("includes/footer.php"); ?>
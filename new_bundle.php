<?php include("includes/header.php"); ?>
<?php 
$result = mysqli_query($con, "SELECT item_code, name FROM table_item");
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Add New Bundle
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Add New Bundle</li>
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
	     
                   <form class="form-horizontal" role="form" method="post" action="add_bundle.php">
                  <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="bundle_name">Bundle Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" 
                        id="bundle_name" name="bundle_name" placeholder="Bundle Name"/>
                    </div>
                  </div>
                     <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="bundle_id">Bundle ID</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" 
                        id="bundle_id" name="bundle_id" placeholder="Bundle ID"/>
                    </div>
                  </div>
                       <div class="row">
                       <div class="form-group col-md-6">
                   <label  class="col-sm-2 control-label"
                              for="bundle_item">Item Name</label>
                            <div class="col-sm-10">
                   <select class="custom-select form-control" name="bundle_item" id="bundle_item" required>
                         <option value="" selected disabled>Please select</option>
                       <?php
		           		foreach ($result as $row) { ?>
                       <option value="<?php echo $row['item_code'] ?>"><?php echo $row['name'] ?></option>
                       <?php }	?>
                       
                    </select>
                           </div>
                </div>
                            <div class="form-group col-md-6">
                    <label  class="col-sm-2 control-label"
                              for="quantity">Quantity</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" 
                        id="quantity" name="quantity" placeholder="Quantity"/>
                    </div>
                  </div>
              </div>
                <input type="submit" id="submit-form" name="new_bundle" />
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
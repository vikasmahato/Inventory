<?php include ("includes/header.php");?>
<?php 

$location_id = "";
$job_order_no = "";

if(isset($_POST['location_query'])){
    $location_id = $_POST['location_query'];
    
    $order_query = mysqli_query($con, "SELECT * FROM orders LIMIT 10");
    
}
elseif(isset($_POST['job_order'])){
    $job_order_no = $_POST['job_order']
        $order_query = mysqli_query($con, "SELECT * FROM orders LIMIT 10");
}
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Items at Location/ Job Order
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Items</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <div class="col-md-12">
          <!-- TABLE: LATEST ORDERS -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Items</h3>
            </div>
            <!-- /.box-header -->
              
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>Order ID</th>
                    <th>Item Code</th>
                      <th>Item Name</th>
                  </tr>
                  </thead>
                  <tbody>
                  	<?php 
                  	
                  	while($orders=mysqli_fetch_array($order_query))
                  	{ ?>
	                  <tr>
	                  <td><?php echo $location_id; ?></td>
	                    <td><?php echo $orders['items']; ?></td>
	                     <td><?php echo $orders['items']; ?></td>                 
	                  </tr>
	              	<?php } ?>
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
           
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
     
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include ("includes/footer.php"); ?>
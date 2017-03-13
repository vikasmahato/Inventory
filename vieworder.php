<?php include("includes/header.php"); ?>
<?php 
$sql = mysqli_query($con, "SELECT * FROM orders WHERE id = '".$_GET['id']."'");
$result = mysqli_fetch_array($sql);
$item = explode(",",$result['items']);
?>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        View Orders
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Orders</a></li>
        <li class="active">View</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <!-- title row -->
      <div class="row">
        <div class="col-md-6">
          <div class="box box-default">
            <div class="box-header with-border">
	          <h3 class="box-title">
	            Order Number <?php echo $_GET['id']; ?>
	          </h3>
        	</div>
        <!-- /.col -->
            <div class="box-body">

                <blockquote>
	          <strong>Order No:
	            </strong><?php echo $result['job_order']; ?>
	          </blockquote>
                
                 <blockquote>
	          <strong>Remarks:
	            </strong><?php echo $result['description']; ?>
	          </blockquote>
                
        	</div>

		    </div>
		  </div>

        <div class="col-md-6">
          <div class="box box-default">
            <div class="box-header with-border">
	          <h3 class="box-title">
	            Work Order Image
	          </h3>
        	</div>
        	<img src = "<?php echo $result['work_order_image']; ?>" style="width:94%; margin: 3%;" >

		    </div>
            <div class="box box-default">
            <div class="box-header with-border">
	          <h3 class="box-title">
	            Security Letter Image
	          </h3>
        	</div>
        	<img src = "<?php echo $result['security_letter_image']; ?>" style="width:94%; margin: 3%;" >

		    </div>
            <div class="box box-default">
            <div class="box-header with-border">
	          <h3 class="box-title">
	            Rental Payment Image
	          </h3>
        	</div>
        	<img src = "<?php echo $result['rental_payment_image']; ?>" style="width:94%; margin: 3%;" >

		    </div>
            <div class="box box-default">
            <div class="box-header with-border">
	          <h3 class="box-title">
	            Security Negotiable Image
	          </h3>
        	</div>
        	<img src = "<?php echo $result['security_neg_image']; ?>" style="width:94%; margin: 3%;" >

		    </div>
		  </div>
          <?php if ($_SESSION['name']=="finance"): ?>
		  <div class="col-md-6">
		  	<?php
		  	if($result['status'] == 0) {
		  	?>
		  	<a href = "finishedsuccess.php?id=<?php $_GET['id']; ?>"><button type="button" class="btn btn-block btn-success btn-lg">Approve Order</button></a>
		  	<?php } else { ?>
		  	<button type="button" class="btn btn-block btn-success btn-lg disabled">Action Already Taken</button>
		  	<?php } ?>
		  </div>
          <?php endif; ?>
		</div>

    </section>
    <!-- /.content -->

    <div class="clearfix"></div>
</div>

<?php include("includes/footer.php"); ?>
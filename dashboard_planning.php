<?php include ("includes/header.php");?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      <div class="col-md-4 col-sm-4 col-xs-12">
          <!-- /.info-box -->
        </div>
      <!-- /.row -->
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <div class="col-md-12">
          <!-- TABLE: LATEST ORDERS -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Latest Orders</h3>
            </div>
            <!-- /.box-header -->
      
           
                
                 <div class="box-body">
              <table id="godown" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>Job Order</th>
                  <th>Date of Delivery/Pickup</th>
                  <th>Attachments</th>
                  <th>Documents</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $sql = mysqli_query($con,"SELECT * FROM orders WHERE status = 0");
                while($result = mysqli_fetch_array($sql))
                {
                ?>
                <tr>
                    
                 <td><?php echo $result['job_order'] ?></td>
                 <td><?php echo $result['date'] ?></td>
                 <td><a class="btn btn-block btn-default" href="vieworder.php?id=<?php echo $result['id']; ?>"><i class="fa fa-eye"></i> View</a></td>
                <td><a class="btn btn-block btn-default" href="addChallan.php?id=<?php echo $result['id']; ?>"><i class="fa fa-edit"></i> Add Challan</a>
                    <a class="btn btn-block btn-default" href="addForm.php?id=<?php echo $result['id']; ?>"><i class="fa fa-edit"></i> Add Form</a></td>
                </tr>
                <?php 
                }
                ?>
                </tbody>
                <tfoot>
                <tr>
                   <th>Job Order</th>
                   <th>Date of Delivery/Pickup</th>
                   <th>Attachments</th>
                   <th>Documents</th>
                </tr>
                </tfoot>
              </table>
            </div>
      
           
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
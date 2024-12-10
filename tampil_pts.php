<?php
    session_start();
    error_reporting(0);
    if(empty($_SESSION['id'])){
        header('location:login.php?error_login=1');
    }
?>
<?php include 'header.php';?>
<?php include 'menu.php';?>
<div class="content-wrapper">
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Data Perguruan Tinggi Swasta</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?php if (!empty($_GET['error_msg'])): ?>
                      <div class="alert alert-danger">
                          <?= $_GET['error_msg']; ?>
                      </div>
                    <?php endif ?>
                </div>
            </div>  
            <div class="row">
                <div><a href="input_pts.php" class="btn btn-info">Tambah Data</a></div>
                <br>
                <div class="table-responsive">
                    <table id="example1" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Nama Perguruan Tinggi Swasta</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no=1; foreach($db->select('*','pts')->get() as $data): ?>
                            <tr>
                                <td><?= $data['nama_pts'];?></td>              
                                <td>
                                    <a class="btn btn-warning" href="edit_pts.php?id=<?php echo $data[0]?>">Edit</a>
                                    <a class="btn btn-danger"  onclick="return confirm('Yakin Hapus?')" href="delete_pts.php?id=<?php echo $data[0]?>">Hapus</a>
                                </td>
                            </tr>
                            <?php $no++; endforeach; ?>
                        </tbody>
                    </table>    
                </div>
            </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
</div>
<?php include 'footer.php'; ?>
<script type="text/javascript">
    $(function(){
        $("#ck").addClass('menu-top-active');
    });
    
</script>
<script type="text/javascript">
            $(function() {
                $('#example1').dataTable();
            });
        </script>

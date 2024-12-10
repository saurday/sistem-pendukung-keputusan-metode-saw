<?php include 'header.php';?>

<div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Please Login To Enter </h4>
                </div>
            </div>
            <div class="row">
                
                <div class="col-md-6">
                    <div class="alert alert-info">
                    <br />
                    <?php if ($_GET['error_login']==1): ?>
                         <div class="alert alert-danger">
                            Anda Harus Login Terlebih Dahulu !
                        </div>
                    <?php endif ?>
                    <form method="post" action="proses_login.php">
                    	<label>Enter Username : </label>
                        <input required type="text" name="username" class="form-control" />
                        <label>Enter Password :  </label>
                        <input required type="password" name="password" class="form-control" />
                        <hr />
                        <button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;Login </button>&nbsp;
                   	</form>
                    </div>
                </div>

            </div>
        </div>
    </div>
<?php include 'footer.php';?>
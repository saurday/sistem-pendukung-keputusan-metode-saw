<?php
	include 'db/db_config.php';
	$id = $_GET['id'];
	if($db->delete('pts')->where('id_calon_kr='.$id)->count() == 1){
		header('location:tampil_pts.php');
	} else {
		header('location:tampil_pts.php?error_msg=error_delete');
	}
?>
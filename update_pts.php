<?php
	include 'db/db_config.php';
	extract($_POST);
	if(isset($_FILES)){
		
	
			$db->update('pts',"nama_pts='$nama_pts'")->where("id_calon_kr='$id_calon_kr'")->count();
			header('location:tampil_pts.php');		
	} else{
		if($db->update('pts',"nama_pts='$nama_pts'")->where("id_calon_kr='$id_calon_kr'")->count()==1){
			header('location:tampil_pts.php');
		} else {
			header('location:edit_pts.php?error_msg=update_gagal&id='.$id_calon_kr);
		}
	}		
?>
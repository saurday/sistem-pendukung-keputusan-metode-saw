<?php
	include 'db/db_config.php';
	extract($_POST);

				$db->insert('pts',"'','$nama_pts'")->count();
			header('location:tampil_pts.php');
?>
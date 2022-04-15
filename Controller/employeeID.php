<?php 
	$id = (isset($_GET['id']) ? $_GET['id'] : '');
	require_once ('../Model/dbh.php');
	$sql = "SELECT * FROM `employee` where id = '$id'";
	$result = mysqli_query($conn, $sql);
	$employee = mysqli_fetch_array($result);
	$empName = ($employee['firstName']);

?>
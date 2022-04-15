<?php 
	
$id = (isset($_GET['id']) ? $_GET['id'] : '');
require_once ('../Model/dbh.php');
$sql = "SELECT * FROM `project` where eid = '$id'";
$result = mysqli_query($conn, $sql);

?>

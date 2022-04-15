<?php
require_once ('../Model/dbh.php');

$pid = $_GET['pid'];
$id = $_GET['id'];
$date = date('Y-m-d');

$sql = "UPDATE `project` SET `subdate`='$date',`status`='Submitted' WHERE pid = '$pid';";
$result = mysqli_query($conn , "UPDATE `project` SET `subdate`='$date',`status`='Submitted' WHERE pid =$pid");
header("Location: ../View/empproject.php?id=$id");
?>
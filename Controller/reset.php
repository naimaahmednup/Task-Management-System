<?php 
include("../Model/dbh.php");
$sql1 = "UPDATE rank SET points = 0";
$sql2 = "UPDATE `salary` SET `total` = `base` ,`bonus` = 0";

mysqli_query($conn , $sql1);
mysqli_query($conn , $sql2);

header("Location:../View/aloginwel.php"); ?>
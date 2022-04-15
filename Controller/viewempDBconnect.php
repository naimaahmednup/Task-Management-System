<?php

require_once ('../Model/dbh.php');
$sql = "SELECT * from `employee` , `rank` WHERE employee.id = rank.eid";


$result = mysqli_query($conn, $sql);

?>

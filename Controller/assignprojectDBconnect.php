<?php

require_once ('../Model/dbh.php');
$sql = "SELECT * from `project` order by subdate desc";

$result = mysqli_query($conn, $sql);

?>

<?php

require_once ('../Model/dbh.php');
$sql = "SELECT employee.id,employee.firstName,employee.lastName,salary.base,salary.bonus,salary.total from employee,`salary` where employee.id=salary.id";


$result = mysqli_query($conn, $sql);

?>
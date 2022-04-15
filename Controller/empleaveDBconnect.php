<?php

require_once ('../Model/dbh.php');


$sql = "Select employee.id, employee.firstName, employee.lastName, employee_leave.start, employee_leave.end, employee_leave.reason, employee_leave.status, employee_leave.token From employee, employee_leave Where employee.id = employee_leave.id order by employee_leave.token";


$result = mysqli_query($conn, $sql);

?>

<?php
//including the database connection file
include("../Model/dbh.php");

//getting id of the data from url
$id = $_GET['id'];

//deleting the row from table
$result = mysqli_query($conn, "DELETE FROM `employee` WHERE id=$id");

//redirecting to the display page (index.php in our case)
header("Location:../View/viewemp.php");
?>
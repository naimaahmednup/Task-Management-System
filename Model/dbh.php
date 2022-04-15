<?php

$servername = "localhost";
$dBUsername = "root";
$dbPassword = "";
$dBName = "CSE470_Database";

$conn = mysqli_connect($servername, $dBUsername, $dbPassword, $dBName);

if(!$conn){
	echo "Database Connection Failed";
}

?>
<?php

include("../Controller/assignprojectDBconnect.php")
?>



<html>
<head>
	<title>Project Status |  Admin Panel | Nup Corporation</title>
	<link rel="stylesheet" type="text/css" href="styleview.css">
</head>
<body style = "background: url(../assets/bg2.jpg);
               background-size: cover;
			   background-repeat: no repeat;">
	<header>
		<nav>
		<h1>Nup's Management Service</h1>
			<ul id="navli">
				<li><a class="homeblack" href="aloginwel.php">HOME</a></li>
				<li><a class="homeblack" href="addemp.php">Add Employee</a></li>
				<li><a class="homeblack" href="viewemp.php">View Employee</a></li>
				<li><a class="homeblack" href="assign.php">Assign Project</a></li>
				<li><a class="homered" href="assignproject.php">Project Status</a></li>
				<li><a class="homeblack" href="salaryemp.php">Salary Table</a></li>
				<li><a class="homeblack" href="empleave.php">Employee Leave</a></li>
				<li><a class="homeblack" href="alogin.html">Log Out</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="divider"></div>

		<table>
			<tr>

				<th align = "center">Project ID</th>
				<th align = "center">Emp. ID</th>
				<th align = "center">Project Name</th>
				<th align = "center">Due Date</th>
				<th align = "center">Submission Date</th>
				<th align = "center">Mark</th>
				<th align = "center">Status</th>
				<th align = "center">Option</th>
				
			</tr>

			<?php
				include("../Controller/assignproject.php")?>

		</table>
		
	
</body>
</html>
<?php
include("../Controller/empleaveDBconnect.php")?>



<html>
<head>
	<title>Employee Leave | Admin Panel | Nup Corporation</title>
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
				<li><a class="homeblack" href="assignproject.php">Project Status</a></li>
				<li><a class="homeblack" href="salaryemp.php">Salary Table</a></li>
				<li><a class="homered" href="empleave.php">Employee Leave</a></li>
				<li><a class="homeblack" href="alogin.html">Log Out</a></li>
			</ul>
		</nav>
	</header>
	 
	<div class="divider"></div>
	<div id="divimg">
		<table>
			<tr>
				<th>Emp. ID</th>
				<th>Token</th>
				<th>Name</th>
				<th>Start Date</th>
				<th>End Date</th>
				<th>Total Days</th>
				<th>Reason</th>
				<th>Status</th>
				<th>Options</th>
			</tr>

			<?php
			include("../Controller/empleave.php")
			?>

		</table>
		
	</div>
</body>
</html>
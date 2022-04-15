<?php
include("../Controller/viewempDBconnect.php")
?>



<html>
<head>
	<title>View Employee |  Admin Panel | Nup Corporation</title>
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
				<li><a class="homered" href="viewemp.php">View Employee</a></li>
				<li><a class="homeblack" href="assign.php">Assign Project</a></li>
				<li><a class="homeblack" href="assignproject.php">Project Status</a></li>
				<li><a class="homeblack" href="salaryemp.php">Salary Table</a></li>
				<li><a class="homeblack" href="empleave.php">Employee Leave</a></li>
				<li><a class="homeblack" href="alogin.html">Log Out</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="divider">
		<div class="padding-top padding-bottom">
        <div class="container">

		<table>
			<tr>

				<th align = "center">Emp. ID</th>
				<th align = "center">Picture</th>
				<th align = "center">Name</th>
				<th align = "center">Email</th>
				<th align = "center">Birthday</th>
				<th align = "center">Gender</th>
				<th align = "center">Contact</th>
				<th align = "center">NID</th>
				<th align = "center">Address</th>
				<th align = "center">Department</th>
				<th align = "center">Degree</th>
				<th align = "center">Point</th>
				
				
				<th align = "center">Options</th>
			</tr>
	    </div>
	  </div>
	</div>
			<?php
			include("../Controller/viewemp.php")?>

		</table>
		
	
</body>
</html>
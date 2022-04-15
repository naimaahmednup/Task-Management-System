<?php 
include("../Controller/empprojectDBconnect.php")
?>



<html>
<head>
	<title>Employee Panel | Nup Corporation</title>
	<link rel="stylesheet" type="text/css" href="styleview.css">
</head>
<body style = "background: url(../assets/bg2.jpg);
               background-size: cover;
			   background-repeat: no repeat;">
	
	<header>
		<nav>
		<h1>Nup's Management Service</h1>
			<ul id="navli">
				<li><a class="homeblack" href="eloginwel.php?id=<?php echo $id?>"">HOME</a></li>
				<li><a class="homeblack" href="myprofile.php?id=<?php echo $id?>"">My Profile</a></li>
				<li><a class="homered" href="empproject.php?id=<?php echo $id?>"">My Projects</a></li>
				<li><a class="homeblack" href="applyleave.php?id=<?php echo $id?>"">Apply Leave</a></li>
				<li><a class="homeblack" href="elogin.html">Log Out</a></li>
			</ul>
		</nav>
	</header>
	 
	<div class="divider"></div>
	<div id="divimg">


		<table>
			<tr>

				<th align = "center">Project ID</th>
				<th align = "center">Project Name</th>
				<th align = "center">Due Date</th>
				<th align = "center">Sub Date</th>
				<th align = "center">Mark</th>
				<th align = "center">Status</th>
				<th align = "center">Option</th>
			</tr>

			<?php
				include("../Controller/empproject.php")
			?>

		</table>

		</body>
</html>
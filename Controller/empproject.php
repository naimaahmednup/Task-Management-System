
<?php
				while ($employee = mysqli_fetch_assoc($result)) {

					echo "<tr>";
					echo "<td>".$employee['pid']."</td>";
					echo "<td>".$employee['pname']."</td>";
					echo "<td>".$employee['duedate']."</td>";
					echo "<td>".$employee['subdate']."</td>";
					echo "<td>".$employee['mark']."</td>";
					echo "<td>".$employee['status']."</td>";
					

					 echo "<td><a href=\"psubmit.php?pid=$employee[pid]&id=$employee[eid]\">Submit</a>";

				}


			?>
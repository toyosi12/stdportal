<?php
	$con = mysqli_connect("localhost", "root", "","nbtsedun_db");
	if(mysqli_connect_errno())
	{
		echo "Could not Reach the database. Please try again or contact the technical team: ";
	}
    mysqli_select_db($con,"nbtsedun_db");
?>	
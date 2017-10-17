<?php 
session_start();
if(isset($_POST['confirmpasscode']) && $_POST['confirmpasscode'] <> '')
{
	include('dbcon.php');

	$matric = $_SESSION['stid'];
	$pwd = $_POST['passcode'];
	$cpwd = $_POST['confirmpasscode'];
	$opwd = $_POST['opasscode'];
	if($pwd <> $cpwd)
	{
		$message = "<br /> Passcode and Comfirm Passcode do not match please try again.";
		
	}
	else
	{
		$opwd = sha1($opwd);
		$pwd = sha1($pwd);
		$login = mysqli_query($con,"select * from student_table where student_id = ".$matric." and password = '".$opwd."'");
		
		while($log = mysqli_fetch_array($login))
		{
			$flag = true;
			mysqli_query($con,"update student_table set password = '".$pwd."' where student_id = ".$matric);
				$message = "Your passcode has been changed successfully!";
				
		}
		if(!$flag)
		{
			$message = "<br /> Incorrect old passcode";	
		}
	}
}
include('changepcode.php');
?>
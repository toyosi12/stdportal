<?php
if(!ISSET($_SESSION)){
	session_start();
	}
require_once 'classes/login.php';
$log = new Login;
$log->sessions(2);
if(isset($_POST['matric'])){
	$matric = $_POST['matric'];
	$pwd = $_POST['passcode'];
	$pwd = sha1($pwd);
	$log->student_login($matric,$pwd);
}
?>
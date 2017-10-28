<?php
if(!isset($_SESSION)){
	session_start();
}
require_once "classes/course_search_class.php";
$search = new Search_course;
if(isset($_POST['course'])){
	$code = $_POST['course'];
	$proname = $_SESSION['proname'];
	$cdid = $_SESSION['cdid'];
	$search->search($cdid,$proname,$code);
}
?>
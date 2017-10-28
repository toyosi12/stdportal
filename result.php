<?php session_start();
if(isset($_SESSION['matric']))
{
$_SESSION['page'] = 'reg.php';
include("dbcon.php");
$matric = $_SESSION['matric'];
$cdid = $_SESSION['cdid'];
$grades = mysqli_query($con,"select * from grades_tb where c_id = (select distinct c_id from class_details_tb where cd_id = $cdid) order by score desc ");
	
	$acount = 0;
	$sgrade = 'AR';
   $scomment = 'Awaiting Result';
   $spoint = 0;
   $psem = 0;
  $gradunit = 0;
  $cgpstatus = '';
  $ccp = 0;
  $ctcp = 0;
  $ctcu = 0;
	while($g = mysqli_fetch_array($grades))
	{
		
		$gid = $g['grade_id'];
		$score = $g['score'];
		$grade = $g['grade'];
		$comment = $g['comment'];
		$point = $g['point'];
		$gradesA[$acount] = array($score,$grade,$comment,0,0,$point);
		
		$acount++; 
		
	}
if(isset($_POST['course']))
{
	$sub = $_POST['course'];
	$sql = mysqli_query($con,"insert into result_tb (sub_id, termd_id) values ($sub,(select termd_id from term_details_tb join term_tb using(term_id) where student_id = $matric and current_date between begins and ends))");
	if($sql)
	{
		$msg = "Course added successfully.";	
	}
	else
	{
		$msg = mysqli_error();	
	}	
	echo $msg;
}
elseif(isset($_GET['dc']))
{
	$dc = $_GET['dc'];
	mysqli_query($con,"delete from result_tb where sub_id =$dc and termd_id =(select termd_id from term_details_tb join term_tb using(term_id) where student_id = $matric and current_date between begins and ends)");
}
?>
<!DOCTYPE HTML>
<html>
<head>
<title><?php echo $_SESSION['abr'] ?> Student Result</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<script
  src="http://code.jquery.com/jquery-3.2.1.min.js" ></script>
  <script src="js/jquery-3.1.1.js"></script>
<script>
$(function(){
	$("#sbanner").hide();
	});
var printelem = '#page1';

	var printallelem = '';

    // function printElem()
    // {
    //     Popup($(".contact-form").html());
		

    // }

    // function Popup(data) 
    // {

    //     var mywindow = window.open('', 'Terminal Report', 'height=400,width=600');

    //     mywindow.document.write('<html><head><title>Semester Result</title>');

    //     /*optional stylesheet*/ //mywindow.document.write('<link rel="stylesheet" href="main.css" type="text/css" />');

    //     mywindow.document.write('</head><body >');

    //     mywindow.document.write(data);

    //     mywindow.document.write('</body></html>');



    //     mywindow.print();

    //     mywindow.close();



    //     return true;

    // }

function printElem(){
	var win = window.open('','Terminal Report','height:400, width:600');
	$("#sbanner").show();
	win.document.write('<html><head><title>'+document.title+'</title>');
	win.document.write('<link type="text/css" rel="stylesheet" href="css/bootstrap.css" /><style>div#pass img{width:100px;height:100px;border-radius:60px;}</style>');
	win.document.write('</head><body style="background-image: url(images/water_mark.png);">');
	win.document.write(document.getElementById('body').innerHTML);
	win.document.write('</body></html>');
	win.document.close();
	win.document.focus();
	win.print();
	win.close();
	return true;
}

function deletes(v)
{
	if(confirm("Are you sure you want to remove this course"))
	{
		location.href = 'reg.php?dc='+v;
	}
}
</script>
<style>
div#pass img{
		width:60px;
		height:60px;
		border-radius:60px;
	}
table th{
	background-color:#008000;
	color:#fff;
}
</style>
</head>
<body id="body">
	<div class="container-fluid">
		<div id="sbanner" style="background-color:#090;height:70px">
                  <img style="height:70px;width: 100%;" alt="School Banner Here" src="<?php echo '../edozzier/'.$_SESSION['banner']; ?>" />
        </div>
				  <div class="contact-form"><form id="actForm" class="form-horizontal" method="POST"><fieldset><legend></legend>
				  <div class="col-md-6 col-sm-6">
				  <h3 class="form-section-title" style="color:#008000;"><?php echo $_SESSION['abr'] ?> Semester Result<br /><small><?php echo $_SESSION['stname']; echo "[".$_SESSION['matric']."]"; ?></small></h3>
				  </div>
				  <div class="col-md-6 col-sm-6" id="pass">
				  		<img src="images/placeholder.png<?php //echo $stphoto = (isset($_SESSION['stphoto']))?$_SESSION['stphoto']:'images/placeholder.png'; echo $stphoto; ?>"  class="img-responsive pull-right" />
				  </div>
				    <div class="controls col-md-12" style="margin-top:30px;">
				      <p class="help-block">If you do not find any of the courses you are offering here, you probably have not added it in the course registration section. Please ensure you do this as soon as possible before lecturers start computing result else you might not have your result computed. </p>
				    </div>
				  </div>
                    <?php
					$staffs = mysqli_query($con,"select * from staff_table");
					while($s = mysqli_fetch_array($staffs))
					{
						$staff[$s['staff_id']] = $s['title']." ".$s['firstname']." ".$s['lastname'];	
						$office[$s['staff_id']] = $s['office_desc'];
					}
					
					$course2 = mysqli_query($con,"select * from result_tb join subject_tb using(sub_id) join courses_tb using (co_id) where termd_id = (select termd_id from student_table join term_details_tb td using (student_id) join term_tb using(term_id) where student_id = $matric and current_date between begins and ends)");

					 ?>
				  <div class="controls">
                  <table class="table table-bordered"><tr><th width="10%">Course Code</th><th>Course Title</th><th>Grade</th><th>Units</th><th>Marks</th><th>GP</th><th>TGP</th>
                  </tr>
                  <?php
				  $up = 0;
				  $counter = 0;
		while($c = mysqli_fetch_array($course2))
		{
			$subid = $c['sub_id'];
			$code = $c['title'];
			$status = $c['status'];
			$unit = $c['unit'];
			$title = $c['s_desc'];
			$desc = $c['f_desc'];
			$ca1 = 'AR';
			$ca2 = 'AR';
			$exam = 'AR';
			$score = 0;
			$counter++;
			if($c['confirm'] === 'Y')
			{
				$subid = $c['sub_id'];
				$code = $c['title'];
				$status = $c['status'];
				$unit = $c['unit'];
				$title = $c['s_desc'];
				$desc = $c['f_desc'];
				$ca1 = $c['ca1'];
				$ca2 = $c['ca2'];
				$exam = $c['exam'];
				$score = $ca1 + $ca2 + $exam;
				if($score > 69)
			   {
					$grade = 'A';
					$a++;
					$gp = 7;
			   }
			   else if($score > 64)
			   {
					$grade = 'A-';
					$a++;
					$gp = 6;
			   }
			   else if($score > 59)
			   {
					$grade = 'B+';
					$b++;
					$gp = 5;
			   }
			   else if($score > 54)
			   {
					$grade = 'B';
					$b++;
					$gp = 4;
			   }
			   else if($score > 49)
			   {
					$grade = 'B-';
					$b++;
					$gp = 3;
			   }
			   else if($score > 44)
			   {
					$grade = 'C+';
					$c++;
					$gp = 2;
			   }
			   else if($score > 39)
			   {
					$grade = 'C';
					$c++;
					$gp = 1;
			   }
			   else if($score > 39)
			   {
					$grade = 'C-';
					$c++;
					$gp = 1;
			   }
			   else
			   {
					$grade = 'F';
					$f++;
					$gp = 0;
			   }
			}
						$st = $staff[$c['staff_id']];
						$of = $office[$c['staff_id']];
						$tunit += $unit;
						echo "<tr><td title='$st $of'>$code </td><td title='$desc'>$title</td><td>$grade</td><td>$unit</td><td title='Continous Assessment 1: $ca1, Continous Assessment 2: $ca2, Examinination: $exam'>$score</td><td>$gp</td><td>$tgp</td></tr>";
						
					} 
					$csa = $score/$counter;
					?></table><br /><table class="table table-bordered">
					<h4 style="color:#008000;">Summary for <?php $_SESSION['session_year'] ?> Session (<?php echo $counter?> Courses)</h4>
                  <tr>		
                    <th>Units Registered &nbsp;&nbsp;<?php if($tunit > 11 && $unit < 19){ echo $tunit;}else{ echo "<font color=red title='Unit not within range.'> $tunit </font>";} ?></th><th>&nbsp;&nbsp;&nbsp;&nbsp;Units Passed&nbsp;&nbsp;</th><th><?php echo $up; ?></th><th>&nbsp;&nbsp;&nbsp;&nbsp;Weighted GP&nbsp;&nbsp;</th><th><?php echo $wgp; ?></th><th>&nbsp;&nbsp;&nbsp;&nbsp;CSA&nbsp;&nbsp; </th><th><?php echo $csa ?></th></tr>
                    <tr><td width="100%" colspan="7" align="right">&nbsp; <img src="images/print.jpg" width="50" height="40" alt="Print" onClick="printElem()"/></td></tr>
                  </table>
                 
                  </div>
                  <h3 class="form-section-title">&nbsp;</h3><span style="display:none;" id="englishName"><div id="englishNameAlert" class="alert alert-info">Some systems cannot handle your name as you have entered it. Please enter your name using only the English alphabet in the fields below.</div><div class="control-group"><label for="englishFirstName" class="control-label">English First Name</label><div class="controls"><input id="englishFirstName" name="englishFirstName" type="text" value="" maxlength="45"/></div></div><div class="control-group"><label for="englishMiddleName" class="control-label">English Middle Name</label><div class="controls"><input id="englishMiddleName" name="englishMiddleName" type="text" value="" maxlength="25"/></div></div><div class="control-group"><label for="englishLastName" class="control-label">English Last Name</label><div class="controls"><input id="englishLastName" name="englishLastName" class="english" type="text" value="" maxlength="45"/></div></div></span><div class="form-actions"></div></fieldset></form></div></div>
				
				 <div class="clear"></div>
			 
    <?php include('footer.php'); ?>

</body>
</html>

    	
    	<?php }
		else
		{
			$_SESSION['page'] = '';
			unset($_SESSION['page']);
			header('Location:studentlogin.php');	
		}
		 ?>
            
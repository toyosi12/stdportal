<?php
session_start();
if (isset( $_SESSION['stid'])){
$cdid = $_SESSION['cdid'];
$_SESSION['page'] = 'reg.php';$cdid = $_SESSION['cdid'];
$_SESSION['page'] = 'reg.php';
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Student Profile | NBTS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link rel="icon" href="favicon.ico" type="image/x-icon" >
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content" style="padding:2%;">
    <div class="panel panel-widget">
						<div class="tables">
							<h4>Current Timetable</h4>
							<table class="table"> <thead> 
							<?php $course = mysqli_query($con,"select s.staff_id,ctb.title ctitle,s.title title,firstname,lastname,sub_id from staff_table s join subject_tb using(staff_id) join courses_tb ctb using(co_id) where cd_id = $cdid");
		while($r = mysqli_fetch_array($course))
		{ 
			$sub[$r['sub_id']] = $r['ctitle'];
			$sic[$r['sub_id']] = $r['title'].' '.$r['firstname'].' '.$r['lastname'];
		}
		$days = mysqli_query($con,"select day from days_table");
		while($day = mysqli_fetch_array($days))
		{
			echo "<td>".$day['day']."</td>";
		}
		
		$periods = mysqli_query($con,"select start_time,sub_id,period_id from time_table join periods_table using(period_id) where cd_id=".$cdid);
		$start = null;
		while($period = mysqli_fetch_array($periods))
		{
			if($start <> $period['start_time'])
			{
					echo "</tr>";
				echo "<tr><td class=time>".substr($period['start_time'],0,5)."</td>";
				echo "<td class=drop id=".$period['period_id']." title=".$sic[$period['sub_id']].">".$sub[$period['sub_id']]."</td>";
				$start = $period['start_time'];
			}
			else
			{
				echo "<td class=drop id=".$period['period_id']." title='".$sic[$period['sub_id']]."'>".$sub[$period['sub_id']]."</td>";
			}
			
		}
	
		 ?> </table> 
						</div>
					</div>
					<div class="progressbar-heading grids-heading">
					</div>
					
			</div>
 	</div>
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- Bootstrap Core JavaScript --> 
		
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <script type="text/javascript" src="js/dev-loaders.js"></script>
        <script type="text/javascript" src="js/dev-layout-default.js"></script>
		<script type="text/javascript" src="js/jquery.marquee.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<script type="text/javascript" src="js/jquery.jqcandlestick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/jqcandlestick.css" />
		
		<!--max-plugin-->
		<script type="text/javascript" src="js/plugins.js"></script>
		<!--//max-plugin-->
		
		<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
</body>
</html>
<?php
}
else{
	echo "
	<script>
		alert ('Access Denied');
		alert ('You need to Login First');
			window.location='../studentlogin.php';
	</script>
	";
	
}
?>
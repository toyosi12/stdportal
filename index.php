<?php
	if(!ISSET($_SESSION)){
	session_start();
	}
	// include('dbcon.php');
	
	// $session = mysqli_query($con,"select session_id,session_year,comment,term_tb.term from session_tb join term_tb using(session_id) where status = 2 and CURRENT_DATE BETWEEN begins and ends");
	// $company = mysqli_query($con,"select * from company_tb");
	// while($ses = mysqli_fetch_array($session))
	// {
	// 	$_SESSION['session_year'] = $ses['session_year'];
	// 	$_SESSION['current_session'] = $ses['session_id'];
	// 	$_SESSION['description'] = $ses['comment'];
	// 	$_SESSION['semester'] = $ses['term'];	
	// }
	// while($c = mysqli_fetch_array($company))
	// {
	// 	$_SESSION['website'] = $c['website'];
	// 	$_SESSION['abr'] = $c['adm_initial'];	
	// 	$_SESSION['banner'] = $c['path'];
	// }
	/*$pwd = $_SESSION['pwd'];
	echo "
		<script>
			alert ('$pwd I ama')
			//window.location='../studentlogin.php'
		</script>
		";*/
/*if (isset($_SESSION['pwd']))
	{
		$pwd = $_SESSION['pwd'];
		$matric = $_SESSION['stid'];		
	}
	else
	{
		$matric = $_POST['matric'];
		$pwd = $_POST['pwd'];
		$pwd = sha1($pwd);
	}*/
	// if(isset($_POST['matric']))
	// {
	// 	$matric = $_POST['matric'];
	// 	$pwd = $_POST['passcode'];
	// 	$pwd = sha1($pwd);
	// 	$login = mysqli_query($con,"select firstname,lastname,s.student_id student_id,gender,email,passport,phone_1,phone_2,cd_id,tag,cat_id,c_id,date_of_birth,summer from student_table s join class_details_tb c using(cd_id) where s.student_id = $matric and password = '$pwd'");
	// 	$terms = mysqli_query($con,"select termd_id from term_details_tb join term_tb using(term_id) where student_id = $matric and current_date between begins and ends");
		
	// }
	
	
	// if (mysqli_num_rows($login) == 1)
	// {
	// 	$_SESSION['pwd'] = $pwd;
	// $_SESSION['stid'] = $matric;
	// $_SESSION['matric'] = $matric;
	// 	while($t = mysqli_fetch_array($terms))
	// 	{
	// 		$_SESSION['termdid'] = $t['termd_id'];	
	// 	}
	// 	while($log = mysqli_fetch_array($login))
	// 	{
			//echo "after";
		// 	$flag = true;
		// 	$_SESSION['stname'] = $log['firstname'].' '.$log['lastname'];
		// 	$_SESSION['stphoto'] = "../edozzier/".$log['passport'];
		// 	$_SESSION['matric'] = $log['student_id'];
		// 	$_SESSION['phone1'] = $log['phone_1'];
		// 	$_SESSION['cdid'] = $log['cd_id'];
		// 	$_SESSION['tag'] = $log['tag'];
		// 	$_SESSION['email'] = $log['email'];
		// 	$_SESSION['gender'] = $log['gender'];
		// 	$cat = $log['cat_id'];
		// 	$cid = $log['c_id'];
		// 	$_SESSION['cdid'] = $log['cd_id'];
		// 	$_SESSION['deptid'] = $cat;
		// 	$summer = $log['summer'];	
		// 	$_SESSION['summer'] = $summer;
		// 	$sqll2 = mysqli_query($con,"select * from class_tb where c_id = $cid");
			
		// 	$sqll3 = mysqli_query($con,"select * from categories_tb where cat_id = $cat");	
		// }
		// while($class = mysqli_fetch_array($sqll2))
		// {
		// 	$_SESSION['prog'] = $class['name'];
		// }
		// while($cate = mysqli_fetch_array($sqll3))
		// {
		// 	$_SESSION['dept'] = $cate['description'];
		// }
?>
<!DOCTYPE HTML>
<html><head>
<title> Student Portal | <?php echo $_SESSION['abr']; ?> </title>
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
<script
  src="http://code.jquery.com/jquery-3.2.1.min.js" ></script>
<script src="js/Chart.js"></script>
<!-- //chart -->
 <!-- js-->
<!--<script src="js/jquery-1.11.1.min.js"></script>-->
<script src="js/jquery-3.1.1.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<link type="text/css" rel="stylesheet" href="css/jquery-ui.css" />
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
<style>
	nav.navbar.navbar-default{background-color:#fff;}
	.navbar .col-md-10{padding-top:14px;}
	.navbar h4{font-size:15px;}
	div.seclude{margin-top:80px;}
	.logo a{padding:0;background:#fff;}
	.logo{padding-left:17%;background-color:#fff;}
	.logo img{color:#008000;font-size:48px;}
	
	
	div.scrollbar{padding-top:40px;}
	nav.cbp{height: 700px}
	iframe{width:100%;height:500px;margin-top:30px; border:0px solid green;box-shadow:0 0 3px;border-radius:5px;}
	/*.sidebar .fa-chevron-right{
		float: right;
	}*/
	@media only screen and (max-width:500px){
		body{
			padding-top:150px;
		}
		nav.cbp{
			height:400px;
		}
		iframe{
			height:1200px;
		}
	}
</style>
</head> 
<body class="cbp-spmenu-push">
	<nav class="navbar navbar-default navbar-fixed-top">
		  <div class="container-fluid">
		  <div class="row">
		  	<div class="col-md-1">
				<a href="index.html"><img src="images/178472367.jpg" alt="<?php echo $_SESSION['abr']; ?>" width="80" height="80" style="font-size: 36px;color:#008000;" /></a>
	   		</div>
	   		<div class="col-md-10">
	   		<h3 style="color:green; width:auto;">Student Portal <?php if($_SESSION['summer'] == 'Y'){ echo '(Sandwich)';  }?></h3>
					<h4 style="color:green;">Welcome, <?php echo $_SESSION['stname'];  ?></h4>
					<h4 style="color:green;"><?php   echo " (".$_SESSION['dept'].$_SESSION['tag']." -".$_SESSION['prog'].")"; ?></h4>
	   		</div>
	   		<div class="col-md-1">
	   			<button id="showLeftPush"><i class="fa fa-bars"></i></button>
			</div>
	   		</div>
		   </div>
		  
		</nav>
		<div class="seclude">
	<div class="container-fluid" style="padding: 0">
	
	<div class="row">
		<div class="col-md-9 col-sm-9" id="page-wrap">
		<div class="container-fluid">
		<iframe name="body" src="profile.php"></iframe>
		</div>
	</div>
		<div class="sidebar col-md-3 col-sm-3" role="navigation" style="padding-right:0;">
            <div class="navbar-collapse">
				<nav class="cbp" id="cbp-spmenu-s1" style="background:green;">
					<div class="scrollbar scrollbar1">
						<ul class="nav" id="side-menu">
							<li>
								<a href="index.php" class="active"><i class="fa fa-home nav_icon"></i>Dashboard</a>
							</li>
                            	<li>
								<a href="#"><i class="fa fa-user nav_icon"></i>Profile <span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="profile.php" target="body">My profile</a>
										<a href="changepcode.php" target="body">Change Passcode</a>
									</li>
									<li>
										<a href="documents.php" target="body">Documents</a>
									</li>
								</ul>
								<!-- /nav-second-level -->
							</li>

							<li>
								<a href="#"><i class="fa fa-book nav_icon"></i>Payments <span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="paytution.php" target="body">Pay Tution</a>
									</li>
									<li>
										<a href="otherpayments.php" target="body">Other Payment</a>
									</li>
                                    <li>
										<a href="payhistory.php" target="body">Payment History</a>
									</li>
								</ul>
								<!-- /nav-second-level -->
							</li>
							<li>
								<a href="#" class="chart-nav"><i class="fa fa-list-ul nav_icon"></i>Academics<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="result.php" target="body">Semester Result</a>
									</li>
									<li>
										<a href="reg.php" target="body">Course Registration</a>
									</li>
                                    <li>
										<a href="reghistory" target="body">Registration History</a>
									</li>
                                    <li>
										<a href="mytimetable.php" target="body">View Timetable</a>
									</li>
								</ul>
								<!-- //nav-second-level -->
							</li>
                            <li>
								<a href="<?php echo $_SESSION['website']; ?>" target="new"><i class="fa fa-home nav_icon"></i><?php echo $_SESSION['abr']; ?>  Home</a>
							</li>
                             <li>
								<a href="<?php echo $_SESSION['website']; ?>/student-portal/" ><i class="fa fa-sign-out nav_icon"></i>Log Out</a>
							</li>
						</ul>
					</div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		
	</div>
	</div>
	
	
		 <div class="dev-page">
	 
			<!-- page footer -->   
			<!-- dev-page-footer-closed dev-page-footer-fixed -->
            <div class="dev-page-footer dev-page-footer-fixed" style="background:green;"> 
				<!-- container -->
				<div class="containe" >
					<div class="copyright">
						<p style="text-align: center;">© <?php echo date('Y'); ?> <a href=" <?php echo $_SESSION['website']; ?> "><?php echo $_SESSION['abr']; ?></a> . All Rights Reserved . Design by <a href="https://sqiprofessionals.com">SQI Professionals</a></p> 
					</div>
					</div>
               
                
                </div>
				<!-- //container -->
            </div>
            <!-- /page footer -->
		</div>
        <!--//footer-->
	</div>
	
	<!-- Bootstrap Core JavaScript --> 
		
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <script type="text/javascript" src="js/dev-loaders.js"></script>
        <script type="text/javascript" src="js/dev-layout-default.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		
		<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
		
		<script>
			<script src="js/scripts.js"></script>
		<!--//scrolling js-->
		
		<script>
		function toggler()
		{
			if($("nav.cbp").is(':visible')){
						$("nav.cbp").toggle('slide',{direction:'right'},500,function(){
							$("#page-wrap").removeClass('col-md-9 col-sm-1 col-xs-1',500).addClass('col-md-12 col-sm-12 col-xs-12');
						});
						
					}else{
						$("#page-wrap").removeClass('col-md-12 col-sm-12 col-xs-12').addClass('col-md-9 col-sm-1 col-xs-1',function(){
							$("nav.cbp").toggle('slide',{direction:'right'},1000);
						});
					
					}	
		}
			$(document).ready(function(){
				$("#showLeftPush").click(function(){
					
					if($(window).width()<=600){
					toggler();
					$("a[target='body']").click(function(){
						//toggler();
						$("nav.cbp").hide('slide',{direction:'right'},function(){
							$("#page-wrap").removeClass('col-md-9 col-sm-1 col-xs-1',500).addClass('col-md-12 col-sm-12 col-xs-12');
						})
					});
				}else{
					toggler();
				}
				});
				
			});
		</script>
		</script>
		
		
	</div>	
</body>
</html>
<?php
	// 

?>
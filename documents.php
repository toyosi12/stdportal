<?php
session_start();
if (isset( $_SESSION['stid'])){
	include ("dbcon.php");
	if(isset($_POST['title']))
{
	$_SESSION['matric'] = $_SESSION['stid'];
	//The code to uploade images.
		if((($_FILES["docpath"]["type"] == "image/gif")
		||($_FILES["docpath"]["type"] == "image/jpeg")
		||($_FILES["docpath"]["type"] == "image/pjpeg")
		||($_FILES["docpath"]["type"] == "application/pdf")
		||($_FILES["docpath"]["type"] == "application/doc")
		||($_FILES["docpath"]["type"] == "appication/docx")
		||($_FILES["docpath"]["type"] == "image/png"))
		&&($_FILES["docpath"]["size"] < 500000))
	   {
	  	 if ($_FILES["docpath"]["error"] > 0)
	   	 {
	  	 	echo "Return code: ". $_FILE["docpath"]["error"] . "<br/>";
	  	 }
	   	 else
	   	 {
		 if (file_exists("edozzier/stdoc/".$_SESSION['matric'] . $_FILES["docpath"]["name"]))
		 {
			 unlink("/edozzier/stdoc/".$_SESSION['matric'].$_FILES["docpath"]["name"]);
			  $path ="stdoc/".$_SESSION['matric'].$_FILES["docpath"]["name"];
			 move_uploaded_file($_FILES["docpath"]["tmp_name"],"../edozzier/".$path);
			 
			
		 }
		 else
		 {
			  $path ="stdoc/".$_SESSION['matric'].$_FILES["docpath"]["name"];
			 move_uploaded_file($_FILES["docpath"]["tmp_name"],"../edozzier/".$path);
			 
			
	     }
	   }
      }
	else
	{
		$message = "file upload failed";
	}
	//end of upload program
	$d = date('Y-m-d');
	mysqli_query($con,"insert into std_doc_tb (doc,title,description,date_uploaded,student_id) values ('$path','$_POST[title]','$_POST[description]','$d',$_SESSION[matric])");
}
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
							<h4>Your Documents</h4>
							<table class="table"> <thead> <tr> <th>#</th> <th>Title</th> <th>Description</th><th>Date Uploaded</th> </tr> </thead> <tbody> 
                            <?php
								$seldoc = mysqli_query($con,"SELECT * FROM `std_doc_tb` where student_id =".$_SESSION['stid']);
								$n = 1;
								 while($doc = mysqli_fetch_array($seldoc))
								 {
									 $p = "edozzier/".$doc['doc'];
									 $title = $doc['title'];
									 $desc = $doc['description'];
									 $d = $doc['date_uploaded'];
					echo "
							<tr class='active'> <th scope='row'>$n</th>  <td><a href='$p' target='_blank'> $title</a></td> <td>$desc</td><th>$d</th> </tr> 
					 ";
					 $n++;
                    }
							?>
                             </tbody> </table> 
						</div>
					</div>
					<div class="progressbar-heading grids-heading">
					</div>
					<div class="panel panel-widget">
						<div class="block-page">
							<div class="panel panel-widget">
								<div class="validation-grids validation-grids-right">
									<div class="widget-shadow login-form-shadow" data-example-id="basic-forms"> 
										<div class="input-info">
											<h3>Upload a Document :</h3>
										</div>
										<div class="form-body form-body-info">
											<form data-toggle="validator" novalidate action="documents.php" method="post" enctype="multipart/form-data">
                                            <div class="form-group has-feedback">
													<input type="text" class="form-control" id="inputEmail" name="title" placeholder="Title" required>
													<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
												</div>
                                                <div class="form-group has-feedback">
													<input type="text" class="form-control" id="inputEmail" placeholder="Description" name="description" required>
													<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
												</div>
												<div class="form-group has-feedback">
													<input type="file" class="form-control" id="inputEmail" name="docpath" required>
													<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
												</div>
													<div class="form-group">
														<button type="submit" style="background:green; width:100%;" class="btn btn-success">Upload</button>
													</div>
													<div class="clearfix"> </div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
                  
					</div>
				</div>
				<!--//grids-->
				
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
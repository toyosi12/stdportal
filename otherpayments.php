<?php session_start(); 
$t = 'NBST'.time();
if(isset($_SESSION['matric']))
{
$_SESSION['page'] = 'otherpayments.php';
 ?>
<?php
include("dbcon.php");
?>

<!DOCTYPE HTML>

<html>

<head>

<title>NBTS</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<script src="edozzier/js/digit2words.js"></script>
<script>
function calculatebankcharges()
{
	var charges = 0;
	var bcharges = 0;
	var pamount = parseFloat(document.getElementById("pamount").value);
	charges = pamount * 0.015;
	bcharges += charges;
	charges = charges * 0.015;
	bcharges += charges;
	charges = charges * 0.015;
	bcharges += charges;
	charges = charges * 0.015;
	bcharges += charges;
	charges = charges * 0.015;
	bcharges += charges;
	if(bcharges >= 2000)
	{
		bcharges = 2000;
	}
	pamount = pamount + bcharges;
	pamount = Math.round(pamount);
	amtwords = toWords(pamount);
	amtwords += " naira";
	amtwords = "Amount in Words :"+ amtwords;
	document.getElementById("inwords").textContent = amtwords;
	pamount = pamount.toLocaleString("en-EN");
	document.getElementById("bcharges").value = bcharges;
	document.getElementById("tamount").value = pamount;
	//f1.tamount.value = pamount;
	
		
}
</script>
<style>
	table th{
		background-color: #008000;
		color:#fff;
	}
</style>
</head>

<body style="padding-top: 30px;">
	<div class="container-fluid">
		<h3 class="text-center" style="color: #008000">Other Payments</h3>
		<hr />
		<span class="help-block text-center">Make payment for any other bill apart from tution bill. If you are making payment for tuition. Please click on the 'Pay Tuition' Link<br /> </span>
		<div class="col-md-12 col-sm-12">
		<form action="otherpayments2.php" method="post" form="f1">
<table class="table table-bordered"><tr><th style="width:5%">#</th><th  style="width:60%">Service or Product Description</th><th style="width:35%">Amount (N)</th></tr>
                  <tr><td>1.</td><td><input type="text" title="Enter the description of what you are paying for here" class="form-control" placeholder="Enter the description of what you are paying for here" name="pdesc" id="pdesc" /></td><td><input type="text"  name="pamount" id="pamount" required title="Enter Amount (in digit without comma)" placeholder="Amount (in digit without comma)" class="form-control" onKeyUp="calculatebankcharges()" />
</td></tr>
<tr><td></td><td>Bank Charges</td><td><input type="text" name="bcharges" id="bcharges" disabled class="form-control" /></td></tr>
<tr><td></td><td align="left">Total</td><td><input type="text" name="tamount" id="tamount" disabled value="0" class="form-control" /><input type="hidden" name="tid" value="<?php echo $t ?>" class="form-control" /></td></tr>
<tr><td></td><td align="left"><u><div id='inwords'>Amount in Words :</div> </u></td></tr>
<tr><td colspan="4">

<input type="submit" value="Proceed to Payment Page" name="paybutton" id="paybutton" class="btn btn-success" />

</td></tr>
                 

          </table>
		</form>
	</div>
			       
	</div>
				 
				  <!--   <div class="controls"></div></div>

				  <div class="controls">
					
                  
				  </fieldset></form>

            

                  </div></div>

				

				 <div class="clear"></div>

			  </div>

			</div> -->

	

    <?php include('footer.php'); ?>

</body>

</html>

<?php } ?>

    	

    	

            
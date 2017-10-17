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

</head>

<body class="cbp-spmenu-push">
	<div class="main-content" style="padding:2%;">
    <div class="panel panel-widget">

				 

				<div class="section group">

				 <div class="col span_2_of_contact">

				  <div class="contact-form"><fieldset><legend></legend>

				  <h3 class="form-section-title"><tr><td width="30%"></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

				  <td>Other Payments</td></tr></h3><div class="control-group"></div><div class="control-group">

				    <div class="controls"><span class="help-block">Make payment for any other bill apart from tution bill. If you are making payment for tuition. Please click on the 'Pay Tuition' Link<br /> 

			        </span></div></div>

				  <div class="controls">
					<form action="otherpayments2.php" method="post" form="f1">
                  <table width="100%"><tr><th width="5%">#</th><th >Service or Product Description</th><th></th><th>Amount (N)</th></tr>
                  <tr valign="top"><td>1.</td><td align="left"><input type="text" title="Enter the description of what you are paying for here" placeholder="Enter the description of what you are paying for here" size="80" name="pdesc" id="pdesc" /></td><td></td><td><input type="text"  name="pamount" id="pamount" required title="Enter Amount (in digit without comma)" placeholder="Amount (in digit without comma)" onKeyUp="calculatebankcharges()" />
</td></tr>
<tr><td></td><td align="left">Bank Charges</td><td></td><td><input type="text" name="bcharges" id="bcharges" disabled /></td></tr>
<tr><td></td><td align="left">Total</td><td></td><td><input type="text" name="tamount" id="tamount" disabled value="0" /><input type="hidden" name="tid" value="<?php echo $t ?>" /></td></tr>
<tr><td></td><td align="left"><u><div id='inwords'>Amount in Words :</div> </u></td></tr>
<tr><td colspan="4">

<input type="submit" value="Proceed to Payment Page" name="paybutton" id="paybutton" />

</td></tr>
                 

                  </table>
				  </fieldset></form>

            

                  </div></div>

				

				 <div class="clear"></div>

			  </div>

			</div>

	

    <?php include('footer.php'); ?>

</body>

</html>

<?php } ?>

    	

    	

            
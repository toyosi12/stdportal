<?php
session_start();
//Start Session
//include_once($_SERVER['DOCUMENT_ROOT'] . '/includes/startSecureSession.php');
//sec_session_start();
//include_once($_SERVER['DOCUMENT_ROOT'] . '/includes/paymentParameters.php');
include_once('includes/functions.php');
$tamount = $_POST['tamount'];
$pamount = $_POST['pamount'];
$t = $_POST['tid'];
$pdesc = $_POST['pdesc'];
//From interswitch
$cust_id = $_SESSION['matric'];
	$customerName = $_SESSION['stname'];
	$product_id = 6204;
	$pay_item_id = 103;	
	$site_redirect_url = "http://nbts.edu.ng/stdportal/paycomplete.php";
	
	$txn_ref = "JB"  . intval( "0" . rand(1,9) . rand(0,9) . rand(0,9) . rand(0,9) . rand(0,9) . rand(0,9) . rand(0,9) ); // random(ish) 7 digit int
    $_SESSION["txn_ref"] = $txn_ref;
	
	$mac    = "E187B1191265B18338B5DEBAF9F38FEC37B170FF582D4666DAB1F098304D5EE7F3BE15540461FE92F1D40332FDBBA34579034EE2AC78B1A1B8D9A321974025C4";
    $amount = $_POST["amount"];
	$amount = $amount + getTransactionFee($amount);
	$amount = $amount * 100;
    $cust_id = $txn_ref;
    $hashv  = $txn_ref . $product_id . $pay_item_id . $amount . $site_redirect_url . $mac;
	
	 $hash  = hash('sha512',$hashv);       
    $_SESSION["amount"] = $amount;
	//end from interswitch
	if($pamount > $tamount)
	{
		$pamount = $tamount;	
	}

	$charges = $pamount * 0.015;
	$bcharges += $charges;
	$charges = $charges * 0.015;
	$bcharges += $charges;
	$charges = $charges * 0.015;
	$bcharges += $charges;
	$charges = $charges * 0.015;
	$bcharges += $charges;
	$charges = $charges * 0.015;
	$bcharges += $charges;
	$charges = $charges * 0.015;
	$bcharges += $charges;
	$charges = $charges * 0.015;
	$bcharges += $charges;
	$charges = $charges * 0.015;
	$bcharges += $charges;
	if($bcharges > 2000)
	$bcharges = 2000;
	$amt = $pamount + $bcharges;
	$amt = round($amt,2);
	list($whole, $decimal) = explode('.', $amt);
	$amt = floor($amt)."".$decimal;
	if($decimal == '')
	$amt .= '00';
	
	

 ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Processing Payment</title>
</head>

<body onload="submit2gtpay_form.submit()">
Please wait... <?php echo $amt ?>
<form name="submit2gtpay_form" action="https://sandbox.interswitchng.com/webpay/pay" target="_self" method="post">

<input name="product_id" type="hidden" value="<?php echo $product_id; ?>" />
    <input name="pay_item_id" type="hidden" value="<?php echo $pay_item_id; ?>" />
    <input name="amount" type="hidden" value="<?php echo $amount ?>" />
    <input name="currency" type="hidden" value="566" />
    <!-- <input name="site_redirect_url" type="hidden" value="http://localhost/demopay4/redirect4.php" /> -->
    <input name="site_redirect_url" type="hidden" value="<?php echo $site_redirect_url; ?>" />
    <input name="txn_ref" type="hidden" value="<?php echo $txn_ref; ?>" />
    <input name="cust_id" type="hidden" value="<?php echo $cust_id; ?>"/>
    <input name="site_name" type="hidden" value=""/>
    <input name="cust_name" type="hidden" value="<?php echo $customerName; ?>" />
    <input name="hash" type="hidden" id="hash" value="<?php echo $hash;  ?>" />
<!-- to this place -->

<!--Hidden fields for interswitch 
<input type="hidden" name="gtpay_mert_id" value="3984" />
<input type="hidden" name="gtpay_tranx_id" value="<?php echo $t; ?>" />
<input type="hidden" name="gtpay_tranx_amt" value="<?php echo $amt; ?>" />
<input type="hidden" name="gtpay_tranx_curr" value="566" />
<input type="hidden" name="gtpay_cust_id" value="<?php echo $t; ?>" />
<input type="hidden" name="gtpay_cust_name" value="<?php echo $_SESSION['stname'] ?>" />
<input type="hidden" name="gtpay_tranx_memo" value="<?php echo $pamount; ?>" />
<input type="hidden" name="gtpay_echo_data" value="<?php echo $pdesc; ?>" />
<input type="hidden" name="gtpay_gway_name" value="webpay" />
<input type="hidden" name="gtpay_hash" value="<?php $hkey ='DF6EA9C28B7FCD6841A93E9DF554A4B9BFC65DE7DB607491E9554B8AC5A5E26EC7BA1608C1DA9D88181E8B79D607C793BE42B2C2E2D61F69B031531B36EB6E12'; $cur = 566; $url="http://nbts.edu.ng/paycomplete.php"; $mid = 3984; $pass = $mid.$t.$amt.$cur.$t.$url.$hkey; echo hash('sha512', $pass);?>" />
<input type="hidden" name="gtpay_tranx_noti_url" value="http://nbts.edu.ng/stdportal/paycomplete.php" />

-->
</form>

</body>
</html>
<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include_once($_SERVER['DOCUMENT_ROOT'] . '/WebPAYDirectX/database/includes/databaseFunctions.php');

function getHashValue($stringToHash) 
{
    return hash('sha512', $stringToHash);
}

function getRequeryURL($productID, $transactionReference, $payAmount) 
{
    $parameters = array(
                    "productid" =>$productID,
                    "transactionreference"=>$transactionReference,
                    "amount"    =>$payAmount
                        );
    $requeryURL = http_build_query($parameters);
    
	return "https://sandbox.interswitchng.com/webpay/api/v1/gettransaction.json$requeryURL";   //OUTSIDE INTERSWITCH

}

function getOrderIdValue() 
{
    return  "Customer-ID"  .
                    intval( 
                            "0" . 
                            rand(1,9) . 
                            rand(0,9) . 
                            rand(0,9) . 
                            rand(0,9)
                        ); // random(ish) 7 digit int;
}

function getAmountFromDB($txnRef)
{
    openDatabase();

$db = getDBInstance();
if(!$db)
{
  echo $db->lastErrorMsg();
} 
else 
{
  //echo "Opened database successfully<br/>";
}

 $sql =<<<EOF
      SELECT AMOUNT from WebPAYDirectLOGS WHERE TXNREF=:id;
EOF;
    //SELECT AMOUNT from WEBPAYLOGS WHERE TXNREF=$txnRef;
//    $ret = $db->query($sql);
//    $row = $ret->fetchArray(SQLITE3_ASSOC);
    $stmt = $db->prepare($sql);
    $stmt->bindValue(':id', $txnRef, SQLITE3_TEXT);
    
    //$row = $ret->fetchArray(SQLITE3_ASSOC);
    $result = $stmt->execute();
    $row = $result->fetchArray(SQLITE3_ASSOC);
    
    return $row['AMOUNT'];
}

function generateSplitXMLData($txnRef, $amount, $txn_fee)
{   
    $amount2split = $amount;
	
    $split_amount_1 = round($amount2split/3, 2);
    $split_amount_2 = round($amount2split/3, 2);
    $split_amount_3 = round($amount2split/3, 2);
    
    if($split_amount_1 + $split_amount_2 + $split_amount_3 != $amount)
    {
        /*
         * Please note, the summation of the 3 split items ($split_amount_1,2&3) must be EXACTLY equal to the amount being split
         * (i.e. $amount), if not an error will be thrown.
         * The below adds whatever difference may arise (usually 1 kobo) to the 3rd split item to resolve this issue.
         */
        $split_amount_1 = round($amount2split/3, 2);
        $split_amount_2 = round($amount2split/3, 2);
        $split_amount_3 = round($amount2split/3, 2);
        $split_amount_3 += $amount - ($split_amount_1 + $split_amount_2 + $split_amount_3);
    }
    
    $xml_data = '<payment_item_detail> 
        <item_details detail_ref="' . $txnRef . '" institution="maritime academy oron" sub_location="NAUTICAL SCIENCE" location="NA"> 
            <item_detail item_id="1" item_name="school fees" item_amt="' . $split_amount_1 . '" bank_id="8" acct_num="12345678910" /> 
            <item_detail item_id="2" item_name="school fees" item_amt="' . $split_amount_2 . '" bank_id="8" acct_num="12345678910" /> 
            <item_detail item_id="3" item_name="school fees" item_amt="' . $split_amount_3 . '" bank_id="8" acct_num="12345678910" /> 
        </item_details> 
    </payment_item_detail>';
    
    return $xml_data;
}

function getAmount($amount)
{
    //TODO: implement Method to pass N300 Txn Fee to Customer
    $amount = round( ($amount / 0.985), 0);
    return $amount;
}

function getTransactionFee($amount)
{
	$r = $amount*0.015;
	$r = ($r > 2000)? 2000:$r;
    return ($r);
}
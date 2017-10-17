<?php

/* 
 * File to generate Transaction Reference
 */

function getTransactionRef() 
{
    
    $randomChars = "WebPAYDirect"  . "-" .
                    date("Y.m.d") . "-" . date("h:i:sa") . "-" .
                    intval( 
                                        "0" . 
                                        rand(1,9) . 
                                        rand(0,9) . 
                                        rand(0,9) . 
                                        rand(0,9) . 
                                        rand(0,9) . 
                                        rand(0,9) . 
                                        rand(0,9) 
                                    ); // random(ish) 7 digit int;
    return $randomChars;
}
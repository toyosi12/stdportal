<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class MyDB extends SQLite3
{
   function __construct()
   {
    $path = realpath($_SERVER["DOCUMENT_ROOT"]);
    $path .= "\WebPAYDirectX\database\databaseFile\WebPAYDirectLogs.db";
    $this->open($path);
   }
}  

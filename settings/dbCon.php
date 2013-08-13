<?php

     require_once('./lib/classes/dbCon.php');

     $DBcon = new EstablishDBConnection();
     
     if ($debug_mode == 'OFF') {
         
         $DBcon->dbserver = '50.63.244.202';
         $DBcon->dbuser   = 'happify';
         $DBcon->dbpass   = 'happy121DB413#';
         $DBcon->dbname   = 'happify';
               
     }
     
     else {

         $DBcon->dbserver = 'localhost';
         $DBcon->dbuser   = 'root';
         $DBcon->dbpass   = '';
         $DBcon->dbname   = 'happify';
     
     }

     $DBcon->connectDB();
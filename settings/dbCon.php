<?php

     require_once('lib/classes/dbCon.php');

     $DBcon = new EstablishDBConnection();

     $DBcon->dbserver = 'localhost';
     $DBcon->dbuser   = 'root';
     $DBcon->dbpass   = '';
     $DBcon->dbname   = 'happify';

     $DBcon->connectDB();
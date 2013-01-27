<?php

  /* Establish :: Class -> Connect to mySQL Database */

     class EstablishDBConnection  {
 
          public $dbserver;
          public $dbuser;
          public $dbpass;
          public $dbname;
		  public $db;
  
          function connectDB() {
          	
          	  global $db;
              $db = mysqli_connect($this->dbserver, $this->dbuser, $this->dbpass, $this->dbname);      

              mysqli_select_db($db, $this->dbname) OR die(mysqli_error());

          }

     }

  /******************************************/
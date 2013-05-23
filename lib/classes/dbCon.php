<?php

  /* copyright Stefan Richter. class should not be modified unless absolutely necessary and logic is well understood */

  /* Establish :: Class -> Connect to mySQL Database */

     class EstablishDBConnection  {
 
          function connectDB() {
          	
          	  global $db;
              $db = mysqli_connect($this->dbserver, $this->dbuser, $this->dbpass, $this->dbname);      

              mysqli_select_db($db, $this->dbname) OR die(mysqli_error());

          }

     }

  /******************************************/
<?php

  /* copyright Stefan Richter. class should not be modified unless absolutely necessary and logic is well understood */

  /* Establish :: Class -> Exist */
  
  /* Checks if SQL request has a non-empty response
   * Also used to set a cookie after a successful login or to delete the cookie when user logs out */

     require_once('select.php');   

     class CheckExist extends SelectEntrys {

          public $tableE;
          public $conditionE;

          public $user;
          public $pw;
          public $ip, $lang;

          /* Are there any strikes under the following conditions? */

          function exist() {
          	
			  global $db;

              if ( $this->conditionE )  {

                   $this->conditionE  = 'WHERE ' . $this->conditionE;

              }

              $query = mysqli_query($db, "SELECT COUNT(1) AS result from $this->tableE $this->conditionE LIMIT 1");

              $rows  = mysqli_fetch_row( $query );

              $result = $rows[ 0 ];  

              if ( $this->errno($db) == 0 ) return $result;

          }

          /******************************************/

          
          /* Create a cookie :: LOGIN */

             function cookieset($c_name) { 

                 $more1 = substr(md5(rand()), 0, 3);
                 $more2 = substr(md5(rand()), 0, 3);
                 
                 if ( $this->email && $this->pw )  {

                      $usertoken = $this->getUserToken();

					  //cookie consists of random strings, the user token, and the password
                      $cookie = "$more1$usertoken$more2$this->pw";
	                  if ($this->cookie_duration == 0) setcookie($c_name, $cookie, 0, "/");           
					  else setcookie($c_name, $cookie, time()+365*3600*24, "/");
				 
                 }
   
                 else  { 

                      $cookie = '';
           
				      setcookie($c_name, $cookie, time()-3600, "/");
  
                 }

             }

          /******************************************/


          /* Create a cookie :: SAVE IP */

             function cookieIP($c_name, $c_content, $c_time, $c_dir) { 
             
                 setcookie($c_name, $c_content, $c_time, $c_dir);

             }

          /******************************************/


          /* Create a cookie :: LANGUAGE */

             function cookieLANG() { 

                 setcookie("lang",$this->lang,time()+365*24*3600);

             }

          /******************************************/
          
     }

  /******************************************/

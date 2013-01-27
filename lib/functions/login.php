<?php

  function login( $data ) {
  
     //global $tpl;
  
     $objResponse = new xajaxResponse();  
       
     include('settings/tables.php');    

	  /* Crypt Password with MD5 Method */
	
	     $pw_crypted = MD5(mysql_real_escape_string($data['password']));
		 $email = mysql_real_escape_string($data['email']);
	
	  /******************************************/
	
	
	  /* Create Object :: EXIST */
	
	     $logon = new CheckExist();
	
	  /******************************************/
	
	
	  /* Check :: EXIST */
	              
	     $logon->tableE     = $tbl_users;
	     $logon->conditionE = " UserEmail = '".$email."' && UserPass = '".$pw_crypted."' && activation_code = '' ";
	
	     $CheckData = $logon->exist();   
	
	  /******************************************/
	
	
	  /* Change Status :: Login successful or failed */
	
	     if ( $CheckData == 1 )  {

	          $logon->email = $email;
	          $logon->pw    = $pw_crypted;
	
	          $logon->tbl_users = $tbl_users;
	          
	          if (isset($data['autologon'])) $logon->cookie_duration = 1;
			  else $logon->cookie_duration = 0;
	          $logon->cookieset('ly');

			  $objResponse->Script("document.getElementById('submit_login').onclick()");
			  $objResponse->redirect(ROOT_DIR);
			  //return true;
	     }
	
	     else  {
	
	          $logon->email = '';
	          $logon->pw   = '';
	
	          //$logon->cookieset('l');
	     	  $objResponse->assign("p_logon_failure","style.display",'block');         	
	     	  $objResponse->assign("p_logon_failure","innerHTML","Login information could not be verified.<br> Please try it again.");

	          //$tpl->display("logon/login.tpl");
	          //return false;

	     }
	
	     unset($logon);
	
	  /******************************************/
  
     return $objResponse;  
               
  }
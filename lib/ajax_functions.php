<?php

   require('lib/xajax/xajax_core/xajax.inc.php');

   $xajax = new xajax();
   $xajax->configure('debug', true);
   $xajax->configure('javascript URI', ROOT_DIR.'lib/xajax/');
   //$xajax->configure('defaultMode', "asynchronous");
   
   $xajax->register(XAJAX_FUNCTION, "postdata");
   $xajax->register(XAJAX_FUNCTION, "login");
   $xajax->register(XAJAX_FUNCTION, "registerUser");

  /******************************************/


  function postdata( $table, $data ) {
  
     global $tpl;
  
     $objResponse = new xajaxResponse();  
   
     //include('settings/template.php');   
     include('settings/tables.php');    

	 if ($table == $tbl_diary) {
     
	       $mysqldate = date( 'Y-m-d H:i:s', time() );
	
	       $diary = new ModifyEntry();
	       $diary->table  = $table;
	       $diary->cols   = 'userID, entry, date';
	       $diary->values = " '1', '".$data['note']."', '".$mysqldate."' ";
	
	       $diary->insert();  
	       unset($diary);
	   
	 }

	 if ($table == $tbl_da_scale_results) {
	 	
		$i = 0;
		$dataValid = 1;
		 
	       $mysqldate = date( 'Y-m-d', time() );
		 
		   for($i=1; $i<=$data['items_total']; $i++) {
		   	
		   	   if (!isset($data[$i]))	{
		   	       $objResponse->alert('Please answer all items');
				   $dataValid = 0;
			       break;
		       }
		   }
		   
		   if ($dataValid == 1) {   

		           $da_scale = new ModifyEntry();
			       $da_scale->table  = $table;
				   			  			 
				   for($i=1; $i<=$data['items_total']; $i++) {
				   	
					   if (isset($data[$i]))	{
					  
					       $da_scale->cols   = 'userID, itemID, value, date';
					       $da_scale->values = " '1', '".$i."', '".$data[$i]."', '".$mysqldate."' ";
					
					       $da_scale->insert();  
			
					   }
					   
					   if($da_scale->errno() > 0) break; 
					   
				   }
				   
				       				 
		   }
		   						
		   if ($dataValid == 1 && $da_scale->errno() == 0) $objResponse->redirect(ROOT_DIR.'da_scale/');
		   
		   unset($da_scale);					 
		   
	 }
	 	       
      /* header ("Location:".ROOT_DIR."flash/newflash.html");
                 
     $select = new SelectEntrys();

     $select->table      = $table;
     $select->cols       = 'id, firstname, lastname, job_position, category, email, phone, description_DE, description_EN, position';
     $select->condition  = " id = '$mid' ";                                                                    
     $select->multiSelect      = '1';
     $select->limit      = '1';

     
     $ay_select = $select->row();
            
   //  $ay_select[0]['description_DE'] = replaceBBcode($ay_select[0]['description_DE'], $set[0]["width_images"], 1);
         	     
     $tpl->assign('array_details', $select->row());
     
     unset($select);
      /*
     $new_height = 45 * ($ay_select[0]['position'] - 1);
     if ($ay_select[0]['position'] < 5) $new_height = $new_height + 23;
     if ($ay_select[0]['position'] > 4) $new_height = $new_height + 23;
     if ($ay_select[0]['position'] > 10) $new_height = $new_height - 160;
        
     $html = $tpl->fetch("team/details.tpl");           
     $p_name  = "team_profile";
     
     //$space = "<div style='height:".$new_height."px'>&nbsp;</div>";
     //$space2 = "<div style='height:200px'>&nbsp;</div>";
          
     $objResponse->assign($p_name,"innerHTML",$html);
                        */
     
     return $objResponse;  
               
  }


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

	          $objResponse->redirect(ROOT_DIR);
			  
	     }
	
	     else  {
	
	          $logon->email = '';
	          $logon->pw   = '';
	
	          //$logon->cookieset('l');
	     	  $objResponse->assign("p_logon_failure","style.display",'block');         	
	     	  $objResponse->assign("p_logon_failure","innerHTML","Login information could not be verified.<br> Please try it again.");

	          //$tpl->display("logon/login.tpl");
	
	     }
	
	     unset($logon);
	
	  /******************************************/
  
     return $objResponse;  
               
  }

  function registerUser( $data ) {
  	
		 $objResponse = new xajaxResponse(); 
  
         include('settings/tables.php');
         
      	 $reg_failure = "";    

         $email    = trim(stripslashes(mysql_real_escape_string($data['email'])));         
         $password = trim(stripslashes(mysql_real_escape_string(md5($data['password']))));
         $password2 = trim(stripslashes(mysql_real_escape_string(md5($data['password2']))));
         $firstname = trim(stripslashes(mysql_real_escape_string($data['firstname'])));    
         $act_code = md5 ( uniqid ( rand() ) );
         $token    = time().uniqid();
		 		 
		 $checkemail = new CheckExist();
	
	     $checkemail->tableE     = $tbl_users;
	     $checkemail->conditionE = " UserEmail = '".$email."'  ";
	
	     $CheckData = $checkemail->exist();  

		 if(!preg_match('/^([a-zA-Z0-9])+([\.a-zA-Z0-9_-])*@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-]+)+/', $email))  $reg_failure = "Email not valid.";
		 elseif ( strlen($email) < 5 ) $reg_failure = "Email not valid.";
		 elseif ($CheckData > 0) $reg_failure = "Email already taken.";
		 elseif ($password != $password2 ) $reg_failure = "Passwords do not match. Please correct your information and try it again.";
		 elseif (strlen($data['password']) < 5 || strlen($data['password2']) < 5 ) $reg_failure = "Password is too short. Please correct your information and try it again.";
		 elseif (strlen($firstname) < 3 ) $reg_failure = "Firstname is too short. Please correct your information and try it again.";
		 
		 if ($reg_failure == "") {
                                                          
	         $user_register = new ModifyEntry();         
	         $user_register->table  = $tbl_users;
	         $user_register->cols   = 'UserToken, UserEmail, UserPass, firstname, activation_code, language';
	         $user_register->values = " '$token', '$email', '$password', '$firstname', '$act_code', 'en' ";
	
	         $user_register->insert();    
	         
	         unset($user_register);  
			 
			 /*
			 if (mysqli_errno() == 0) {
			 
				  $Header = "MIME-Version: 1.0\n";
				  $Header .= "Content-type: text/plain; charset=utf-8\n";
  				  $Header .= "From: noreply@happify.com";

  //$from    = "From: admin@wiwistud.de"; 

  $to = $_Sre_email; 

  $act_link = "index.php?do=activate_user&activation_code=";

  $subject = "Erfolgreiche Registrierung auf www.wiwistud.de"; 


  $message = "Activ";
			  
	
  mail($to, $subject, $message, $Header);*/
	         
	         $objResponse->assign("form_reg","style.display",'none');
	         $objResponse->assign("reg_success","style.display",'block');   
		 
		 }
		 
		 else {

	     	  $objResponse->assign("p_reg_failure","style.display",'block');         	
	    	  $objResponse->assign("p_reg_failure","innerHTML",$reg_failure);

		 }
		 
         return $objResponse;
          
  }

  $xajax->processRequest();    
  $xajax->printJavascript();

  unset($xajax);
  unset($objResponse);
  


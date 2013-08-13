<?php

 /* register new user */

  function registerUser( $data, $action ) {
  
         global $db;   	
	     global $debug_mode;
         
		 $objResponse = new xajaxResponse(); 

         include('settings/tables.php');
         
         $reg_failure = "";    
    
         $email    = trim(stripslashes(mysqli_real_escape_string($db, $data['email'])));   
         $firstname = trim(stripslashes(mysqli_real_escape_string($db, $data['firstname'])));
                         
         if ($action == 'register') {
               
             $password = trim(stripslashes(mysqli_real_escape_string($db, md5($data['password']))));
             $password2 = trim(stripslashes(mysqli_real_escape_string($db, md5($data['password2']))));

             $beta_code = trim(stripslashes(mysqli_real_escape_string($db, md5($data['betacode']))));
          		 
    		 //generate activation code    
             $act_code = md5 ( uniqid ( rand() ) );
             $token    = time().uniqid();
    		 
    		 //check if email is already registered		 
    		 $checkemail = new CheckExist();
    	
    	     $checkemail->tableE     = $tbl_users;
    	     $checkemail->conditionE = " UserEmail = '".$email."'  ";
    	
    	     $CheckData = $checkemail->exist();  
    
    		 //error handling and validation
    		 if(!preg_match('/^([a-zA-Z0-9])+([\.a-zA-Z0-9_-])*@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-]+)+/', $email))  $reg_failure = "Email not valid."; // TODO move string to language file
    		 elseif ( strlen($email) < 5 ) $reg_failure = "Email not valid."; // TODO move string to language file
    		 elseif ($CheckData > 0) $reg_failure = "Email already taken."; // TODO move string to language file
    		 elseif ($password != $password2 ) $reg_failure = "Passwords do not match. Please correct your information and try it again."; // TODO move string to language file
    		 elseif (strlen($data['password']) < 5 || strlen($data['password2']) < 5 ) $reg_failure = "Password is too short. Please correct your information and try it again."; // TODO move string to language file
    		 elseif (strlen($firstname) < 3 ) $reg_failure = "Firstname is too short. Please correct your information and try it again."; // TODO move string to language file
             elseif ($beta_code != 'X2DH38u3z') $reg_failure = "Beta Access Code not valid. Please correct your information and try it again.";
             
    		 //registration validation successful
    		 if ($reg_failure == "") {
                  
    			 //create new user in database                                             
    	         $user_register = new ModifyEntry();         
    	         $user_register->table  = $tbl_users;
    	         $user_register->cols   = 'UserToken, UserEmail, UserPass, firstname, activation_code, language';
    	         $user_register->values = " '$token', '$email', '$password', '$firstname', '$act_code', 'EN' ";
    	
    	         $user_register->insert();    
    	         
    
    			 if ($user_register->errno() == 0) {
    			 
    			      //send email confirmation with activation link to user
    				  $Header = "MIME-Version: 1.0\n";
    				  $Header .= "Content-type: text/plain; charset=utf-8\n";
      				  $Header .= "From: noreply@happify.com";
    
    				  //$from    = "From: admin@wiwistud.de"; 
    				  //activation.html?c=bebf08f7af79422ced07be79c2f2f5c0&t=13140575844e52ed70736d2
    				  $act_link = ROOT_DIR."logon/activation.html?c=".$act_code."&t=".$token;
    				
    				  $subject = "Activation link happify.com";
    				
    				  $message = "Activation link: ".$act_link;
    				  				  
    				  if ($debug_mode != "OFF") {
    				  	
    					    require("../phpmailer/class.phpmailer.php");
    						$mail = new PHPMailer(); 
    						$mail->IsSMTP(); // send via SMTP
    						//IsSMTP(); // send via SMTP
    						$mail->SMTPSecure = "ssl";                 // sets the prefix to the servier						
    						$mail->Host       = "smtp.gmail.com";      // sets GMAIL as the SMTP server
    						$mail->Port       = 465;  
    						$mail->SMTPDebug  = 0;    
    						$mail->SMTPAuth = true; // turn on SMTP authentication
    						$mail->Username = "de.stefan.richter@gmail.com"; // SMTP username
    						$mail->Password = "121DB413#"; // SMTP password
    						$webmaster_email = "noreply@happify.com"; //Reply to this email ID
    						//$email="username@domain.com"; // Recipients email ID
    						//$name=$firstname; // Recipient's name
    						//$mail->From = $webmaster_email;
    						//$mail->FromName = "Happify";
    						$mail->SetFrom($webmaster_email, "Happify");
    						$mail->AddAddress($email,$firstname);
    						//$mail->AddReplyTo($webmaster_email,"Webmaster");
    						//$mail->WordWrap = 50; // set word wrap
    						//$mail->AddAttachment("/var/tmp/file.tar.gz"); // attachment
    						//$mail->AddAttachment("/tmp/image.jpg", "new.jpg"); // attachment
    						//$mail->IsHTML(true); // send as HTML
    						$mail->Subject = $subject;
    						$mail->Body = $message; //HTML Body
    						$mail->AltBody = $message; //Text Body
    						$mail->Send();
    												
    				  } else mail($email, $subject, $message, $Header);
    
    	              $objResponse->assign("form_reg","style.display",'none');
    	              $objResponse->assign("reg_success","style.display",'block'); 
    						  
    			 	  unset($user_register);  
    			 		 
    			 }  
    
    			 else {
    			 	
    	     	    $objResponse->assign("p_reg_failure","style.display",'block');         	
    	    	    $objResponse->assign("p_reg_failure","innerHTML","Registration not successful. Please try again.");	// TODO move string to language file			
    				
    			 }
    		 
    		 }
    		 
    		 else {
    
    	     	  $objResponse->assign("p_reg_failure","style.display",'block');         	
    	    	  $objResponse->assign("p_reg_failure","innerHTML",$reg_failure);
    
    		 }
    		 
		 }

         else if ($action == 'notify') {

             //check if email is already registered      
             $checkemail = new CheckExist();
        
             $checkemail->tableE     = $tbl_notify;
             $checkemail->conditionE = " UserEmail = '".$email."'  ";
        
             $CheckData = $checkemail->exist();  
       
             //TODO why does it not work on server             
             if(!preg_match('/^([a-zA-Z0-9])+([\.a-zA-Z0-9_-])*@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-]+)+/', $email))  $reg_failure = "Email not valid."; // TODO move string to language file
             if ($CheckData > 0) $reg_failure = "Email already registered."; // TODO move string to language file
             
             //registration validation successful
             if ($reg_failure == "") {
                 
                 //$firstname = $data['firstname'];     
                 
                 //create new user in database                                             
                 $user_register = new ModifyEntry();         
                 $user_register->table  = $tbl_notify;
                 $user_register->cols   = 'UserEmail';
                 $user_register->values = " '".$email."' ";
        
                 $user_register->insert();    
    
                 if ($user_register->errno() == 0) {
                 
                      //send email confirmation with activation link to user
                      $Header = "MIME-Version: 1.0\n";
                      $Header .= "Content-type: text/plain; charset=utf-8\n";
                      $Header .= "From: noreply@myhappifier.info";

                      $subject = "myhappifier.info Launch";
                    
$message = "Hi! \r\n
  
Thank you for your registration. We will inform you as soon as Happify launches!\r\n\r\n
              
              
Until then: stay happy!";
                                      
                      if ($debug_mode != "OFF") {
                        
                            require("../phpmailer/class.phpmailer.php");
                            $mail = new PHPMailer(); 
                            $mail->IsSMTP(); // send via SMTP
                            //IsSMTP(); // send via SMTP
                            $mail->SMTPSecure = "ssl";                 // sets the prefix to the server                        
                            $mail->Host       = "smtp.gmail.com";      // sets GMAIL as the SMTP server
                            $mail->Port       = 465;  
                            $mail->SMTPDebug  = 0;    
                            $mail->SMTPAuth = true; // turn on SMTP authentication
                            $mail->Username = "de.stefan.richter@gmail.com"; // SMTP username
                            $mail->Password = "121DB413#"; // SMTP password
                            $webmaster_email = "noreply@happify.com"; //Reply to this email ID
                            //$email="username@domain.com"; // Recipients email ID
                            //$name=$firstname; // Recipient's name
                            //$mail->From = $webmaster_email;
                            //$mail->FromName = "Happify";
                            $mail->SetFrom($webmaster_email, "Happify");
                            $mail->AddAddress($email,$firstname);
                            //$mail->AddReplyTo($webmaster_email,"Webmaster");
                            //$mail->WordWrap = 50; // set word wrap
                            //$mail->AddAttachment("/var/tmp/file.tar.gz"); // attachment
                            //$mail->AddAttachment("/tmp/image.jpg", "new.jpg"); // attachment
                            //$mail->IsHTML(true); // send as HTML
                            $mail->Subject = $subject;
                            $mail->Body = $message; //HTML Body
                            $mail->AltBody = $message; //Text Body
                            $mail->Send();
                      
                      //mail does not work                              
                      } else mail($email, $subject, $message, $Header);
    
                      $objResponse->assign("form_reg","style.display",'none');
                      $objResponse->assign("reg_success","style.display",'block'); 
                              
                      unset($user_register);  
                         
                 }  
    
                 else {
                    
                    $objResponse->assign("p_reg_failure","style.display",'block');          
                    $objResponse->assign("p_reg_failure","innerHTML","Registration not successful. Please try again."); // TODO move string to language file            
                    
                 } 
                 
             }

             else {
    
                  $objResponse->assign("p_reg_failure","style.display",'block');            
                  $objResponse->assign("p_reg_failure","innerHTML",$reg_failure);
    
             }
                
         }
		 
         return $objResponse;
          
  }

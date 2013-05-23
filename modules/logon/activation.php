<?php 

  /* Activation of a new account, i.e. what happens after the user clicked on the confirmation link in the email */

  //activation.html?c=bebf08f7af79422ced07be79c2f2f5c0&t=13140575844e52ed70736d2
  
  //User LOGIN == FALSE
  if ($logon_true != 1) {
 
        $tpl->assign('e', "");  
	  
        if ( isset($_GET['c']) && isset($_GET['t']) )  { 
             
			 //check if code and token exist
             $validity_check = new CheckExist();
             $validity_check->tableE = $tbl_users;
             $validity_check->conditionE = "UserToken = '".$_GET['t']."' && activation_code = '".$_GET['c']."' ";
             $validity = $validity_check->exist();
      
             $tpl->assign('validity', $validity);
             
			 //activation valid
             if ($validity == 1) {
             	
				  //remove activation flag in database				      
		          $upd_data = new ModifyEntry();
		          $upd_data->table     = $tbl_users;
		          $upd_data->condition = " UserToken = '".$_GET['t']."' ";
		          
		          $upd_data->changes   = " activation_code = '' ";
		    
		          $upd_data->update(); 
		          unset($upd_data);  
                     
            	  $tpl->assign('e', "success");                  
             
             }
			 
			 //activation not valid
			 else  $tpl->assign('e', "failure");    
                 
        }
      
	    //URL not correct
        else $tpl->display("errorpage.tpl");
  
  }     
  
  //User LOGIN == TRUE
  else $tpl->assign('e', "nopermission"); 
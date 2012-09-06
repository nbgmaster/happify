<?php 

  //activation.html?c=bebf08f7af79422ced07be79c2f2f5c0&t=13140575844e52ed70736d2
  
  if ($logon_true != 1) {
 
        $tpl->assign('e', "");  
	  
        if ( isset($_GET['c']) && isset($_GET['t']) )  { 
             
             $validity_check = new CheckExist();
             $validity_check->tableE = $tbl_users;
             $validity_check->conditionE = "UserToken = '".$_GET['t']."' && activation_code = '".$_GET['c']."' ";
             $validity = $validity_check->exist();
      
             $tpl->assign('validity', $validity);
             
             if ($validity == 1) {
             					      
		          $upd_data = new ModifyEntry();
		          $upd_data->table     = $tbl_users;
		          $upd_data->condition = " UserToken = '".$_GET['t']."' ";
		          
		          $upd_data->changes   = " activation_code = '' ";
		    
		          $upd_data->update(); 
		          unset($upd_data);  
                     
            	  $tpl->assign('e', "success");                  
             
             }
			 
			 else  $tpl->assign('e', "failure");    
                 
        }
      
        else $tpl->display("errorpage.tpl");
  
  }     
  
  else $tpl->assign('e', "nopermission"); 
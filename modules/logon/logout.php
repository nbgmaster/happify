<?php

     /* LOGOUT User */

	  //TODO implement; check if exists in memcache and then delete
	  if (mod_memcache == 1) $memcache->delete('user_data_'.$l["token"]); 
	  else unset($_SESSION['$mem_key1']);
	      
	  /* Create Object :: EXIST */
	
	     $logon = new CheckExist();
	
	  /******************************************/
	
	 
	  /* Logout :: Delete Cookie */
	
	     $logon->email = '';
	     $logon->pw    = '';
	
	     $logon->cookieset('ly');
	 
	     //$tpl->display("logon/login.tpl");
	
	     unset($user_data);
	     unset($logon);
	     session_destroy();
	
	     header ("Location:".ROOT_DIR);
	     
	  /******************************************/
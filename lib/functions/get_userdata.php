<?php 

      if ( $user_data == "" ) { 
      	
		   $token_identifier = mysql_real_escape_string($l['token']); 

           $usr_data = new SelectEntrys();
           //$usr_data->token   = $l["token"];
           $usr_data->cols    = 'ID, UserToken, UserEmail, UserPass, firstname, language, last_online_time, description, personal_goal';
           $usr_data->condition =  "UserToken = '$token_identifier' ";
           $usr_data->multiSelect = '1';       

           $ay_user = $usr_data->row();
 
           unset($usr_data); 
                                          
           if (mod_memcache == 1)  $memcache->set($mem_key1, $ay_user[0], false, memcache_duration);
		   else $_SESSION['$mem_key1'] = $ay_user[0];
           
           $user_data = $ay_user[0];
		   
      } 
	  
	  //print_r($user_data);

      $tpl->assign('usr_data', $user_data); 

      $diff_actual = $timestamp - strtotime($user_data['last_online_time']);
      
      if ($diff_actual > diff_max) {
      
          $upd_data = new ModifyEntry();
          $upd_data->table     = $tbl_users;
          $upd_data->condition = " ID = '".$user_data['ID']."' ";
          
          $upd_data->changes   = " last_online_time = '$mysqldate' ";
    
          $upd_data->update(); 
          unset($upd_data);   
          
          $user_data['last_online_time'] = $mysqldate;
		  
		  if (mod_memcache == 1)  $memcache->replace($mem_key1, $user_data, false); 
		  else $_SESSION['$mem_key1'] = $user_data;
		  					  
	  }   	
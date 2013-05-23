<?php

  /* XAJAX - asynchronous call: Update data entries */
  
  function updatedata( $table, $part, $data, $id = NULL ) {

     //global $tpl;
     global $memcache;
     global $l;
     global $tpl;
     global $user_data;
     	  
     $objResponse = new xajaxResponse();  
   
     //include('settings/template.php');   
     include('settings/tables.php');    

     //update progress state of a goal
	 if ($table == $tbl_goals && $part == 'progress') {

	       $goals = new ModifyEntry();
	       $goals->table  = $table;
					   
		   switch ($data) {
			    case 0: $progress = 0; break;
			    case 1: $progress = 20; break;
			    case 2: $progress = 40; break;				
			    case 3: $progress = 50; break;
			    case 4: $progress = 60; break;
			    case 5: $progress = 80;	break;
			    case 6: $progress = 100; break;	
		   }
					   
		   $goals->changes   = " progress = $progress ";
           $goals->condition = " ID = '$id' ";

	       $goals->update();  
	       unset($goals);
		   
		   //no refresh necessary as dropdown has latest change
		           
      }
     
      //update description of personal profile on main.tpl
      if ($table == $tbl_users && $part == 'update_desc') {
         
           $update_desc = new ModifyEntry();
           $update_desc->table  = $table;
           
           //$desc_me = mysql_real_escape_string($data['desc_me']);
           
           $update_desc->changes   = " description = '".$data['desc_me']."' ";
           $update_desc->condition = " ID = '".$user_data['ID']."' ";

           $update_desc->update();  
           unset($update_desc);

           //update cached user object

           // $mem_key1  = "user_data_".$l["token"];           
 
           $user_data['description'] = $data['desc_me'];
		  
		   if (mod_memcache == 1)  $memcache->replace($mem_key1, $user_data, false); 
		   else $_SESSION['$mem_key1'] = $user_data;
		   
		   //TODO refresh view
                    
      }

	 
	  return $objResponse;  
       
  }
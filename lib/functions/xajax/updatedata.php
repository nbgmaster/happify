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

	 if ( $user_data == '' ) require_once('lib/functions/get_userdata.php'); 

     //update progress state of a goal
	 if ($table == $tbl_goals && $part == 'progress') {
	 	
		   require_once('lib/functions/convert_date.php'); 
		 
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
		   
		   $achieved_date = date( 'Y-m-d H:i:s', time() );
		   
		   if ($progress == 100) $goals->changes   = " progress = '".$progress."', achieved = '".$achieved_date."' ";
		   else  $goals->changes   = " progress = '".$progress."', achieved = '' ";

           $goals->condition = " ID = '$id' ";

	       $goals->update();  
	       unset($goals);
		   
		   $ay_goals["progress"] = $progress;
		   $ay_goals["achieved"] = convert_date($achieved_date, 'goals');
		   
		   $tpl->assign('goal', $ay_goals);
					   	   
           $html = $tpl->fetch("modules/improve/goals/achieved.tpl");   
           $objResponse->assign("achieved_".$id,"innerHTML",$html);   
		   
		   
		   //no refresh necessary as dropdown has latest change
		           
      }


     //update goal entry
	 elseif ($table == $tbl_goals && $part == 'update_entry') {
	 	
	       $goals = new ModifyEntry();
	       $goals->table  = $table;
		   
		   $ay_entry['entry_org'] = strip_tags($data);
					   	   
		   // $diary->changes   = " entry = '".$data['edit_entry_inp']."' ";
	  	   $goals->changes   = " goal = '".$ay_entry['entry_org']."' ";
           $goals->condition = " ID = '$id' ";

	       $goals->update();  
	       unset($goals);
		   			
		   $objResponse->setReturnValue($ay_entry);
		             
      }

     //update thought entry
	 elseif ($table == $tbl_distorted_thoughts && $part == 'update_entry') {
	 	
	       $thoughts = new ModifyEntry();
	       $thoughts->table  = $table;
		   
		   $get_values = explode("%%%!", $data);
		   
		   $ay_entry['thought'] = strip_tags($get_values[0]);
		   $ay_entry['response'] = strip_tags($get_values[1]);
		   $ay_entry['action'] = strip_tags($get_values[2]);
		   		   					   	   
		   // $diary->changes   = " entry = '".$data['edit_entry_inp']."' ";
	  	   $thoughts->changes   = " thought = '".$ay_entry['thought']."', response = '".$ay_entry['response']."', action = '".$ay_entry['action']."' ";
           $thoughts->condition = " ID = '$id' ";

	       $thoughts->update();  
	       unset($thoughts);
		   			
		   $objResponse->setReturnValue($ay_entry);
		             
      }
      
     //update thought entry status
	 elseif ($table == $tbl_distorted_thoughts && $part == 'update_status') {
	 	
	       $thoughts = new ModifyEntry();
	       $thoughts->table  = $table;
		   
		   // $diary->changes   = " entry = '".$data['edit_entry_inp']."' ";
	  	   $thoughts->changes   = " status = '".$data."' ";
           $thoughts->condition = " ID = '$id' ";

	       $thoughts->update();  
	       unset($thoughts);
		   					             
      }	  
	     	 		      
      //update description of personal profile on main.tpl
	  elseif ($table == $tbl_users && $part == 'update_desc') {
         
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

     //update diary entry
	 elseif ($table == $tbl_diary && $part == 'update_entry') {
	 	
	       $diary = new ModifyEntry();
	       $diary->table  = $table;
		   
		   $ay_entry['entry_org'] = strip_tags($data);
					   	   
		   // $diary->changes   = " entry = '".$data['edit_entry_inp']."' ";
	  	   $diary->changes   = " entry = '".$ay_entry['entry_org']."' ";
           $diary->condition = " ID = '$id' ";

	       $diary->update();  
	       unset($diary);
		   
		   // The Regular Expression filter
		   $reg_exUrl = "!((?:www|http://)[^ ]+)!";
		   
		   $ay_entry['entry_new_string'] = $ay_entry['entry_org'];
			 
		   // Check if there is a url in the text
		   if(preg_match($reg_exUrl, $ay_entry['entry_org'], $url)) {
					
					  // make the urls hyper links
					  if (substr($url[0], 0, 3) == 'www' )  $ay_entry['entry_new_string']  = preg_replace($reg_exUrl, '<a href="http://'.$url[0].'" target="_blank">'.$url[0].'</a>', $ay_entry['entry_org']);
					  else  								$ay_entry['entry_new_string']  = preg_replace($reg_exUrl, '<a href="'.$url[0].'" target="_blank">'.$url[0].'</a>', $ay_entry['entry_org']);
					
		  }
		   					
		  $objResponse->setReturnValue($ay_entry);
		             
      }
     	 
	  return $objResponse;  
       
  }
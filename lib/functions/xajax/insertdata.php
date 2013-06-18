<?php

  /* XAJAX - asynchronous call, initiated in ajax_requests.php: 
   * insert data und display updated data without refreshing the complete page */
  
  function insertdata( $table, $data, $special = 0 ) {
  
     //global $tpl;
     global $memcache;
	 global $l;
	 global $tpl;
	 global $user_data;
		  
     $objResponse = new xajaxResponse();  
   
     //include('settings/template.php');   
     include('settings/tables.php');    

	 if ( $user_data == '' || !isset($user_data) ) require_once('lib/functions/get_userdata.php'); 

     //enter new diary entry
	 if ($table == $tbl_diary) {
	 	
		  if ($special == 1) {
		  	
		           $html = $tpl->fetch("modules/improve/diary/add_pin.tpl"); 
			   //         $objResponse->assign("add_pin","style.className",'pin');   
				     
		           $objResponse->assign("add_pin","innerHTML",$html); 
				   
				
				   $objResponse->includeScript("js/pinterest.js");
		           $objResponse->call("m_reload");
			   				     	 
		  }
		  
		  else {
     
			  if ( $data['image_file'] != '' )  $objResponse->script("document.forms['insert'].submit();"); 
			  
			  else {
	
			       $mysqldate = date( 'Y-m-d H:i:s', time() );
				 			 
		  		   $diary_note = mysql_real_escape_string(strip_tags($data['note']));
			
			       //insert new entry
			       $diary = new ModifyEntry();
			       $diary->table  = $table;
			       $diary->cols   = 'userID, entry, date';
			       $diary->values = " '".$user_data['ID']."', '".$diary_note."', '".$mysqldate."' ";
			
			       $diary->insert();  
			       unset($diary);
				     
			     
				   //TODO check if first entry and if yes update user array with start_month and start_year
				   
				   //refresh content		 
			       include("lib/functions/fetch_diary.php");
			       $tpl->assign('ay_diary', $ay_diary);
		
			 	   $tpl->assign('at_least_one_entry', 1);
				   //else $tpl->assign('at_least_one_entry', 0);
				   //TODO why is this needed now!?
		 	       $tpl->assign('user_data', $user_data); 
			   	   
		           $html = $tpl->fetch("modules/home/diary_entries.tpl");   
		           $objResponse->assign("diary_entries","innerHTML",$html);   
		           $objResponse->assign("add_pin","innerHTML",'');   
				   				   
				   $objResponse->includeScript("js/pinterest.js");
		           $objResponse->call("m_reload");
 
		       }

	  	  }
			  
	 }

     //insert new goal
	 elseif ($table == $tbl_goals) {
     
	       $mysqldate = date( 'Y-m-d H:i:s', time() );
		 			 
  		   $note = strip_tags(mysql_real_escape_string($data['note']));

	       //insert new entry	
	       $goals = new ModifyEntry();
	       $goals->table  = $table;
	       $goals->cols   = 'userID, goal, created';
	       $goals->values = " '".$user_data['ID']."', '".$note."', '".$mysqldate."' ";
	
	       $goals->insert();  
	       unset($goals);

		   //refresh content			   		 
           $html1 = $tpl->fetch("modules/improve/goals/sortfields.tpl");   
           $objResponse->assign("sortfields","innerHTML",$html1);   
		   
		   include("lib/functions/fetch_goals.php");
	       $tpl->assign('ay_goals', $ay_goals);
					   	   
           $html2 = $tpl->fetch("modules/improve/goals/goal_entries.tpl");   
           $objResponse->assign("goal_entries","innerHTML",$html2);   
		   
		   $objResponse->call("reset_input");
	   
	 }

     //create new thought entry
	 elseif ($table == $tbl_distorted_thoughts) {
     
	       $mysqldate = date( 'Y-m-d H:i:s', time() );
		 			 
  		   $thought  = strip_tags(mysql_real_escape_string($data['thought']));
  		   $response = strip_tags(mysql_real_escape_string($data['response']));
  		   $c_action = strip_tags(mysql_real_escape_string($data['c_action']));
		   		   
	       //insert new entry	
	       $thoughts = new ModifyEntry();
	       $thoughts->table  = $table;
	       $thoughts->cols   = 'userID, thought, response, action, created';
	       $thoughts->values = " '".$user_data['ID']."', '".$thought."', '".$response."', '".$c_action."', '".$mysqldate."' ";
	
	       $thoughts->insert();  
	       unset($thoughts);

		   //refresh content			   		 
	       include("lib/functions/fetch_thoughts.php");
	       $tpl->assign('ay_thoughts', $ay_thoughts);
					   	   
           $html = $tpl->fetch("modules/improve/distorted_thoughts/thought_entries.tpl");   
           $objResponse->assign("thought_entries","innerHTML",$html);   
		   
		   $objResponse->call("reset_input");
	   
	 }

     //enter new bd or da graph data	 	 
	 elseif ($table == $tbl_da_scale_results || $table == $tbl_bd_scale_results) {
	 	
		$i = 0;
		$dataValid = 1;
		 
	       $mysqldate = date( 'Y-m-d H:i:s', time() );
		 
		   //check if all items have been answered
		   for($i=1; $i<=$data['items_total']; $i++) {
		   	
		   	   if (!isset($data[$i]))	{
		   	       $objResponse->alert('Please answer all items'); // TODO put string in language file
				   $dataValid = 0;
			       break;
		       }
		   }
		   
		   //TODO store aggregated values in user table
		   //all items have been answered
		   if ($dataValid == 1) {   

				   //insert new entry
		           $scale_data = new ModifyEntry();
			       $scale_data->table  = $table;
				   			  			 
				   for($i=1; $i<=$data['items_total']; $i++) {
				   	
					   if (isset($data[$i]))	{
					  
					       $scale_data->cols   = 'userID, itemID, value, date';
					       $scale_data->values = " '".$user_data['ID']."', '".$i."', '".$data[$i]."', '".$mysqldate."' ";
					
					       $scale_data->insert();  
			
					   }
					   
					   if($scale_data->errno() > 0) break; 
					   
				   }
				   
				       				 
		   }
 
 		   //update cached data in memcache or session
 			                                       
           //$l["token"] = substr($_COOKIE["l"], 3, -35);  		   
		   if ( $table == $tbl_da_scale_results ) {
		   	
	    		$mem_key2  = "da_scale_data_".$l["token"];
	    		$mem_key2a = "da_scale_sep_strings_".$l["token"];
	    		$mem_key2b = "da_scale_sep_dates_".$l["token"];
		   	
			    if (mod_memcache == 1) {
			   		$memcache->delete($mem_key2);        
			   		$memcache->delete($mem_key2a);    
			   		$memcache->delete($mem_key2b);    
				}
				else {					
					unset($_SESSION['$mem_key2']);
			        unset($_SESSION['$mem_key2a']);
			        unset($_SESSION['$mem_key2b']);									
				}
				
		   }
		   
		   if ( $table == $tbl_bd_scale_results ) {
		   	
	    		$mem_key3 = "bd_scale_data_".$l["token"];
			   		   					   		
			   	if (mod_memcache == 1) $memcache->delete($mem_key3);   
				else unset($_SESSION['$mem_key3']);	
						   	
		   }     
		  
		   //redirect to overview/result page	   						
		   if ($dataValid == 1 && $scale_data->errno() == 0 && $table == $tbl_da_scale_results) $objResponse->redirect(ROOT_DIR.'analyze/da_scale/index.html');
		   if ($dataValid == 1 && $scale_data->errno() == 0 && $table == $tbl_bd_scale_results) $objResponse->redirect(ROOT_DIR.'analyze/bd_scale/index.html');
		   		   
		   unset($scale_data);					 
		   
	 }
	 	       
     return $objResponse;  
               
  }
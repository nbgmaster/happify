<?php

  /* XAJAX - asynchronous call, initiated in ajax_requests.php: 
   * insert data und display updated data without refreshing the complete page */
  
  function insertdata( $table, $data ) {
  
     //global $tpl;
     global $memcache;
	 global $l;
	 global $tpl;
	 global $user_data;
		  
     $objResponse = new xajaxResponse();  
   
     //include('settings/template.php');   
     include('settings/tables.php');    

	 if ($table == $tbl_diary) {
     
	       $mysqldate = date( 'Y-m-d H:i:s', time() );
		 			 
  		   $diary_note = mysql_real_escape_string($data['note']);
	
	       //insert new entry
	       $diary = new ModifyEntry();
	       $diary->table  = $table;
	       $diary->cols   = 'userID, entry, date';
	       $diary->values = " '".$user_data['ID']."', '".$diary_note."', '".$mysqldate."' ";
	
	       $diary->insert();  
	       unset($diary);
		   
		   //refresh content		 
	       include("lib/functions/fetch_diary.php");
	       $tpl->assign('ay_diary', $ay_diary);
			   	   
           $html = $tpl->fetch("modules/home/diary_entries.tpl");   
           $objResponse->assign("diary_entries","innerHTML",$html);   
	   
	 }

	 if ($table == $tbl_goals) {
     
	       $mysqldate = date( 'Y-m-d H:i:s', time() );
		 			 
  		   $note = mysql_real_escape_string($data['note']);

	       //insert new entry	
	       $goals = new ModifyEntry();
	       $goals->table  = $table;
	       $goals->cols   = 'userID, goal, created';
	       $goals->values = " '".$user_data['ID']."', '".$note."', '".$mysqldate."' ";
	
	       $goals->insert();  
	       unset($goals);

		   //refresh content			   		 
	       include("lib/functions/fetch_goals.php");
	       $tpl->assign('ay_goals', $ay_goals);
					   	   
           $html = $tpl->fetch("modules/improve/goals/goal_entries.tpl");   
           $objResponse->assign("goal_entries","innerHTML",$html);   
	   
	 }
	 
	 if ($table == $tbl_da_scale_results || $table == $tbl_bd_scale_results) {
	 	
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
		   
		   if ( $table == $tbl_bd_scale_results && mod_memcache == 1 ) {
		   	
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
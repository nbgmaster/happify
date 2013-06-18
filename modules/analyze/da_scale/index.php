<?php

   /* Dysfunctional Attitude Scale
    * delete entries and retrieve all entries
    * displaying the results (result.php) is initiated in the template file index.tpl */

     //delete item
	 if ( !empty($_POST['submit_del']) )  { 
  
          $del_scale            = new ModifyEntry();
          $del_scale->table     = $tbl_da_scale_results;
          $del_scale->condition   = "userID = '".$user_data['ID']."' && date = '".$_POST['date_to_delete']."' ";
 
          $del_scale->delete();

          unset($del_scale);
		  
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
  
		  header ("Location:".ROOT_DIR."analyze/da_scale/index.html");
		  
    }

	//if result object is not cached  
    if ($da_scale_data == "") {
    	
	     $da_scale_c            = new SelectEntrys();
	     $da_scale_c->cols      = "date";
		 $da_scale_c->distinct  = 1;
	     $da_scale_c->table     = $tbl_da_scale_results;
		 $da_scale_c->condition =  "userID = '".$user_data['ID']."' ";
	     $da_scale_c->order     = 'date';
	     $da_scale_c->multiSelect     = 1;
	     $da_scale_dates = $da_scale_c->row();
		 
		 $date_string = "";
	
	     if (!isset($da_scale_dates[0])) $total_entries = 0;
		 else $total_entries = count($da_scale_dates);

		//retrieve arrays of dates for selection menu	
		 if ($total_entries > 1) {
		 
			 $select_dates[] = "Show All";
			 foreach($da_scale_dates as $key => $value) $select_dates[] = substr($value["date"],0,10); 
		
		 }

	     //sum up points for total score for each date entry		 
		 if (isset($da_scale_dates[0])) {  
		 
			 $da_scale_r = new SelectEntrys();	 
	
			 if ($total_entries > 0) {
	 
					 for ($i=1;$i<=$total_entries;$i++) {
					 	
						 $x = $i-1;
					 	
					     $da_scale_r->cols      = "itemID, value, date";
					     $da_scale_r->table     = $tbl_da_scale_results;
						 $da_scale_r->condition =  "userID = '".$user_data['ID']."' && date = '".$da_scale_dates[$x]['date']."'";
					     $da_scale_r->order     = 'itemID';
					     $da_scale_r->multiSelect     = 1;
					     $ay_items = $da_scale_r->row();
								
						$approval        =  $ay_items[0]['value'] + $ay_items[1]['value'] + $ay_items[2]['value'] + $ay_items[3]['value'] + $ay_items[4]['value'];	
						$love            =  $ay_items[5]['value'] + $ay_items[6]['value'] + $ay_items[7]['value'] + $ay_items[8]['value'] + $ay_items[9]['value'];		 
						$achievement     =  $ay_items[10]['value'] + $ay_items[11]['value'] + $ay_items[12]['value'] + $ay_items[13]['value'] + $ay_items[14]['value'];		 
					 
						$perfectionism   =  $ay_items[15]['value'] + $ay_items[16]['value'] + $ay_items[17]['value'] + $ay_items[18]['value'] + $ay_items[19]['value'];		 
						$entitlement     =  $ay_items[20]['value'] + $ay_items[21]['value'] + $ay_items[22]['value'] + $ay_items[23]['value'] + $ay_items[24]['value'];		 
						$omnipotence     =  $ay_items[25]['value'] + $ay_items[26]['value'] + $ay_items[27]['value'] + $ay_items[28]['value'] + $ay_items[29]['value'];		 
						$autonomy        =  $ay_items[30]['value'] + $ay_items[31]['value'] + $ay_items[32]['value'] + $ay_items[33]['value'] + $ay_items[34]['value'];		 
					
						$datay = Array($approval, $love, $achievement, $perfectionism, $entitlement, $omnipotence, $autonomy); 	 	 
					
					    //$datay1 = serialize($datay1); 
	
						$da_scale_data .= "&datay".$i."=".serialize($datay)."&date".$i."=".substr($da_scale_dates[$x]['date'],0,10);
						
						$da_scale_sep_strings[$i] = "&datay".$i."=".serialize($datay)."&date".$i."=".substr($da_scale_dates[$x]['date'],0,10);  
						$da_scale_sep_dates[$i] = $da_scale_dates[$x]['date'];
					
						unset($ay_items);
						unset($datay);
						
					}
	
				    $last_item = $total_entries - 1;
					$latest_entrydate = strtotime($da_scale_dates[$last_item]["date"]);
					
		  	 }
	
			//$mem_key2 = "da_scale_data_".$l["token"];   	   
		    //$mem_key2a = "da_scale_sep_strings_".$l["token"]; 	   
		    //$mem_key2b = "da_scale_sep_dates_".$l["token"];    
			         
		    if (mod_memcache == 1) {
		
		       $memcache->set($mem_key2, $da_scale_data, false, memcache_duration);    
		       $memcache->set($mem_key2a, $da_scale_sep_strings, false, memcache_duration);   
		       $memcache->set($mem_key2b, $da_scale_sep_dates, false, memcache_duration);
		   
		//print_r($da_scale_sep_strings);
				
		    }
			
			else {
				
				$_SESSION['$mem_key2']  = $da_scale_data;
				$_SESSION['$mem_key2a'] = $da_scale_sep_strings;
				$_SESSION['$mem_key2b'] = $da_scale_sep_dates;
								
			}
		
	    }

    }
 
    else {
    					
		$get_total_entries = explode('&', $da_scale_data);				
	    $total_entries = count($get_total_entries);

		$last_item = $total_entries - 1;
				
		$total_entries = ($total_entries - 1) / 2; 
	
	//print_r($get_total_entries);

	    //check time_ban - get latest entry date
		$latest_entrydate = strtotime($get_total_entries[$last_item]);
		
		//retrieve arrays of dates for selection menu
	    if ($total_entries > 1) {
		 
			 $select_dates[] = "Show All";
			 foreach($get_total_entries as $key => $value) 
			 	if (substr($value,0,4) == 'date') $select_dates[] = substr($value,6,10); 
	 
	    }
						
	}

	//check time ban
	if ( time() - $latest_entrydate < da_min_waittime) $tpl->assign('time_ban', 1);				
	else  $tpl->assign('time_ban', 0);		
	
	$tpl->assign('ay_dates', $select_dates);
			
	$tpl->assign('datay', $da_scale_data);
	

	//start score interpretation calculation here
	
	$get_scores = explode('&',$da_scale_data);
	
	//NOTE: attention: works now with limit of 5 datasets, but with no more than 9!
	//last item in array is always latest entry
	$count = 1;
	foreach ($get_scores as $key => $value) {
		
		if ($key & 1) {
			$scores[$count] = unserialize(substr($value,7));
			$count++;
		}
		
	}
	
	unset($key);
	unset($value);
	//print_r($scores);
	
	if ($total_entries > 1) {
			
			$approval      = -11; $last_is_highest['approval'] = false; 
			$love          = -11; $last_is_highest['love'] = false; 
			$achievement   = -11; $last_is_highest['achievement'] = false; 	 		
			$perfectionism = -11; $last_is_highest['perfectionism'] = false; 
			$entitlement   = -11; $last_is_highest['entitlement'] = false; 
			$omnipotence   = -11; $last_is_highest['omnipotence'] = false; 
			$autonomy      = -11; $last_is_highest['autonomy'] = false; 

		$count = 1;			
		foreach ($scores as $value) {
			
			//calculate improvement compared to first test
			if ($count == 1) {
				$first_val['approval'] = $value[0]; 
			    $first_val['love'] = $value[1]; 
				$first_val['achievement'] = $value[2]; 
			    $first_val['perfectionism'] = $value[3]; 
				$first_val['entitlement'] = $value[4]; 
			    $first_val['omnipotence'] = $value[5]; 
			    $first_val['autonomy'] = $value[6]; 
			}
																					
			if ($count == $total_entries) {
				$last_val['approval'] = $value[0]; 
				$last_val['love'] = $value[1]; 
				$last_val['achievement'] = $value[2]; 			      				      				      
				$last_val['perfectionism'] = $value[3]; 
			    $last_val['entitlement'] = $value[4]; 
				$last_val['omnipotence'] = $value[5]; 
			    $last_val['autonomy'] = $value[6];
			}				      							
														
			//check if latest score is highest overall score
			if ($value[0] > $approval) {
				if ($count == $total_entries) $last_is_highest['approval'] = true;       
				$approval  = $value[0]; 
		    }
			
			if ($value[1] > $love) {
				if ($count == $total_entries) $last_is_highest['love'] = true;            
				$love      = $value[1]; 
			}
			
			if ($value[2] > $achievement) {
				 if ($count == $total_entries)  $last_is_highest['achievement'] = true;     
				 $achievement = $value[2]; 
			}
			
			if ($value[3] > $perfectionism) {
				 if ($count == $total_entries)  $last_is_highest['perfectionism'] = true; 
				 $perfectionism = $value[3]; 
			}
			
			if ($value[4] > $entitlement) {
				if ($count == $total_entries)  $last_is_highest['entitlement'] = true;  
				$entitlement = $value[4]; 
			}
			
			if ($value[5] > $omnipotence) {
				 if ($count == $total_entries) $last_is_highest['omnipotence'] = true;  
				 $omnipotence = $value[5]; 
			}
			
			if ($value[6] > $autonomy) {
				 if ($count == $total_entries) $last_is_highest['autonomy'] = true;    
				 $autonomy  = $value[6]; 
			}
															
			$count++;

		}

		//calculate improvement compared to first test
		$change['approval'] = round(- (  ($first_val['approval']+10)  - ($last_val['approval']+10)   ) /20*100);
		$change['love'] = round(- (  ($first_val['love']+10)  - ($last_val['love']+10)   ) /20*100);
		$change['achievement'] = round(- (  ($first_val['achievement']+10)  - ($last_val['achievement']+10)   ) /20*100);
		$change['perfectionism'] = round(- (  ($first_val['perfectionism']+10)  - ($last_val['perfectionism']+10)   ) /20*100);
		$change['entitlement'] = round(- (  ($first_val['entitlement']+10)  - ($last_val['entitlement']+10)   ) /20*100);
		$change['omnipotence'] = round(- (  ($first_val['omnipotence']+10)  - ($last_val['omnipotence']+10)   ) /20*100);
		$change['autonomy'] = round(- (  ($first_val['autonomy']+10)  - ($last_val['autonomy']+10)   ) /20*100);
					
		$tpl->assign('change', $change);
		$tpl->assign('last_is_highest', $last_is_highest);
													
	}
	
	
	$tpl->assign('data_sep_string', $da_scale_sep_strings);
	$tpl->assign('data_sep_dates', $da_scale_sep_dates);
				
	$tpl->assign('total_entries', $total_entries);
	$tpl->assign('max_items_da_scale', max_items_da_scale);

	$tpl->assign('da_score_interpretation', $da_score_interpretation);
	
	$tpl->assign('scores', $scores);
			
?>

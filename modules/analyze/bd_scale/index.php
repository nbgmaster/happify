<?php

   /* Burns Depression Scale
    * delete entries and retrieve all entries
    * displaying the results (result.php) is initiated in the template file index.tpl */

    //delete item
    
    //print_r($user_data);
    //TODO TESTING!!
    if ( !empty($_POST['submit_del']) )  { 
		  $del_scale            = new ModifyEntry();
          $del_scale->table     = $tbl_bd_scale_results;
          $del_scale->condition   = "userID = '".$user_data['ID']."' && date = '".$_POST['date_to_delete']."' ";
 
          $del_scale->delete();

          unset($del_scale);
		  
    	  $bd_scale_scores_ser = explode('&fscores=', $bd_scale_data);
		  $get_latest_date = unserialize(substr($bd_scale_scores_ser[0],7));
		  		  	
	      $latest_date = end($get_latest_date);

		  $bd_scale_scores = unserialize($bd_scale_scores_ser[1]);
	      $latest_key = array_keys($bd_scale_scores);

		  $new_latest_score = "";	
			  			  		  
		  //only if latest entry is deleted and at least 2 entries exist we have to update the aggregated numbers
          if ($latest_date['date'] == $_POST['date_to_delete'] && end($latest_key) > 0) $new_latest_score = $bd_scale_scores[end($latest_key) - 1];
		  else if (end($latest_key) == 0) $new_latest_score = -1;
		
		  if ($new_latest_score != "") {
		           	
	     	  $scale_data = new ModifyEntry();
		  		  			   
		      $scale_data->table  = $tbl_users;	
			   
			  if ($new_latest_score == -1) $scale_data->changes   = " bd_latest_score = '".$new_latest_score."' ";
			  else $scale_data->changes   = " bd_latest_score = '500' ";
			  $scale_data->condition = " ID = '".$user_data['ID']."' ";
			    
			  $scale_data->update(); 
			   
			  unset($scale_data);			  
			 		          			            
	          $user_data['bd_latest_score'] = $new_latest_score;

			  if (mod_memcache == 1)  $memcache->replace($mem_key1, $user_data, false); 
			  else $_SESSION['$mem_key1'] = $user_data;
			  			  			  	
		  }
				   		
  	      if (mod_memcache == 1) $memcache->delete($mem_key3);   
		  else unset($_SESSION['$mem_key3']);
						   	   		  
		  header ("Location:".ROOT_DIR."analyze/bd_scale");
		  
    }

	$tpl->assign('time_ban', 0);	

	//if result object is not cached	
	if ($bd_scale_data == "") {

     $bd_scale_c            = new SelectEntrys();
     $bd_scale_c->cols      = "date";
	 $bd_scale_c->distinct  = 1;
     $bd_scale_c->table     = $tbl_bd_scale_results;
	 $bd_scale_c->condition =  "userID = '".$user_data['ID']."' ";
     $bd_scale_c->order     = 'date';
     $bd_scale_c->multiSelect     = 1;
     $bd_scale_dates = $bd_scale_c->row();

     if (!isset($bd_scale_dates[0])) $total_entries = 0;
	 else $total_entries = count($bd_scale_dates); 
	 
	 $date_string = "";

	     //if at least one entry exists
		 if (isset($bd_scale_dates[0])) { 
	
			 $bd_scale_r = new SelectEntrys();	 
	
			 //$select_dates[] = "";
			 //$final_scores[] = '';
			 
			 //sum up points for total score for each date entry
			 if ($total_entries > 0) {

				   //  foreach($bd_scale_dates as $key => $value) $select_dates[] = substr($value["date"],0,10); 
					
					 for ($i=1;$i<=$total_entries;$i++) {
					 	
						 $x = $i-1;
					 	
					     $bd_scale_r->cols      = "itemID, value, date";
					     $bd_scale_r->table     = $tbl_bd_scale_results;
						 $bd_scale_r->condition =  "userID = '".$user_data['ID']."' && date = '".$bd_scale_dates[$x]['date']."'";
					     $bd_scale_r->order     = 'itemID';
					     $bd_scale_r->multiSelect     = 1;
					     $ay_items = $bd_scale_r->row();
								
					  	 $final_scores[]     =  $ay_items[0]['value'] + $ay_items[1]['value'] + $ay_items[2]['value'] + $ay_items[3]['value'] + $ay_items[4]['value'] + $ay_items[5]['value'] + 
											  $ay_items[6]['value'] + $ay_items[7]['value'] + $ay_items[8]['value'] + $ay_items[9]['value'] + $ay_items[10]['value'] + $ay_items[11]['value'] + 
											  $ay_items[12]['value'] + $ay_items[13]['value'] + $ay_items[14]['value'] + $ay_items[15]['value'] + $ay_items[16]['value'] + $ay_items[17]['value'] + 
											  $ay_items[18]['value'] + $ay_items[19]['value'] + $ay_items[20]['value'] + $ay_items[21]['value'] + $ay_items[22]['value'] + $ay_items[23]['value'] + 
											  $ay_items[24]['value']; 	 
					 
						unset($ay_items);
				
					}
	
				    $bd_scale_data = '&datay='.serialize($bd_scale_dates).'&fscores='.serialize($final_scores);
					
				    //check time_ban - get latest entry date
					$last_item = $total_entries - 1;
					$latest_entrydate = strtotime($bd_scale_dates[$last_item]["date"]);
							
					//print_r($data_string);
		
			}
	       	
			//cache object
	        //$mem_key3 = "bd_scale_data_".$l["token"];   
	        if (mod_memcache == 1)  $memcache->set($mem_key3, $bd_scale_data, false, memcache_duration);	   
			else $_SESSION['$mem_key3']  = $bd_scale_data;   
								
	    }

    }

    //if result object exists in cache
	else {

		//$get_total_entries = substr(explode('}', $bd_scale_data),7);
		$total_entries = explode('&fscores', $bd_scale_data);
		$bd_scale_dates = unserialize(substr($total_entries[0],7));
	//	$bd_scale_data = unserialize(substr($total_entries[0],7));
		$total_entries = count($bd_scale_dates);

	    //check time_ban - get latest entry date
		$last_item = $total_entries - 1;
		
		$latest_entrydate = strtotime($bd_scale_dates[$last_item]['date']);
							
	}
	
	if ($total_entries > 0) {

		//Start here to calculate values for interpretation section
		
	    require_once("./././lib/functions/get_score_interpretation.php");		
				
	    $bd_scale_scores = explode('&fscores', $bd_scale_data);
		$bd_scale_scores = unserialize(substr($bd_scale_scores[1],1));
	
		$latest_score = $user_data['bd_latest_score'];
		
		if ($total_entries > 1) {
			
			//compare first and last
			$first_score  = $bd_scale_scores[0];		
			$change = round(($first_score - $latest_score) / $first_score * 100);
	    	$tpl->assign('score_interpretation_avg', get_score_interpretation('average', intval($change), $score_interpretation));		
			
			//find lowest score
			$lowest_score = min($bd_scale_scores);
			if ($latest_score > $lowest_score) $better_day = 1;
			else $better_day = 0;
			$tpl->assign('better_day', $better_day);	
			
			if ($better_day = 1) $tpl->assign('happier_in_past', $score_interpretation['happier_in_past']);	
						
		}
	
		$time_since_last_entry = time() - $latest_entrydate;
		$in_days = round($time_since_last_entry / 60 / 60 / 24);
			 
	 	//check time ban
		$repeat_in_days = bd_min_waittime * 24 * 60 * 60;
		if ( $time_since_last_entry < $repeat_in_days) $tpl->assign('time_ban', 1);					
			
	    $tpl->assign('score_interpretation_latest', get_score_interpretation('latest', intval($latest_score), $score_interpretation));			
	
		require_once('./lib/functions/convert_date.php');
	    //format dates for select box 

    	foreach($bd_scale_dates as $key => $value) {
    		$select_dates[] = $value["date"];
			$select_dates_formatted[] = convert_date($value["date"], 1, $getmonth); 
		}
	

		$tpl->assign('in_days', $in_days);	
		$tpl->assign('latest_score', $latest_score);	
		$tpl->assign('change', $change);		
		$tpl->assign('select_dates', $select_dates);	
		$tpl->assign('select_dates_formatted', $select_dates_formatted);	
		$tpl->assign('getmonth', serialize($getmonth));	
						
	}

    //fill template variables	 
    
    
	$tpl->assign('head_title', $head_title['analyze']['bd_scale']['index']);	    
	$tpl->assign('head_subtitle', $head_subtitle['analyze']['bd_scale']['index']);	
		    
	$tpl->assign('datay', $bd_scale_data); 
	$tpl->assign('total_entries', $total_entries);
	$tpl->assign('max_items_bd_scale', max_items_bd_scale);
	$tpl->assign('repeat_in_days', bd_min_waittime);		

		
?>

<?php

   /* Burns Depression Scale
    * delete entries and retrieve all entries
    * displaying the results (result.php) is initiated in the template file index.tpl */

    //delete item
    if ( !empty($_POST['submit_del']) )  { 
  
          $del_scale            = new ModifyEntry();
          $del_scale->table     = $tbl_da_scale_results;
          $del_scale->condition   = "userID = '".$user_data['ID']."' && date = '".$_POST['date_to_delete']."' ";
 
          $del_scale->delete();

          unset($del_scale);
		  	   		
  	      if (mod_memcache == 1) $memcache->delete($mem_key3);   
		  else unset($_SESSION['$mem_key3']);
						   	   		  
		  header ("Location:".ROOT_DIR."analyze/bd_scale");
		  
    }
	 
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
	
				     foreach($bd_scale_dates as $key => $value) $select_dates[] = substr($value["date"],0,10); 
					
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
	
				    $bd_scale_data = '&datay='.serialize($select_dates).'&fscores='.serialize($final_scores);
					
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
		$total_entries = count($bd_scale_dates);
	
	    //check time_ban - get latest entry date
		$last_item = $total_entries - 1;
		$latest_entrydate = strtotime($bd_scale_dates[$last_item]);
							
	}
	
	//check time ban
	if ( time() - $latest_entrydate < bd_min_waittime) $tpl->assign('time_ban', 1);				
	else  $tpl->assign('time_ban', 0);			

    //fill template variables	     
	$tpl->assign('datay', $bd_scale_data); 
	$tpl->assign('total_entries', $total_entries);
	$tpl->assign('max_items_bd_scale', max_items_bd_scale);
	

?>

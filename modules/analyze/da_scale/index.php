<?php

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

	 $tpl->assign('time_ban', 0);
	 
	 if ($total_entries > 1) {
	 
		 $select_dates[] = "Show All";
		 foreach($da_scale_dates as $key => $value) $select_dates[] = substr($value["date"],0,10); 
	
		 $tpl->assign('ay_dates', $select_dates);
		 
	 }
	 
	 if (isset($da_scale_dates[0]) && $da_scale_data == "") {  
	 
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
				if ( time() - $latest_entrydate < da_min_waittime) $tpl->assign('time_ban', 1);		
						
		}

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


	$tpl->assign('datay', $da_scale_data);
	$tpl->assign('data_sep_string', $da_scale_sep_strings);
	$tpl->assign('data_sep_dates', $da_scale_sep_dates);
				
	$tpl->assign('total_entries', $total_entries);
	$tpl->assign('max_items_da_scale', max_items_da_scale);
	
?>
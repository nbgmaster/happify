<?php

	    $bd_scale_c            = new SelectEntrys();
	    $bd_scale_c->cols      = "date";
		$bd_scale_c->distinct  = 1;
	    $bd_scale_c->table     = $tbl_bd_scale_results;
		$bd_scale_c->condition =  "userID = '".$user_data['ID']."' ";
	    $bd_scale_c->order     = 'date';
	    $bd_scale_c->multiSelect     = 1;
	    $bd_scale_dates = $bd_scale_c->row();
		 
	  	$total_entries = count($bd_scale_dates);
		 
		$last_item = $total_entries - 1;		 
		$latest_entrydate = strtotime($bd_scale_dates[$last_item]["date"]);

		if ( time() - $latest_entrydate < bd_min_waittime) $time_ban = 1;
		else $time_ban = 0;
		
		$tpl->assign('time_ban', $time_ban);	
		$tpl->assign('total_entries', $total_entries);
		$tpl->assign('max_items_bd_scale', max_items_bd_scale);
						
		if ($time_ban == 0 AND $total_entries < max_items_bd_scale) {

		    /* Print :: SELECT Categories */ 
		
		         $bd_scale_c            = new SelectEntrys();
		         $bd_scale_c->cols      = "ID, name_$lang_active, description_EN";
		         $bd_scale_c->table     = $tbl_bd_scale_categories;
		         $bd_scale_c->order     = 'ID';
		         $bd_scale_c->multiSelect     = 1;
		         $ay_cats = $bd_scale_c->row();
		
		    /******************************************/
		    
		    /* Print :: SELECT Items */ 
		
		         $bd_scale_i            = new SelectEntrys();
		         $bd_scale_i->cols      = "ID, categoryID, item_$lang_active";
		         $bd_scale_i->table     = $tbl_bd_scale_items;
		         $bd_scale_i->order     = 'ID';
		         $bd_scale_i->multiSelect     = 1;
		         $ay_items = $bd_scale_i->row();
		
		    /******************************************/
		    
		   
		    $count = 0;
		    foreach($ay_cats as $foo) $ay_all_cats[$foo['ID']] = $foo["name_$lang_active"]; 
		    foreach($ay_cats as $foo2) $ay_all_cats[$foo2["name_$lang_active"]] = $foo2["description_EN"]; 
						
			$count = 0;
			$save_cat = 0;    
		    
		    foreach($ay_items as $foo2) {
		    	
				if ($save_cat != $foo2['categoryID']) $count = 0;
				$ay_final[$foo2['categoryID']][$count]['title'] = $foo2["item_$lang_active"];
				$ay_final[$foo2['categoryID']][$count]['ID'] = $foo2['ID'];
			
				$save_cat = $foo2['categoryID'];
				$count++;
				
		    }
			
		    $tpl->assign('ay_cats', $ay_all_cats);
		    $tpl->assign('ay_final', $ay_final);
		    $tpl->assign('cats_total', count($ay_cats));
		    $tpl->assign('items_total', count($ay_items));

		}

?>

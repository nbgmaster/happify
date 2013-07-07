<?php

        /* Retrieve questions from database for the form */

	    $da_scale_c            = new SelectEntrys();
	    $da_scale_c->cols      = "date";
		$da_scale_c->distinct  = 1;
	    $da_scale_c->table     = $tbl_da_scale_results;
		$da_scale_c->condition =  "userID = '".$user_data['ID']."' ";
	    $da_scale_c->order     = 'date';
	    $da_scale_c->multiSelect     = 1;
	    $da_scale_dates = $da_scale_c->row();
		 
	  	$total_entries = count($da_scale_dates);
		 
		$last_item = $total_entries - 1;		 
		$latest_entrydate = strtotime($da_scale_dates[$last_item]["date"]);

		if ( time() - $latest_entrydate < da_min_waittime) $time_ban = 1;
		else $time_ban = 0;
		
		$tpl->assign('time_ban', $time_ban);	
		$tpl->assign('total_entries', $total_entries);
		$tpl->assign('max_items_da_scale', max_items_da_scale);
						
		if ($time_ban == 0 AND $total_entries < max_items_da_scale) {

		    /* Print :: SELECT Categories */ 
		
		         $da_scale_c            = new SelectEntrys();
		         $da_scale_c->cols      = "ID, name_$lang_active, description_EN";
		         $da_scale_c->table     = $tbl_da_scale_categories;
		         $da_scale_c->order     = 'ID';
		         $da_scale_c->multiSelect     = 1;
		         $ay_cats = $da_scale_c->row();
		
		    /******************************************/
		    
		    /* Print :: SELECT Items */ 
		
		         $da_scale_i            = new SelectEntrys();
		         $da_scale_i->cols      = "ID, categoryID, item_$lang_active";
		         $da_scale_i->table     = $tbl_da_scale_items;
		         $da_scale_i->order     = 'ID';
		         $da_scale_i->multiSelect     = 1;
		         $ay_items = $da_scale_i->row();
		
		    /******************************************/
	
		    
		    /* Prepare array of items */
		     		   
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
			
			$tpl->assign('head_title', $head_title['analyze']['da_scale']['index']);	    
			$tpl->assign('head_subtitle', $head_subtitle['analyze']['da_scale']['new']);	
			
			//forward to template			
		    $tpl->assign('ay_cats', $ay_all_cats);
		    $tpl->assign('ay_final', $ay_final);
		    $tpl->assign('cats_total', count($ay_cats));
		    $tpl->assign('items_total', count($ay_items));

		}

?>

<?php

	    /* Print :: SELECT Categories */ 
	
	         $da_scale_c            = new SelectEntrys();
	         $da_scale_c->cols      = "ID, name_$lang_active";
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
	    
	   
	    $count = 0;
	    foreach($ay_cats as $foo) $ay_all_cats[$foo['ID']] = $foo["name_$lang_active"]; 
			
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

?>

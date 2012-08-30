<?php

    
    /* Print :: SELECT Categories */ 

         $checklist_c            = new SelectEntrys();
         $checklist_c->cols      = "ID, name_EN";
         $checklist_c->table     = $tbl_checklist_categories;
         $checklist_c->order     = 'ID';
         $checklist_c->multiSelect     = 1;
         $ay_cats = $checklist_c->row();

    /******************************************/
    
    /* Print :: SELECT Items */ 

         $checklist_i            = new SelectEntrys();
         $checklist_i->cols      = "ID, categoryID, item";
         $checklist_i->table     = $tbl_checklist_items;
         $checklist_i->order     = 'ID';
         $checklist_i->multiSelect     = 1;
         $ay_items = $checklist_i->row();

    /******************************************/
    
   
    $count = 0;
    foreach($ay_cats as $foo) $ay_all_cats[$foo['ID']] = $foo['name_EN']; 
		
	$count = 0;
	$save_cat = 0;    
    
    foreach($ay_items as $foo2) {
    	
		if ($save_cat != $foo2['categoryID']) $count = 0;
		$ay_final[$foo2['categoryID']][$count]['title'] = $foo2['item'];
		$ay_final[$foo2['categoryID']][$count]['ID'] = $foo2['ID'];
				
		$save_cat = $foo2['categoryID'];
		$count++;
		
    }
	
    $tpl->assign('ay_cats', $ay_all_cats);
    $tpl->assign('ay_final', $ay_final);
    $tpl->assign('cats_total', count($ay_cats));
    $tpl->display("modules/".$_GET['module']."/index.tpl");




?>

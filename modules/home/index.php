<?php

	if ($logon_true == 1) {
	
	    /* Print :: SELECT */
	
	         $diary            = new SelectEntrys();
	         $diary->cols      = "entry, date";
	         $diary->table     = $tbl_diary;
	         $diary->condition = " userID = '1' ";
	         $diary->order     = 'date DESC';
	         $diary->multiSelect     = 1;
	         $ay_diary = $diary->row();
	
	         $tpl->assign('array', $ay_diary);
	 
	    /******************************************/
	    
			$tpl->display("modules/home/main.tpl");
	
	}
		
    else $tpl->display("modules/home/index.tpl");

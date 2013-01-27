<?php

	if ($logon_true == 1) {
         
        //require_once('././lib/functions/convert_date.php');
     	
   	     include("././lib/functions/fetch_diary.php");
	     $tpl->assign('ay_diary', $ay_diary);
			 
	     include("././lib/functions/fetch_goals.php");		
	     $tpl->assign('ay_goals', $ay_goals);
	
		 $happifiers        = new SelectEntrys();
	     $happifiers->cols      = "ID, activity, lastdone";
	     $happifiers->table     = $tbl_happifiers;
	     $happifiers->condition = " userID = '1' ";
	     $happifiers->order     = 'lastdone ASC';
	     $happifiers->multiSelect     = 1;
	     $ay_happifiers = $happifiers->row();
	
		 $count = 0;
		 foreach ($ay_happifiers as $res3) {
			
			$ay_happifiers[$count]["lastdone"] = convert_date($res3["lastdone"], 'happifiers');
			$count++;
			
		 }
	 					 
         $tpl->assign('ay_happifiers', $ay_happifiers);

		 $rules        = new SelectEntrys();
         $rules->cols      = "ID, rule";
         $rules->table     = $tbl_rules;
         $rules->order     = 'ID DESC';
         $rules->multiSelect     = 1;
         $ay_rules = $rules->row();

         $tpl->assign('ay_rules', $ay_rules);
		 			 			 	 
    /******************************************/
    
		$tpl->display("modules/home/main.tpl");
	
	}
		
    else {

          $tpl->display("modules/home/index.tpl");
		  
	}

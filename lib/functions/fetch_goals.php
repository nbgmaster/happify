<?php

     /* XAJAX - asynchronous call: retrieve updated data */
     
     require_once('lib/functions/convert_date.php');
	 				 
	 $goals            = new SelectEntrys();
     $goals->cols      = "ID, goal, progress, created, achieved";
     $goals->table     = $tbl_goals;
     $goals->condition = " userID = '".$user_data['ID']."' ";
     if (!isset($goals_order)) $goals->order     = 'created DESC';
	 else $goals->order = $goals_order;
	 if (isset ($goals_show_landing) == true ) $goals->limit = 1;
	 //$goals->limit     = 10;
     $goals->multiSelect     = 1;
     $ay_goals = $goals->row();

	 $count = 0;
	 
	 if ( isset ($ay_goals[0]) ) {
	 	
		 foreach ($ay_goals as $res2) {
			
			$ay_goals[$count]["created"] = convert_date($res2["created"], 0, $getmonth);
			$ay_goals[$count]["achieved"] = convert_date($res2["achieved"], 0, $getmonth);
			$count++;
			
		 }
	 
	 }

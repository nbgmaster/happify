<?php

       /* XAJAX - asynchronous call: retrieve updated data */

        require_once('lib/functions/convert_date.php');
     	
	         $diary            = new SelectEntrys();
	         $diary->cols      = "entry, date";
	         $diary->table     = $tbl_diary;
	         $diary->condition = " userID = '".$user_data['ID']."' ";
	         $diary->order     = 'date DESC';
			 $diary->limit     = 10;
	         $diary->multiSelect     = 1;
	         $ay_diary = $diary->row();
			 
			//print_r($ay_diary); 
			 $count = 0;
			 foreach ($ay_diary as $res) {
				
				$ay_diary[$count]["date"] = convert_date($res["date"], 'diary');
				$count++;
				
			 }

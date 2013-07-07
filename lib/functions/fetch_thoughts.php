<?php

     /* XAJAX - asynchronous call: retrieve updated data */
     
     //TODO convert date
     require_once('lib/functions/convert_date.php');
	 
	     /* Print :: SELECT */

         $thoughts            = new SelectEntrys();
         $thoughts->cols      = "ID, thought, response, action, status";
         $thoughts->table     = $tbl_distorted_thoughts;
		 if (isset($thoughts_landing) == true) {
	         $thoughts->condition = " userID = '".$user_data['ID']."' AND status = '0' OR userID = '".$user_data['ID']."' AND status = '1' ";
			 $thoughts->order = 'RAND()';
		     $thoughts->limit = 1;
		 }
		 else {
		  	 $thoughts->condition = " userID = '".$user_data['ID']."' ";
        	 $thoughts->order     = 'status, created DESC';
		 }
         $thoughts->multiSelect     = 1;
         $ay_thoughts = $thoughts->row();

    /******************************************/
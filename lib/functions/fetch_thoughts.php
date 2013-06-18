<?php

     /* XAJAX - asynchronous call: retrieve updated data */
     
     require_once('lib/functions/convert_date.php');
	 
	     /* Print :: SELECT */

         $thoughts            = new SelectEntrys();
         $thoughts->cols      = "ID, thought, response, action, status";
         $thoughts->table     = $tbl_distorted_thoughts;
         $thoughts->condition = " userID = '1' ";
         $thoughts->order     = 'status, created DESC';
         $thoughts->multiSelect     = 1;
         $ay_thoughts = $thoughts->row();

    /******************************************/
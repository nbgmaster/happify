<?php

  /* XAJAX - asynchronous call, initiated in ajax_requests.php: 
   * select data und display updated data without refreshing the complete page */
  
  function selectdata( $table, $data ) {
  
     //global $tpl;
     global $memcache;
	 global $l;
	 global $tpl;
	 global $user_data;
	 global $getmonth;
		  
     $objResponse = new xajaxResponse();  

     //include('settings/template.php');   
     include('settings/tables.php');   
	 
	 if ( $user_data == '' ) require_once('lib/functions/get_userdata.php'); 

	 if ($table == $tbl_diary) {
	 	
		   if ($data == 'clear_filter') include("././lib/functions/fetch_diary.php");
			  			
		   else {
	 	
			   $selected_month = mysql_real_escape_string($data['month']);
			   $selected_year  = mysql_real_escape_string($data['year']);
			
		       //$mysqldate = date( 'Y-m-d H:i:s', time() );
			   
			   $start_date = date("Y-m-d H:i:s", mktime(0, 0, 0, $selected_month, 1, $selected_year));
			   $end_date = date("Y-m-d H:i:s", mktime(23, 59, 59, $selected_month + 1, 0, $selected_year)); //The last day of any given month can be expressed as the "0" day of the next month
			 
			   //strtotime("+1 month", $myTimestamp); 
			 		 			 
		       //select new entry
	           $diary            = new SelectEntrys();
	           $diary->cols      = "ID, entry, date, picture";
	           $diary->table     = $tbl_diary;
	           $diary->condition = " userID = '".$user_data['ID']."' AND date >= '".$start_date."' AND date <= '".$end_date."' ";
	           $diary->order     = 'date DESC';
			   //$diary->limit     = 10;
	           $diary->multiSelect     = 1;
	           $ay_diary = $diary->row();

			   if (isset($ay_diary[0])) {
				   	
				   require_once('lib/functions/convert_date.php');
				   
				   $count = 0;
				   foreach ($ay_diary as $date_format) {
				   		$ay_diary[$count]["date"] = convert_date($date_format['date'], 0, $getmonth);
				   		$count++;
				   } 
			   
			   }
		   			   
		   }
	 	 
		   //refresh content		 
	       //include("lib/functions/fetch_diary.php");
	       $tpl->assign('ay_diary', $ay_diary);
		   
   		   //TODO why is this needed now!?
 	       $tpl->assign('user_data', $user_data); 
				   
		   //if at least one entry exists
		   if (isset($ay_diary[0])) $tpl->assign('at_least_one_entry', 1);
		   else $tpl->assign('at_least_one_entry', 0);
					   	   
           $html = $tpl->fetch("modules/home/diary_entries.tpl");   
           $objResponse->assign("diary_entries","innerHTML",$html); 
		   
		 //  if ($data == 'clear_filter') {
		   	   $objResponse->includeScript("js/pinterest.js");
		       $objResponse->call("m_reload");
		//   }
   	   
	 }
	 	       
     return $objResponse;  
               
  }
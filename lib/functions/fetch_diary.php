<?php

       /* XAJAX - asynchronous call: retrieve updated data */

        require_once('lib/functions/convert_date.php');
     	
	         $diary            = new SelectEntrys();
	         $diary->cols      = "ID, entry, date, picture";
	         $diary->table     = $tbl_diary;
			 //TODO analyze performance
			 if (isset ($diary_show_random) == true) {
			 	 //$diary->condition = " userID = '".$user_data['ID']."' AND DATE_FORMAT(date,'%Y-%m-%d') = CURDATE()";
			 	 $diary->condition = " userID = '".$user_data['ID']."'";
		         $diary->order     = 'RAND()';
				 $diary->limit     = 1;
			 }
			 else {
			 	$diary->condition = " userID = '".$user_data['ID']."' ";
	         	$diary->order     = 'date DESC';
			 	$diary->limit     = 50;				
			 }
	         $diary->multiSelect     = 1;
	         $ay_diary = $diary->row();
			 
			 // The Regular Expression filter
		  	 $reg_exUrl = "!((?:www|http://)[^ ]+)!";
			 			 
			 if ( count( $ay_diary ) > 0 ) {
			 	
				 $count = 0;
				 foreach ($ay_diary as $res) {

					$ay_diary[$count]["entry_org"] = $res['entry'];
										 	
					// Check if there is a url in the text
					if(preg_match($reg_exUrl, $res['entry'], $url)) {
					
					  // make the urls hyper links
					  if (substr($url[0], 0, 3) == 'www' )  $entry_new_string = preg_replace($reg_exUrl, '<a href="http://'.$url[0].'" target="_blank">'.$url[0].'</a>', $res['entry']);
					  else  								$entry_new_string = preg_replace($reg_exUrl, '<a href="'.$url[0].'" target="_blank">'.$url[0].'</a>', $res['entry']);
					  $ay_diary[$count]["entry"] = $entry_new_string;
					
					}
	
					$ay_diary[$count]["date"] = convert_date($res["date"], 0, $getmonth);
					
					//echo $ay_diary[$count]["date"]; echo"<br>";
					$count++;
				 }
	
		     	 if ( $user_data['diary_start_month'] > 0 && $user_data['diary_start_year'] > 0 ) {
		     	 	
					$count = 0;
					for ($i = $user_data['diary_start_year']; $i <= date("Y",time()); $i++) {
						 $ay_years[$count]['year'] = $i; 
						 $count++;
					}

		     	 }
						 
				 else $ay_years = '';
				 
				 $tpl->assign('ay_years', $ay_years);
			  
			 }
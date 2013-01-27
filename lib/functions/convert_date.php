<?php
  
  //2012-06-17 00:14:43
  function convert_date($date, $module) {
  	
           $c_time = date("H:i",time());         
           $c_date = date("Y-m-d",time());
           $c_year = date("Y",time());
           $c_month = date("m",time());
           $c_day = date("d",time());
                                 
           $date = substr($date,0,10);  
           $year = substr($date,0,4);
           $month = substr($date,5,2);
           $day = substr($date,8,2);
           $hours = substr($date,11,2);
           $minutes = substr($date,14,2);
           
        
           $date_unix = mktime($hours,$minutes,0,$month,$day,$year);
           
           //$timestamp - $date_unix;
                           
           if ($date == $c_date) $res = "Today";
           else {
           	  $days = floor((strtotime($c_date) - strtotime($date))/86400); 
              if ($days == 1) $res = "1 day ago";
			  else if ($days > 7) {
			  	$weeks = floor($days/7);
				  if ($weeks > 4) {
				  	if ($module == 'diary') $res = $day.".".$month.".".$year;
					else $res = "> 1 month ago";
				  }
				  else
					$res = $weeks." weeks ago";  
			  }
			      
			  else 
			  	$res = $days." days ago";
		   }
		   
		   return $res;
		   
  }  
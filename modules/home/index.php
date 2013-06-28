<?php

    /* Landing Page */
    	 
    //print_r($user_data);
	
    //LOGIN == TRUE
	 if ($logon_true == 1) {
	 	/*
		 if (!isset($bd_scale_dates[0])) { 
         
	         $bd_check = new CheckExist();
	         $bd_check->tableE = $tbl_users;
	         $validity_check->conditionE = "UserToken = '".$_GET['t']."' && activation_code = '".$_GET['c']."' ";
	         $validity = $validity_check->exist();
		 
		 }
      */
         //require_once('././lib/functions/convert_date.php');
     	
     	 //Load Data that is displayed on landing page (diary, etc.)
     	 
     	 $diary_show_random = true;
     	 
   	     include("././lib/functions/fetch_diary.php");
	     $tpl->assign('ay_diary', $ay_diary);
		 
	     $diary_entry_tdy = new CheckExist();
         $diary_entry_tdy->tableE = $tbl_diary;
         $diary_entry_tdy->conditionE = " userID = '".$user_data['ID']."' AND DATE_FORMAT(date,'%Y-%m-%d') = CURDATE()";
         $dy_entry_tdy = $diary_entry_tdy->exist();

	     if ($dy_entry_tdy == 1) $tpl->assign('entry_today', 1);
	     else $tpl->assign('entry_today', 0);

	     //define selected state for filter options
         $c_month = date("m",$timestamp);
         $c_year = date("Y",$timestamp);
		 $tpl->assign('c_month', $c_month);
		 $tpl->assign('c_year', $c_year);
		   		   			 			 
		 $goals_show_landing = true;  		   			 			 
	     include("././lib/functions/fetch_goals.php");		
	     $tpl->assign('ay_goals', $ay_goals);

         $thoughts_landing = true;
	     include("././lib/functions/fetch_thoughts.php");		
	     $tpl->assign('ay_thoughts', $ay_thoughts);	
		 
	/*
	     //TODO fetch_happifiers
	     	     
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

	 * 
	 */
         //TODO fetch_rules
		 $rules        = new SelectEntrys();
         $rules->cols      = "ID, rule";
         $rules->table     = $tbl_rules;
         $rules->order     = 'ID DESC';
         $rules->multiSelect     = 1;
         $ay_rules = $rules->row();

         $tpl->assign('ay_rules', $ay_rules);
		 			 			 	 
    /******************************************/
    
        if ($user_data['da_latest_score'] != '') {
        	
			$ay_da_reasons = unserialize($user_data['da_latest_score']);
			
			foreach ($ay_da_reasons as $key => $value)
				$reasons[$da_reasons[$key]] = $value;
			
			asort($reasons);
			
			$da_weakness = reset($reasons);		
			$da_strength = end($reasons);
					
			if ($da_weakness < 0) { $weaknesses = array_keys($reasons, $da_weakness); $tpl->assign('da_weakness', $weaknesses);  }
			if ($da_strength > 0) { $strengths = array_keys($reasons, $da_strength); $tpl->assign('da_strength', $strengths); }

		}
		
		//if ($ay_da_reasons[0])
            
        $tpl->assign('bd_score_severity', $bd_score_severity);
    
		$tpl->display("modules/home/main.tpl");
	
	}

    //LOGIN == FALSE		
    else {

          $tpl->display("modules/home/index.tpl");
		  
	}

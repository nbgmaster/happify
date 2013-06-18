<?php

    /* Landing Page */
    	 
    //LOGIN == TRUE
	 if ($logon_true == 1) {
	 	
		 if (!isset($bd_scale_dates[0])) { 
         
	         $bd_check = new CheckExist();
	         $bd_check->tableE = $tbl_users;
	         $validity_check->conditionE = "UserToken = '".$_GET['t']."' && activation_code = '".$_GET['c']."' ";
	         $validity = $validity_check->exist();
		 
		 }
      
         //require_once('././lib/functions/convert_date.php');
     	
     	 //Load Data that is displayed on landing page (diary, etc.)
     	 
   	     include("././lib/functions/fetch_diary.php");
	     $tpl->assign('ay_diary', $ay_diary);
		 
		 //if at least one entry exists
		   if (isset($ay_diary[0])) $tpl->assign('at_least_one_entry', 1);
		   else $tpl->assign('at_least_one_entry', 0);

	     //define selected state for filter options
         $c_month = date("m",$timestamp);
         $c_year = date("Y",$timestamp);
		 $tpl->assign('c_month', $c_month);
		 $tpl->assign('c_year', $c_year);
		   		   			 			 
	     include("././lib/functions/fetch_goals.php");		
	     $tpl->assign('ay_goals', $ay_goals);
	
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

         //TODO fetch_rules
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

    //LOGIN == FALSE		
    else {

          $tpl->display("modules/home/index.tpl");
		  
	}

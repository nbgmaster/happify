<?php

 /* XAJAX - asynchronous call: function to sort a list of database entries */

  function sortdata( $table, $column, $direction ) {

	 global $tpl;
	 global $user_data;
		  
     $objResponse = new xajaxResponse();  
   
     //include('settings/template.php');   
     include('settings/tables.php');    

	 if ( $user_data == '' ) require_once('lib/functions/get_userdata.php'); 

	 if ($table == $tbl_goals) {

           //define sort column
		   $goals_order = $column." ".$direction;
	       include("lib/functions/fetch_goals.php");
	       $tpl->assign('ay_goals', $ay_goals);
			   	 	
 			//define direction DESC or ASC
		   if ($direction == 'DESC') $tpl->assign("sort_".$column, 'ASC');
		   else  $tpl->assign("sort_".$column, 'DESC');
		   
		   //update template
  	       $html  = $tpl->fetch('modules/improve/goals/sort_'.$column.'.tpl'); 	
           $objResponse->assign("sortdiv_".$column,"innerHTML",$html);   	
		   		   			   
			   					   	   
           $html2 = $tpl->fetch("modules/improve/goals/goal_entries.tpl");   


	   	   $objResponse->assign("goal_entries","innerHTML",$html2);   
		   
	 }
	       
     return $objResponse;  
               
  }
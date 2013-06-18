<?php

    /* Goals of the user */

    //delete entry
	 if ( !empty($_POST['submit_del']) )  { 
 
          $del_goal            = new ModifyEntry();
          $del_goal->table     = $tbl_goals;
          $del_goal->condition   = "userID = '".$user_data['ID']."' && ID = '".$_POST['id_to_delete']."' ";
 
          $del_goal->delete();

          unset($del_goal);

		  header ("Location:".ROOT_DIR."improve/goals/index.html");

    }

    //default sort orders
	$sort_goal = "ASC";
	$sort_progress = "DESC";
	$sort_created = "ASC";
	
	//retrieve goal data
    include("./././lib/functions/fetch_goals.php");		
	
	//display template
    $tpl->assign('ay_goals', $ay_goals);
    $tpl->assign('sort_goal', $sort_goal);
	$tpl->assign('sort_progress', $sort_progress);
	$tpl->assign('sort_created', $sort_created);
	$tpl->assign('total_goals', $count);	
<?php

    //delete entry
	 if ( !empty($_POST['submit_del']) )  { 
 
          $del_thought            = new ModifyEntry();
          $del_thought->table     = $tbl_distorted_thoughts;
          $del_thought->condition   = "userID = '".$user_data['ID']."' && ID = '".$_POST['id_to_delete']."' ";
 
          $del_thought->delete();

          unset($del_thought);

		  header ("Location:".ROOT_DIR."improve/distorted_thoughts/index.html");

    }
	 
	//retrieve goal data
    include("./././lib/functions/fetch_thoughts.php");		
	
	//display template
    $tpl->assign('ay_thoughts', $ay_thoughts);
 
    if (isset($ay_thoughts[0])) $tpl->assign('total_thoughts', count($ay_thoughts));
	else  $tpl->assign('total_thoughts', 0);

?>

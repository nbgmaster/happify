<?php

    /* Print :: SELECT */

         $thoughts            = new SelectEntrys();
         $thoughts->cols      = "thought, response, action, status";
         $thoughts->table     = $tbl_distorted_thoughts;
         $thoughts->condition = " userID = '1' ";
         $thoughts->order     = 'status';
         $thoughts->multiSelect     = 1;
         $ay_thoughts = $thoughts->row();

         $tpl->assign('array', $ay_thoughts);
 
    /******************************************/
  
  // $tpl->display("modules/".$_GET['module']."/index.tpl");

?>

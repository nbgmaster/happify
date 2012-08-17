<?php

  include('settings/index.common.php');
     
  /******************************************/


  function postdata( $table, $data ) {
  
     global $tpl;
  
     $objResponse = new xajaxResponse();  
       
     include('settings/config.php');     
     include('settings/template.php');   
     require_once('lib/select.php');
     require_once('lib/modify.php');
     
       $mysqldate = date( 'Y-m-d H:i:s', time() );

       $diary = new ModifyEntry();
       $diary->table  = $tbl_diary;
       $diary->cols   = 'userID, entry, date';
       $diary->values = " '1', '".$data['note']."', '".$mysqldate."' ";

       $diary->insert();
        
       unset($diary);
       
      /* header ("Location:".ROOT_DIR."flash/newflash.html");
                 
     $select = new SelectEntrys();

     $select->table      = $table;
     $select->cols       = 'id, firstname, lastname, job_position, category, email, phone, description_DE, description_EN, position';
     $select->condition  = " id = '$mid' ";                                                                    
     $select->multiSelect      = '1';
     $select->limit      = '1';

     
     $ay_select = $select->row();
            
   //  $ay_select[0]['description_DE'] = replaceBBcode($ay_select[0]['description_DE'], $set[0]["width_images"], 1);
         	     
     $tpl->assign('array_details', $select->row());
     
     unset($select);
      /*
     $new_height = 45 * ($ay_select[0]['position'] - 1);
     if ($ay_select[0]['position'] < 5) $new_height = $new_height + 23;
     if ($ay_select[0]['position'] > 4) $new_height = $new_height + 23;
     if ($ay_select[0]['position'] > 10) $new_height = $new_height - 160;
        
     $html = $tpl->fetch("team/details.tpl");           
     $p_name  = "team_profile";
     
     //$space = "<div style='height:".$new_height."px'>&nbsp;</div>";
     //$space2 = "<div style='height:200px'>&nbsp;</div>";
          
     $objResponse->assign($p_name,"innerHTML",$html);
                        */
     return $objResponse;  
               
  }


  $xajax->processRequest();

  unset($xajax);
  unset($objResponse);

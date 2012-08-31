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
	 
	 if ($table == $tbl_diary) {
     
	       $mysqldate = date( 'Y-m-d H:i:s', time() );
	
	       $diary = new ModifyEntry();
	       $diary->table  = $table;
	       $diary->cols   = 'userID, entry, date';
	       $diary->values = " '1', '".$data['note']."', '".$mysqldate."' ";
	
	       $diary->insert();  
	       unset($diary);
	   
	 }

	 if ($table == $tbl_da_scale_results) {
	 	
		$i = 0;
		$dataValid = 1;
		 
	       $mysqldate = date( 'Y-m-d', time() );
		 
		   for($i=1; $i<=$data['items_total']; $i++) {
		   	
		   	   if (!isset($data[$i]))	{
		   	       $objResponse->alert('Please answer all items');
				   $dataValid = 0;
			       break;
		       }
		   }
		   
		   if ($dataValid == 1) {   

		           $da_scale = new ModifyEntry();
			       $da_scale->table  = $table;
				   			  			 
				   for($i=1; $i<=$data['items_total']; $i++) {
				   	
					   if (isset($data[$i]))	{
					  
					       $da_scale->cols   = 'userID, itemID, value, date';
					       $da_scale->values = " '1', '".$i."', '".$data[$i]."', '".$mysqldate."' ";
					
					       $da_scale->insert();  
			
					   }
					   
					   if($da_scale->errno() > 0) break; 
					   
				   }
				   
				       				 
		   }
		   						
		   if ($dataValid == 1 && $da_scale->errno() == 0) $objResponse-> redirect(ROOT_DIR.'da_scale/');
		   
		   unset($da_scale);					 
		   
	 }
	 	       
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

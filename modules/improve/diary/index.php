<?php

	 if ( !empty($_POST['note']) )  { 
			   
		  require_once('././lib/functions/upload_image.php');  
		 
	  	  if ($_FILES) $upload_pic = uploadImageFile($_FILES["image_file"],$user_data['ID']);
		  
		  //print_r($upload_pic);
		  
		  if ( $upload_pic != '' ) {
				
			   $mysqldate = date( 'Y-m-d H:i:s', time() );
			 			 
	  		   $diary_note = mysql_real_escape_string($_POST['note']);
		
		       //insert new entry
		       $diary = new ModifyEntry();
		       $diary->table  = $tbl_diary;
		       $diary->cols   = 'userID, entry, date, picture';
		       $diary->values = " '".$user_data['ID']."', '".$diary_note."', '".$mysqldate."', '".$upload_pic."' ";
		
		       $diary->insert();  
		       unset($diary);

		 } 
		  		  					   	   		  
	     header ("Location:".ROOT_DIR."improve/diary/index.html");

    }

    /* Landing Page */
    
     //delete diary entry, TODO exclude in own file, TODO refresh, xajax
	 elseif ( !empty($_POST['submit_del']) )  { 
 
          $del_diary_entry            = new ModifyEntry();
          $del_diary_entry->table     = $tbl_diary;
          $del_diary_entry->condition   = "userID = '".$user_data['ID']."' && ID = '".$_POST['id_to_delete']."' ";
 
          $confirm_del = $del_diary_entry->delete();

          if ( $confirm_del === true && $_POST['pid'] != '') {

          		$path = 'media/images/uploads/'.$user_data['ID'].'/'.$_POST['pid'];
          		
          		$i_full = explode(".",$_POST['pid']);
          		
          		$path_full = 'media/images/uploads/'.$user_data['ID'].'/'.$i_full[0].'_full.'.$i_full[1];

    			unlink($path); //delete thumbnail
    			unlink($path_full); // delete fullsize image
          	          		         	
          }
          
          unset($del_diary_entry);

          //TODO
	      header ("Location:".ROOT_DIR."improve/diary/index.html");

    }
	 
	 else {
         
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
    
		//$tpl->display("modules/improve/diary/index.tpl");
	
	}


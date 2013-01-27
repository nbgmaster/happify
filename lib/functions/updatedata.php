<?php

  function updatedata( $table, $part, $data, $id ) {
	  
     $objResponse = new xajaxResponse();  
   
     //include('settings/template.php');   
     include('settings/tables.php');    

	 if ($table == $tbl_goals && $part == 'progress') {

	       $goals = new ModifyEntry();
	       $goals->table  = $table;
					   
		   switch ($data) {
			    case 0: $progress = 0; break;
			    case 1: $progress = 20; break;
			    case 2: $progress = 40; break;				
			    case 3: $progress = 50; break;
			    case 4: $progress = 60; break;
			    case 5: $progress = 80;	break;
			    case 6: $progress = 100; break;	
		   }
					   
		   $goals->changes   = " progress = $progress ";
           $goals->condition = " ID = '$id' ";

	       $goals->update();  
	       unset($goals);
		           
      }
	 
	  return $objResponse;  
       
  }
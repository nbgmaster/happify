<?php

  /* Using XAJAX Library to make asynchronous calls
   * here all methods are defined, and for each section only those that are really necessary
   * needs to be checked and updated in the end 
   */

  if ($logon_true != 1 || $section == 'bd_scale' && $subsection == 'new' || $section == 'da_scale' && $subsection == 'new' || $logon_true == 1 && !$module || $section == 'goals' && $subsection == 'index' || $section == 'goals' && $subsection == "index") {

	   require('lib/xajax/xajax_core/xajax.inc.php');
	
	   $xajax = new xajax();
	   $xajax->configure('debug', true);
	   $xajax->configure('javascript URI', ROOT_DIR.'lib/xajax/');
	   //$xajax->configure('defaultMode', "asynchronous");
       $xajax->configure('allowAllResponseTypes', true);
	
	  /******************************************/
	
	  if ( $section == 'bd_scale' && $subsection == 'new' || $section == 'da_scale' && $subsection == 'new' || $logon_true == 1 && !$module || $section == 'goals' && $subsection == "index") {	

		   $xajax->register(XAJAX_FUNCTION, "insertdata");
           $xajax->register(XAJAX_FUNCTION, "updatedata");
           		
		   require_once('lib/functions/insertdata.php');
           require_once('lib/functions/updatedata.php');
           	
	  }

	  if ( $section == 'goals' && $subsection == 'index' ) { 
			
		   $xajax->register(XAJAX_FUNCTION, "updatedata");
		   $xajax->register(XAJAX_FUNCTION, "sortdata");
		   		
		   require_once('lib/functions/updatedata.php');
		   require_once('lib/functions/sortdata.php');
		   	
	  }	
	
	  if ( $logon_true != 1 ) {
	  	
		   $xajax->register(XAJAX_FUNCTION, "login");
		   $xajax->register(XAJAX_FUNCTION, "registerUser");
		
		   require_once('lib/functions/login.php');
		   require_once('lib/functions/registerUser.php');
		  
	  }
	
	  $xajax->processRequest();    
	  $xajax->printJavascript();
	
	  unset($xajax);
	  unset($objResponse);
	  
  }


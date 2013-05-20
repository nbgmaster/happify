<?php

      /* Load :: Configuration settings */
    
         include('settings/config.php');
    
      /******************************************/
    
    
      /* Download Attachment 
    	//maybe requires function createFromString from former lib
         if ( isset($_GET['fid']) )  {
    
              require_once('lib/download.php');
    
              download ($_GET['fid'], 'attachments', 'blog');
    
         }
         
      ******************************************/
    
    
      /* Load :: Header Content */
         
         include('php/js_root_dir.php');
        
         $tpl->display("header.tpl");


      /******************************************/


      /* Load :: Page Content */

	   if ( !isset ($_GET['section']) ) $_GET['section'] = 'index';
				               
	   if ( isset ($_GET["module"]) && isset ($_GET["section"]) ) {
	  	
	       if ($logon_true != 1 && $_GET["module"] != "logon" && $_GET["section"] != "activation") header("Location:".ROOT_DIR);
		   	   
		   $page_load = 0;
		   
		   if (isset($_GET['subsection'])) {
		   	
		           if (file_exists('modules/'.$_GET['module']."/".$_GET['section']."/".$_GET['subsection'].".php") && file_exists('tpl/modules/'.$_GET['module']."/".$_GET['section']."/".$_GET['subsection'].".tpl"))  {

		               $tpl->display("breadcrumb.tpl");
				   
		               include("modules/".$_GET['module']."/".$_GET['section']."/".$_GET['subsection'].".php"); 
				   	   
		               $tpl->display("modules/".$_GET['module']."/".$_GET['section']."/".$_GET['subsection'].".tpl"); 
				   				   												   
					   $page_load = 1;
				   
				   }
		   	
		   }
		   
		   else {

			   if (file_exists('modules/'.$_GET['module']."/".$_GET['section'].".php") && file_exists('tpl/modules/'.$_GET['module']."/".$_GET['section'].".tpl"))  {
	
		           $tpl->display("breadcrumb.tpl");

			       include("modules/".$_GET['module']."/".$_GET['section'].".php"); 
				  	   
			       $tpl->display("modules/".$_GET['module']."/".$_GET['section'].".tpl"); 
	
				   $page_load = 1;
				   				
			   }
			   
			   elseif (file_exists('modules/'.$_GET['module']."/".$_GET['section']."/index.php") && file_exists('tpl/modules/'.$_GET['module']."/".$_GET['section']."/index.tpl"))  {
	
		           $tpl->display("breadcrumb.tpl");

			       include("modules/".$_GET['module']."/".$_GET['section']."/index.php"); 
				  	   
			       $tpl->display("modules/".$_GET['module']."/".$_GET['section']."/index.tpl"); 
	
				   $page_load = 1;
				 					
			   }			   					

		   }
		   
	       if ($page_load == 0) $tpl->display("errorpage.tpl");
			         
	  }
	 
	  else  include("modules/home/index.php"); 
			
      /******************************************/
         
      /* Load :: Footer Content */
      
          $end = microtime(true); 
          $tpl->assign("rendering_time", substr($end-$start,0,-9));
          
          $tpl->display("footer.tpl");
    
      /******************************************/

      
  /* Close :: Session */

     //$diff_max = 60*10; // clear session after 10 minutes
     //$diff_actual = $timestamp - strtotime($user_data['last_online_time']);

     //if ($diff_actual > $diff_max) 
        //$memcache->delete('user_data_'.$user_data['ID']);  
        //$memcache->delete('user_data_f561aaf6ef0bf14d4208bb46a4ccb3ad');  
      
  /******************************************/
  
  //print_r($user_data["fb_friends"]);

<?php

  //$country = file_get_contents('http://api.hostip.info/country.php?ip='.$_SERVER['REMOTE_ADDR']);
 
      /* Load :: Configuration settings */
    
         include('settings/config.php');
    
      /******************************************/
    
    
      /* Download Attachment */
    
         if ( isset($_GET['fid']) )  {
    
              require_once('lib/download.php');
    
              download ($_GET['fid'], 'attachments', 'blog');
    
         }
         
      /******************************************/
    
    
      /* Load :: Header Content */
         
         include('php/js_root_dir.php');
        
         $tpl->display("header.tpl");

      /******************************************/

      
      /* Load :: Page Content */
      
                            
	   if ( !isset ($_GET['section']) ) $_GET['section'] = 'index';
				               
	   if ( isset ($_GET["module"]) && isset ($_GET["section"]) ) {
	  	
	       if ($logon_true != 1 && $_GET["module"] != "logon" && $_GET["section"] != "activation") header("Location:".ROOT_DIR);
		  				
		   if (file_exists('modules/'.$_GET['module']."/".$_GET['section'].".php") && file_exists('tpl/modules/'.$_GET['module']."/".$_GET['section'].".tpl"))  {

	           $tpl->display("breadcrumb.tpl");
				
	           include("modules/".$_GET['module']."/".$_GET['section'].".php"); 
			   	   
	           $tpl->display("modules/".$_GET['module']."/".$_GET['section'].".tpl"); 
	 
		   }
		   
	      else $tpl->display("errorpage.tpl");
			         
	  }
	 
	  else  include("modules/home/index.php"); 
			
      /******************************************/
         
      /* Load :: Footer Content */
      
          $end = microtime(true); 
          $tpl->assign("rendering_time", substr($end-$start,0,-9));
          
          $tpl->display("footer.tpl");
    
      /******************************************/

      
  /* Close :: Session */

     $diff_max = 60*10; // clear session after 10 minutes
     $diff_actual = $timestamp - strtotime($user_data['last_online_time']);

     //if ($diff_actual > $diff_max) 
        //$memcache->delete('user_data_'.$user_data['ID']);  
        //$memcache->delete('user_data_f561aaf6ef0bf14d4208bb46a4ccb3ad');  
      
  /******************************************/
  
  //print_r($user_data["fb_friends"]);
  

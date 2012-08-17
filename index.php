<?php

          
  /* Prevent Header Output Error */

     session_start();
     ob_start();

  /******************************************/


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
    
         $tpl->display("header.tpl");
         
         include('php/js_root_dir.php');
    
      /******************************************/
                       
      
      /* XAJAX :: Register Object AND Functions */
    
         $xajax = new xajax(ROOT_DIR."index.server.php");

         $xajax->register(XAJAX_FUNCTION, "postdata");

         //$xajax->configure('debug', true);    

         $xajax->configure('javascript URI', ROOT_DIR.'lib/xajax/'); 
    
         // $tpl->assign("xajax_javascript",$xajax->getJavascript(ROOT_DIR.'xajax/'));
         $xajax->printJavascript();
         
      /******************************************/

      /* Load :: Page Content */
              
         if (!isset($_GET['module'])) include("modules/home/index.php");
                                        
         else  { 
         
           $error_page = "modules/".$_GET['module']."/";
               
          if ( is_dir( $error_page ) )  include("modules/".$_GET['module']."/index.php");
          else $tpl->display("block_deactivated.tpl");
         
         }
    
      /******************************************/
         
      /* Load :: Footer Content */
    
          $tpl->display("footer.tpl");
    
      /******************************************/


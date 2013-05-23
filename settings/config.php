<?php
    
     //$expires = 60*60*24*365;
     //header("Cache-Control: maxage=".$expires);
     //header('Expires: ' . gmdate('D, d M Y H:i:s', time()) . ' GMT');
     header("Cache-Control: private, no-cache, no-store, must-revalidate"); 
     header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");
     header('Content-Type: text/html; charset=utf-8');
     //header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
     //header("Cache-Control: no-cache, must-revalidate");
     //header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");
     
     session_start();
     ob_start();
     
	 $debug_mode = "ON_PRINT"; //OFF, ON_DEV, ON_PRINT  	!= OFF --> considered DEV environment
	
	 if ($debug_mode == "ON_PRINT") error_reporting(E_ALL);
	 else if ($debug_mode == "OFF") error_reporting(0); 
	 else error_reporting(E_ERROR | E_WARNING | E_PARSE);
 
     $start = microtime(true); 
  
  /* Load :: Smarty */

     require_once("./lib/smarty/Smarty.class.php");

  /******************************************/


  /* Load :: Database connection */

     require_once("settings/dbCon.php");

  /******************************************/


  /* Define :: Globals & Constants */  
  
     //global $save_pages;
     global $xajax;
     global $getmonth;
     //global $timestamp;      
     global $lang_active;   
	 global $memcache; 
     global $tpl;
     //global $img_enlarge_title;
     global $module;
	 global $section;
	 global $subsection;
	 global $l;
	 global $user_data;
	 global $debug_mode; 
	 
     define("ROOT_DIR", "http://localhost/happify/");
     
	 //Enable Memcache?
     define("mod_memcache", 0);
	 define("memcache_duration", 500);   //needs to be changed in production
	 define("trigger_memcache_del", 0);   
	 define("trigger_session_del", 0);   
	 
	 //error handling
	 define("sql_error_select","One or more SQL SELECT errors occured.");
	 define("sql_error_modify","One or more SQL UPDATE errors occured.");
	 define("sql_error_exist","One or more SQL EXIST errors occured.");

     define("diff_max", 600); //// update last_online_time after 10 minutes

     /* DA_SCALE */
     define("da_min_waittime", 0);  //60*60*24*30; //1month waiting time for da_scale
	 define("max_items_da_scale", 20);  //5     number would also need to be changed in result.php!     

     /* BD_SCALE */
     define("bd_min_waittime", 0);  //60*60*24*7; //1week waiting time for bd_scale
	 define("max_items_bd_scale", 20);   //8

	 //redirect values	 
     if (isset($_GET["module"])) 		$module 		= $_GET["module"]; 		else $module 		= '';
     if (isset($_GET["section"])) 		$section 		= $_GET["section"]; 	else $section 		= '';
     if (isset($_GET["subsection"])) 	$subsection 	= $_GET["subsection"]; 	else $subsection 	= '';
  		 
  /******************************************/
 
    
  /* Load :: Libraries */
    
     require_once('./lib/classes/exist.php');
     require_once('./lib/classes/select.php');  
     require_once('./lib/classes/modify.php');
     //require_once('./lib/functions/replace.php');  
     //require_once('./lib/functions.php');
                          
  /******************************************/
      	 
	
  /* Load :: Current time & date */

     $timestamp = time();
     $mysqldate = date( 'Y-m-d H:i:s', time() );
                   
     $c_time = date("H:i",$timestamp);

     $c_date = date("d.m.Y",$timestamp);
     
  /******************************************/

  /* Load :: Tablenames AND browser identification */

     include('tables.php');

     include('browser.php');

  /******************************************/
    
  /* Login Status */

     $logon_true = '0';
     $l = Array();

     if ( isset($_COOKIE["ly"]) )  {  
          /* Call Method :: Explode the Cookie */
                   
             $l["token"] = substr($_COOKIE["ly"], 3, -35);           
             $l["pw"]    = substr($_COOKIE["ly"], -32);   

          /******************************************/

         $logon_true = 1;

     }   else $l["token"] = 0;
	 

  /******************************************/

              
  /* Load :: Caching System */
     
     require_once("settings/memcache.php");
                          
  /******************************************/
   
   
  //Logout
    if ( isset($_GET['module']))  { if ($_GET['module'] == 'logout' )    include('modules/logon/logout.php'); }
  
    
  /* Load :: Template settings */

     include('settings/template.php');
    
  /******************************************/
  
  
  /* Load :: XAJAX for asynchronous calls */
         
     require_once('./lib/functions/ajax_requests.php');
     
  /******************************************/
  

  /* Get UserData */
  
     if ( $logon_true == '1' )  include('./lib/functions/get_userdata.php');

   /******************************************/
              
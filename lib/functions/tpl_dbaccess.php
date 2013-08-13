<?php

  /* This functionality is necessary if you have smarty variables in your mysql data entries */
  
  /* initialized via:
   * 
   *        require_once('./lib/tpl_dbaccess.php');
   *
   *        $tpl->register_resource("db", array("db_template_blocks","db_timestamp","db_secure","db_trusted"));
   * 
   * 		$tpl->display('db:index.tpl');
   *          
   */
   
  function db_template_cms ($tpl_name, &$tpl_source, $smarty_obj)  {

      global $lang_active;  
	  global $set;

      $source = new SelectEntrys();
      
     // if ($cms_data == "") {

          $source->cols      = $_GET["section"];
          $source->table     = 'cms';
          $source->condition = " lang = '$lang_active' ";
          $source->limit     = "1";
    
          //if ($IE) $tpl_source = "<br>";
          $tpl_source .= $source->row();
    
          unset($source);
         // print_r($tpl_source);
          //TODO cache: check if it is older than 3 days and then refresh it and update cache object. otherwise leave it
    
          require_once('replace.php');
    
          $tpl_source = replaceBBcode($tpl_source, $set[0]["width_images"], 0);
          
      //    if (mod_memcache == 1)  $memcache->set('cms_ '.$_GET["section"], $tpl_source, false, memcache_duration);       
       //   else $_SESSION['cms_data'][$_GET["section"]]  = $tpl_source;   

     // }
                  
      return empty($tpl_source) ? false : true;

  }
 
  function db_timestamp($tpl_name, &$tpl_timestamp, $smarty_obj)  {

      $tpl_timestamp = time();
      return true;

  }

  function db_secure($tpl_name, $smarty_obj)  {
      return true;
  }

  function db_trusted($tpl_name, $smarty_obj)  {
  }

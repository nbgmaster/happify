<?php

  require_once("lib/xajax/xajax_core/xajax.inc.php");

  require_once("lib/smarty/Smarty.class.php");
 
  session_start();

  $tpl = new Smarty;

  require_once("dbCon.php");

  //define("ROOT_DIR", "http://localhost/happify/");
  
  //define("ROOT_DIR", "http://richter-stefan.info/aaa/");
  
  $xajax = new xajax("http://localhost/happify/index.server.php");
  $xajax->register(XAJAX_FUNCTION, "postdata");

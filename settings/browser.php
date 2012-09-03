<?php

  $browser = "";

  if (preg_match("/Opera/i", $_SERVER['HTTP_USER_AGENT'])) $browser = 'Opera'; 

  elseif (preg_match("/MSIE/i", $_SERVER['HTTP_USER_AGENT'])) $browser = 'IE';

  elseif (preg_match("/Netscape/i", $_SERVER['HTTP_USER_AGENT'])) $browser = 'Netscape'; 
  
  elseif(preg_match('/Firefox/i', $_SERVER['HTTP_USER_AGENT'])) $browser = 'Firefox'; 

  elseif(preg_match('/Chrome/i', $_SERVER['HTTP_USER_AGENT'])) $browser = 'Chrome'; 

  elseif(strstr($_SERVER['HTTP_USER_AGENT'], "U") and strstr($_SERVER['HTTP_USER_AGENT'], "Safari")) $browser = "Safari";

  elseif(strstr($_SERVER['HTTP_USER_AGENT'], "Mac") and strstr($_SERVER['HTTP_USER_AGENT'], "Firefox")) $browser = "FirefoxMac"; 

  elseif ($browser == "")  $browser = 'other';   

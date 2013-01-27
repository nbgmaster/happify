<?php

  //Get number of files in directory
  function countfiles($path) { 
    $handle = opendir($path); 
    $filecount = 0; 
    while ($res  = readdir($handle)) { 
      if (is_dir($res)) { 
      } else { 
        $filecount++; 
      } 
    } 
    return $filecount; 
  }  


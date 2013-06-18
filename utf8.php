
<?php

     //header('Content-Type: text/html; charset=utf-8');
	 
$val = array("key1" => 12, "key2" => "José Rodríguez", "key3" => true);
$output = json_encode($val);
echo "$output\n";
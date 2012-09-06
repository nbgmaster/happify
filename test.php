<?php 

$act_code = md5 ( uniqid ( rand() ) );
         $token    = uniqid(time());
		 
		 echo $act_code;
		 echo"<br>";
		 echo $token;

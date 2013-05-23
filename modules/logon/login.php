<?php

   /* redirect if login was successful 
    * actual login logic is in login.php function as it is down via XAJAX asynchronously */
   
   if ( isset ($_POST["submit_login"]) )  header(ROOT_DIR); 
<?php

		 //TODO testing

		 include("./lib/functions/fetch_blog.php");
	   
	  	 require_once("./classes/facebook.php");
		
		 Facebook::$CURL_OPTS[CURLOPT_SSL_VERIFYPEER] = false;
		 Facebook::$CURL_OPTS[CURLOPT_SSL_VERIFYHOST] = 2;
		
		 //TODO: create AppID for happify
		 $config = array(
		    'appId' => '193065620755770',
		    'secret' => '45b3cfe7a79e293357ddb8e3424bea28',
		  );
		
		 $facebook = new Facebook($config);
		 
		 			 			 
  	     require_once("./classes/modify.php");
	 			 			 
	     $blog = new ModifyEntry();
         $blog->table  = $table;
		 	  
		 $count = 0;
		 foreach ($ay_blog as $b_items) {
		 	
		 	$url  = ROOT_DIR.'blog/'.$b_items['permalink'].'.html';
 			 
			$fquery = 'SELECT comment_count, share_count, like_count FROM link_stat WHERE url = "'.$url.'"';
			$fparam = array( 'method' => 'fql.query', 'query' => $fquery );
			$fql = $facebook->api($fparam);
			
			//update database
            if ($fql[0]['like_count'] > $b_items['fb_likes'] || $fql[0]['comment_count'] > $b_items['fb_comments']) { 
            
		  	    $blog->changes   = " fb_likes = '".$fql[0]['like_count']."', fb_comments = '".$fql[0]['comment_count']."' ";
	            $blog->condition = " ID = '".$b_items['ID']."' ";
	
		        $blog->update();  
			
			}

		 }
		 		 
		 unset($blog);
 
		 
<?php

   if ($_GET['section'] != 'index') {
   	
	     $blog            = new SelectEntrys();
	     $blog->cols      = "ID, permalink, title_EN, message_EN";
	     $blog->table     = $tbl_blog;
		 $blog->condition =  "permalink = '".$_GET['section']."' ";
		 $blog->multiSelect     = 1;
		 $blog->limit = 1;
	     $ay_blog = $blog->row();
		 
		 if ( isset($ay_blog[0]) )  {
		 		
			 $page_load = 1;

			 //TODO languages
			 //TODO put in output file
             require_once('./lib/functions/replace.php');

             $ay_blog[0]['message_EN'] = replaceBBcode($ay_blog[0]['message_EN'], $set[0]["width_images"], 1);
       		
		     $tpl->assign('ay_blog', $ay_blog);
	
			 //$tpl->display("breadcrumb.tpl"); 
	
			 $tpl->display("modules/blog/detail.tpl"); 
		 
		 }
			 	
   }
   
   else {
   	
	     $blog            = new SelectEntrys();
	     $blog->cols      = "ID, permalink, title_EN, message_EN, category, pinterest_picture, pinterest_text, click_action, popup_title, url";
	     $blog->table     = $tbl_blog;
		 //$blog->condition =  "userID = '".$user_data['ID']."' ";
	     $blog->order     = 'date DESC';
	     $blog->multiSelect     = 1;
	     $ay_blog = $blog->row();
		 
		 $count = 0;		 
		 foreach ($ay_blog as $b_items) {
		 	
			$ay_blog[$count]['title_ser'] = urlencode($b_items['title_EN']);
			$ay_blog[$count]['text_ser']  = urlencode($b_items['pinterest_text']);

			$ay_blog[$count]['cat_str']  = $blog_getcat[$b_items['category']];
			
		    $count++;
	
		 }
		 
		 //TODO: write own script for it to store it in own database
		
		/*
	  	 require_once("./lib/classes/facebook.php");
		
		 Facebook::$CURL_OPTS[CURLOPT_SSL_VERIFYPEER] = false;
		 Facebook::$CURL_OPTS[CURLOPT_SSL_VERIFYHOST] = 2;
		
		 //TODO: create AppID for happify
		 $config = array(
		    'appId' => '193065620755770',
		    'secret' => '45b3cfe7a79e293357ddb8e3424bea28',
		  );
		
		 $facebook = new Facebook($config);
		  
		 $count = 0;
		 foreach ($ay_blog as $b_items) {
		 	
		 	$url  = ROOT_DIR.'blog/'.$b_items['permalink'].'.html';
 			 
			$fquery = 'SELECT comment_count, share_count, like_count FROM link_stat WHERE url = "'.$url.'"';
			$fparam = array( 'method' => 'fql.query', 'query' => $fquery );
			$fql = $facebook->api($fparam);
			 			 
		 	$ay_blog[$count]['likes'] = $fql[0]['like_count'];
		 	$ay_blog[$count]['comments'] = $fql[0]['comment_count'];
		
		    $count++;
		
		 }
		 
		 */

	     $tpl->assign('ay_blog', $ay_blog);
		  		  
		 $page_load = 1;
		  		  
    }
	

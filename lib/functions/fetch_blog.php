<?php
  
	     $blog            = new SelectEntrys();
	     $blog->cols      = "ID, permalink, title_EN, message_EN, category, pinterest_picture, pinterest_text, click_action, popup_title, url, fb_likes, fb_comments, visibility";
	     $blog->table     = $tbl_blog;
         
         $blog->condition =  "is_book = '$is_book'";                     
         if ($user_data['admin'] == 0) $blog->condition = $blog->condition .  " AND visibility = '1' ";     
         
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
		 
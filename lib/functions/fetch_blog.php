<?php

	     $blog            = new SelectEntrys();
	     $blog->cols      = "ID, permalink, title_EN, message_EN, category, pinterest_picture, pinterest_text, click_action, popup_title, url, fb_likes, fb_comments";
	     $blog->table     = $tbl_blog;
		 if (isset ($is_books) == true) $blog->condition =  "is_book = '1' ";
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
		 
<?php

   if ($_GET['section'] != 'index' AND $_GET['section'] != 'books') {

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

		 include("./lib/functions/fetch_blog.php");

	     $tpl->assign('ay_blog', $ay_blog);
		  		  
		 $page_load = 1;
		  		  
    }
	

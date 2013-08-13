<?php

  /* Initialize :: Template Data */
  
        $tpl = new Smarty;
        $tpl->debugging = false;
        //$tpl->caching = true;
        //$tpl->cache_lifetime = 120;
        $tpl->setTemplateDir('./tpl');
		$tpl->setCompileDir('./lib/smarty/templates_c');
		$tpl->setCacheDir('./lib/smarty/cache');

     /* Miscellaneous */

        $tpl->assign('root_dir', ROOT_DIR);  
        $tpl->assign('ssl_dir', SSL_DIR);  
        $tpl->assign('w_online', w_online);  
        $tpl->assign("logon", $logon_true);             
        $tpl->assign("debug_mode", $debug_mode);
             
        if (isset($_GET["IE"])) $tpl->assign('IE', $_GET["IE"]);                                 
        $tpl->assign('browser', $browser);
          
        if (isset($set[0]["keywords"]))  $tpl->assign("keywords", $set[0]["keywords"]);
           
        $tpl->assign('module', $module); 
        $tpl->assign('section', $section); 
        $tpl->assign('subsection', $subsection); 

        $tpl->assign('test', 'Test'); 
		        
     /******************************************/
     

     /* Tablenames :: Defined in settings/tables.php */

	 	$tpl->assign("tbl_diary", $tbl_diary);
		$tpl->assign("tbl_distorted_thoughts", $tbl_distorted_thoughts);
   	    $tpl->assign("tbl_checklist_categories", $tbl_checklist_categories);
		$tpl->assign("tbl_checklist_items", $tbl_checklist_items);
		$tpl->assign("tbl_da_scale_categories", $tbl_da_scale_categories);
		$tpl->assign("tbl_da_scale_items", $tbl_da_scale_items);
		$tpl->assign("tbl_da_scale_results", $tbl_da_scale_results);
		$tpl->assign("tbl_bd_scale_categories", $tbl_bd_scale_categories);
		$tpl->assign("tbl_bd_scale_items", $tbl_bd_scale_items);
		$tpl->assign("tbl_bd_scale_results", $tbl_bd_scale_results);
		$tpl->assign("tbl_users", $tbl_users);
		$tpl->assign("tbl_goals", $tbl_goals);
		$tpl->assign("tbl_happifiers", $tbl_happifiers);
						
     /******************************************/


     /* Folders */
     
        $tpl->assign('dir_img', ROOT_DIR."media/images/");
        $tpl->assign('dir_img_bbcode', ROOT_DIR."media/images/bbcode/");
        $tpl->assign('dir_img_file', ROOT_DIR."media/images/fileicons/");
        $tpl->assign('dir_js', ROOT_DIR."js/");

     /******************************************/


     /* Imagenames */

        //$tpl->assign('img_raquo', "<img src='".ROOT_DIR."media/images/raquo.gif' border='0'>");   // Image :: Raquo for small navi bar

        $tpl->assign('img_banner', 'banner.jpg');              // Image :: Banner

        $tpl->assign('img_bold', 'bold.gif');                  // Image :: BBcode Icon -> Bold
        $tpl->assign('img_italic', 'italic.gif');              // Image :: BBcode Icon -> Italic
        $tpl->assign('img_underline', 'underline.gif');        // Image :: BBcode Icon -> Underline
        $tpl->assign('img_center', 'center.gif');              // Image :: BBcode Icon -> Center
        $tpl->assign('img_block', 'block.gif');                // Image :: BBcode Icon -> Block
        $tpl->assign('img_url', 'url.gif');                    // Image :: BBcode Icon -> Link
        $tpl->assign('img_image', 'image.gif');                // Image :: BBcode Icon -> Image
        $tpl->assign('img_quote', 'quote.gif');                // Image :: BBcode Icon -> Quote
        $tpl->assign('img_list', 'list.gif');                  // Image :: BBcode Icon -> List
        $tpl->assign('img_expand_bbcode', 'expand.gif');       // Image :: BBcode Icon -> Expand
        
        $tpl->assign('img_jpg', 'jpg.gif');                    // Image :: Fileicon -> JPG
        $tpl->assign('img_gif', 'gif.gif');                    // Image :: Fileicon -> GIF
        $tpl->assign('img_doc', 'doc.gif');                    // Image :: Fileicon -> DOC
        $tpl->assign('img_xls', 'xls.gif');                    // Image :: Fileicon -> XLS
        $tpl->assign('img_ppt', 'ppt.gif');                    // Image :: Fileicon -> PPT
        $tpl->assign('img_zip', 'zip.gif');                    // Image :: Fileicon -> ZIP
        $tpl->assign('img_rar', 'rar.gif');                    // Image :: Fileicon -> RAR
        $tpl->assign('img_pdf', 'pdf.gif');                    // Image :: Fileicon -> PDF
        $tpl->assign('img_txt', 'txt.gif');                    // Image :: Fileicon -> TXT

        $tpl->assign('img_box_top', 'box_top.gif');            // Image :: Box -> Header
        $tpl->assign('img_box_main', 'box_main.gif');          // Image :: Box -> Main Content

     /******************************************/

     
     /* Links */

        //if (isset ($_GET['nid']) ) $page_B = get_page($tbl_blog, $_GET['nid'], $set[0]["perpage_blog"]);       
        //$navi_ref["news"]      = ROOT_DIR."blog/";
                
     /******************************************/


     /* Initialize and Load :: Choosen Language */
     
        //if(isset($user_data["language"])) $lang_active = $user_data["language"];
        //elseif

		if ( !isset($_COOKIE["lang"]) )  { 
        
             switch ( substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2) ) {
                      case 'de': $lang_active = "DE"; break;
                      case 'en': $lang_active = "EN"; break; 
                      default:   $lang_active = "DE";
             }
             
        }

		else if ( isset ($_COOKIE["lang"]) ) {
			
			if ( $_COOKIE["lang"] == '1' ) $lang_active = 'DE';
			if ( $_COOKIE["lang"] == '2' ) $lang_active = 'EN';
				
		}	

        include('settings/lang_'.$lang_active.'.php');

        $tpl->assign('lang_java', "lang_".$lang_active);
        $tpl->assign('lang', $lang_active);
   
              //if (isset($set[0]["title_hp"])) $tpl->assign("title_hp", $set[0]["title_hp"]);
             //if (isset($set[0]["main_title"])) $tpl->assign("main_title", $set[0]["main_title"]);                         
        //$tpl->assign("lang", $lang_active); 

    /******************************************/
    

    // Block modification
       $block["lang_active"] = $lang_active; 
       $tpl->assign('block', $block);

    
     /* HOME :: Title & Description */

        if (isset($main_description)) $tpl->assign("main_description", $main_description);
        if (isset($set[0]["main_description"])) $tpl->assign("main_description2", $set[0]["main_description"]);
        if (isset($set[0]["main_description_EN"])) $tpl->assign("main_description2_EN", $set[0]["main_description_EN"]);
        
     /******************************************/
     
     
  /* Initialize :: Language Data 
               
        $tpl->assign('deactivated_notice_00', $deactivated_notice_00);
        $tpl->assign('deactivated_notice_01', $deactivated_notice_01);
        $tpl->assign('deactivated_notice_02', $deactivated_notice_02);
        $tpl->assign('deactivated_notice_03', $deactivated_notice_03);
        $tpl->assign('deactivated_notice_04', $deactivated_notice_04);
        $tpl->assign('deactivated_notice_05', $deactivated_notice_05);
        
     ******************************************/
     


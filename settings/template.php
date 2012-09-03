<?php

  /* Initialize :: Template Data */
  
        $tpl = new Smarty;
        $tpl->debugging = false;
        //$tpl->caching = false;
        //$tpl->cache_lifetime = 120;
        $tpl->setTemplateDir('./tpl');
		$tpl->setCompileDir('./lib/smarty/templates_c');
		$tpl->setCacheDir('./lib/smarty/cache');

     /* Miscellaneous */

        $tpl->assign('root_dir', ROOT_DIR);  
        $tpl->assign("logon", $logon_true);             
        $tpl->assign("debug_mode", "debug_mode");
             
        if (isset($_GET["IE"])) $tpl->assign('IE', $_GET["IE"]); 

        $tpl->assign("c_year", C_YEAR);
        $tpl->assign("c_year_copy", C_YEAR_COPY);
                     
        $tpl->assign("submit_name", "submit");
        
        if (isset($set[0]["keywords"]))  $tpl->assign("keywords", $set[0]["keywords"]);
           
        if (isset($_GET["module"])) $tpl->assign('module', $_GET["module"]); 
        if (isset($_GET["cat"])) $tpl->assign('cat', $_GET["cat"]);
        if (isset($_GET["do"])) $tpl->assign('do', $_GET["do"]); 
        if (isset($_GET["sid"])) $tpl->assign('sid', $_GET["sid"]);        
        //$tpl->assign('bid', $bid);  
                              
        //$tpl->assign("rss_blog_status", $block["home"]["status"]);
        //$tpl->assign("rss_gallery_status", $block["gallery"]["status"]);
                                
        $tpl->assign('browser', $browser);
                       
        //$tpl->assign("visiters_total", $set[0]["visiters_total"]);
        //$tpl->assign("visiters_today", $visiters_today);
        //$tpl->assign("visiters_yesterday", $visiters_yesterday);
        
     /******************************************/
     

     /* Tablenames :: Defined in settings/tables.php */

	 	$tpl->assign("tbl_diary", $tbl_diary);
		$tpl->assign("tbl_distorted_thoughts", $tbl_distorted_thoughts);
   	    $tpl->assign("tbl_checklist_categories", $tbl_checklist_categories);
		$tpl->assign("tbl_checklist_items", $tbl_checklist_items);
		$tpl->assign("tbl_da_scale_categories", $tbl_da_scale_categories);
		$tpl->assign("tbl_da_scale_items", $tbl_da_scale_items);
		$tpl->assign("tbl_da_scale_results", $tbl_da_scale_results);
		$tpl->assign("tbl_users", $tbl_users);
		
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


     /* Small navibar properties 

        if ($_GET["module"] == "cms")  {

            $linker  = $_GET["cat"];

        }

        else if ($_GET["do"] == "changecms")  {

            $linker  = $_GET["module"];
            $linker2 = $_GET["cat"]."_edit";

        }
        
        else  {

            $linker  = $_GET["module"];
            $linker2 = $_GET["do"];

        } 

     ******************************************/


     /* Links */

        if (isset ($_GET['nid']) ) $page_B = get_page($tbl_blog, $_GET['nid'], $set[0]["perpage_blog"]);

        
        $navi_ref["news"]      = ROOT_DIR."blog/";
                
                
        
        $navi_ref["admin"]      = ROOT_DIR."admin/";
        $navi_ref["home"]       = ROOT_DIR;
        $navi_ref["about"]      = ROOT_DIR."cms/about/";
        $navi_ref["impressum"]  = ROOT_DIR."cms/imprint/";
        /*
        $navi_ref2["newblog"]        = ROOT_DIR."admin/blog/new/";
        $navi_ref2["editblog_ori"]   = ROOT_DIR."admin/blog/edit/".$_GET["nid"];
        $navi_ref2["editblog"]       = ROOT_DIR."blog/".$page_B."/".$_GET[nid]."/#b".$_GET[nid];
        $navi_ref2["about_edit"]     = ROOT_DIR."admin/changecms/about/"; 
        $navi_ref2["imprint_edit"]   = ROOT_DIR."admin/changecms/imprint/";
        $navi_ref2["settings"]       = ROOT_DIR."admin/settings/";
        
        $tpl->assign('navi_link2', $navi_ref["$linker"]);
        $tpl->assign('navi_link3', $navi_ref2["$linker2"]);
        
        if ($module == 'admin' && $do == 'editblog')    $tpl->assign('navi_link4', $navi_ref2["editblog_ori"]);

                                                                    
        $tpl->assign('ref_home', $navi_ref["home"]);
        $tpl->assign('ref_about', $navi_ref["about"]);
        $tpl->assign('ref_imp', $navi_ref["impressum"]);
        $tpl->assign('href_newblog', $navi_ref2["newblog"]);            // Link to page :: Write new Blog entry
        $tpl->assign('href_editblog', $navi_ref2["editblog_ori"]);      // Link to page :: Edit Blog entry
        $tpl->assign('href_editabout', $navi_ref2["about_edit"]);       // Link to page :: Edit About
        $tpl->assign('href_editimp', $navi_ref2["imprint_edit"]);       // Link to page :: Edit Impressum
        $tpl->assign('href_editset', $navi_ref2["settings"]);           // Link to page :: Edit Settings
        */

     /******************************************/


     /* Initialize and Load :: Choosen Language */
     
     
        if ( !isset($_COOKIE["lang"]) )  { 
        
             switch ( substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2) ) {
                      case 'de': $lang_browser = "DE"; break;
                      case 'en': $lang_browser = "EN"; break; 
                      default:   $lang_browser = "DE";
             }
             
        }

        else if ( $_COOKIE["lang"] == '2' || $lang_browser == 'DE' )  {

             include('settings/lang_german.php');

             $tpl->assign('lang_java', "lang_german");
             $tpl->assign('lang', "german");
   
             $lang_active = "DE";
                        
             if (isset($set[0]["title_hp"])) $tpl->assign("title_hp", $set[0]["title_hp"]);
             if (isset($set[0]["main_title"])) $tpl->assign("main_title", $set[0]["main_title"]);
                          
        }

        else if ( $_COOKIE["lang"] == '3' || $lang_browser == 'EN' )  {   

             include('settings/lang_english.php');

             $tpl->assign('lang_java', "lang_english");
             $tpl->assign('lang', "english");

             $lang_active = "EN";

             //$main_description = $main_description_EN;

             if (isset($set[0]["title_hp"])) $tpl->assign("title_hp", $set[0]["title_hp_EN"]);
             if (isset($set[0]["main_title"])) $tpl->assign("main_title", $set[0]["main_title_EN"]);
                             
        }

		$lang_active = "EN";
        
        //$tpl->assign("lang", $lang_active); 

    /******************************************/
    

    // Block modification
       $block["lang_active"] = $lang_active; 
       $tpl->assign('block', $block);

    
    
    /* Date output 
    
        $month_full = $getmonth[$month_full];
        $c_date = $Fday." ".$month_full." ".$Fyear;
     
        $tpl->assign("c_date", $c_date);
        
        if ($lang_active == "DE") $tpl->assign("twitter_time", $twitter_preposition.' '.$twitter_time);
        if ($lang_active == "EN") $tpl->assign("twitter_time", $twitter_time.' '.$twitter_preposition);
        
        if ($lang_active == 'DE') $twitter_msg = replaceBBcode($set[0]["twitter"], $width_images, 1);
        if ($lang_active == 'EN') $twitter_msg = replaceBBcode($set[0]["twitter_EN"], $width_images, 1);     

        $tpl->assign('twitter_msg', $twitter_msg);
        
     ******************************************/
    
    
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
     
      
     /* Navigation :: Linknames 
                     
        $tpl->assign('navi_index2', $navi_names["$linker"]);
        $tpl->assign('navi_index3', $navi_names2["$linker2"]);
        $tpl->assign('navi_index4', $navi_names3["$linker2"]);
        
        $tpl->assign('navi_home', $navi_names["home"]);
        $tpl->assign('navi_admin', $navi_names["module"]);
        $tpl->assign('title_admin', $navi_names["admin"]);
        $tpl->assign('navi_about', $navi_names["about"]);
        $tpl->assign('navi_imp', $navi_names["imprint"]);
        $tpl->assign('about_edit', $navi_names2["about_edit"]);
        $tpl->assign('imp_edit', $navi_names2["imprint_edit"]);
        $tpl->assign('set_edit', $navi_names2["settings"]);
               
     ******************************************/
   
     
     /* CMS Style definitions */
     
        $tpl_main_start  = "<table cellspacing='0' cellpadding='0' width='90%' class='table_005'><tr><td class='blog_msg'>";
        $tpl_head_start  = "<div class='navimenu' style='border-bottom:1px solid #000;'><h2 class='navimenu-title'>";
        $tpl_head_end    = "</h2></div>";
        $tpl_main_end    = "</td></tr></table>";
        $tpl_table_start = "<table class='table_016'><tr><td valign='top'>";
        $tpl_table_start_max = "<table width='90%' class='table_016'><tr><td valign='top'>";
        $tpl_table_lineheight = "<table width='98%' class='table_017'><tr><td valign='top'>";
        $tpl_table_start_max_20z80 = "<table width='98%' class='table_016'><tr><td valign='top' width='20%'>";
        $tpl_table_start_max_25z75 = "<table width='98%' class='table_016'><tr><td valign='top' width='25%'>";
        $tpl_table_start_max_30z70 = "<table width='98%' class='table_016'><tr><td valign='top' width='30%'>";
        $tpl_table_default_max_30z70 = "<table width='100%'><tr><td valign='top' width='30%'>";
        $tpl_table_default2_max_30z70 = "<table width='100%' cellspacing='0' cellpadding='3' class='table_014'><tr><td valign='top' width='30%'>";
        $tpl_table_start_max_40z60 = "<table width='98%' class='table_016'><tr><td valign='top' width='40%'>";
        $tpl_table_start_max_50z50 = "<table width='98%' class='table_016'><tr><td valign='top' width='50%'>";
        $tpl_table_start_max_60z40 = "<table width='98%' class='table_016'><tr><td valign='top' width='60%'>";
        $tpl_table_start_max_70z30 = "<table width='98%' class='table_016'><tr><td valign='top' width='70%'>";
        $tpl_table_start_max_75z25 = "<table width='98%' class='table_016'><tr><td valign='top' width='75%'>";
        $tpl_table_start_max_80z20 = "<table width='98%' class='table_016'><tr><td valign='top' width='80%'>";

        $tpl_table_end   = "</td></tr></table>";
        $tpl_new_column  = "</td><td valign='top'>";
        $tpl_new_column_Ralign  = "</td><td valign='top' align='right' width='20%'>";
        $tpl_new_row     = "</td></tr><tr><td valign='top'>";
        
        $tpl_table_left  = "<table cellspacing='0' cellpadding='0' width='96%' class='table_018'><tr><td align='left' class='td_008' valign='top'>";
        $tpl_table_right = "</td><td style='height:100%' align='center' valign='top'><table width='100%' cellspacing='0' cellpadding='8' style='height:100%'><tr><td class='blog_msg' style='height:100%' valign='top'><table cellspacing='0' cellpadding='0' width='100%'><tr><td>";
        $tpl_ref_content = "<table cellspacing='0' cellpadding='0' width='100%'><tr><td class='td_013'>";
        
        $tpl->assign('tpl_head_start', $tpl_head_start);
        $tpl->assign('tpl_head_end', $tpl_head_end);
        $tpl->assign('tpl_main_start', $tpl_main_start);
        $tpl->assign('tpl_main_end', $tpl_main_end);                    
        $tpl->assign('tpl_table_start', $tpl_table_start);
        $tpl->assign('tpl_table_lineheight', $tpl_table_lineheight);
        $tpl->assign('tpl_table_start_max', $tpl_table_start_max);
        $tpl->assign('tpl_table_start_max_20z80', $tpl_table_start_max_20z80);
        $tpl->assign('tpl_table_start_max_25z75', $tpl_table_start_max_25z75);
        $tpl->assign('tpl_table_start_max_30z70', $tpl_table_start_max_30z70);
        $tpl->assign('tpl_table_default_max_30z70', $tpl_table_default_max_30z70);
        $tpl->assign('tpl_table_default2_max_30z70', $tpl_table_default2_max_30z70);
        $tpl->assign('tpl_table_start_max_40z60', $tpl_table_start_max_40z60);
        $tpl->assign('tpl_table_start_max_50z50', $tpl_table_start_max_50z50);
        $tpl->assign('tpl_table_start_max_60z40', $tpl_table_start_max_60z40);
        $tpl->assign('tpl_table_start_max_70z30', $tpl_table_start_max_70z30);
        $tpl->assign('tpl_table_start_max_75z25', $tpl_table_start_max_75z25);
        $tpl->assign('tpl_table_start_max_80z20', $tpl_table_start_max_80z20);
        $tpl->assign('tpl_table_end', $tpl_table_end);
        $tpl->assign('tpl_new_column', $tpl_new_column);
        $tpl->assign('tpl_new_column_Ralign', $tpl_new_column_Ralign);
        $tpl->assign('tpl_new_row', $tpl_new_row);
        
        $tpl->assign('tpl_table_left', $tpl_table_left);
        $tpl->assign('tpl_table_right', $tpl_table_right);
        $tpl->assign('tpl_ref_content', $tpl_ref_content);

     /******************************************/
     
      /* Form extension */  
                    
         if ($module == 'admin' && $do == 'newblog')  $tpl->assign('form_extension', "1");
         if ($module == 'admin' && $do == 'editblog') $tpl->assign('form_extension', "1");  
        
      /******************************************/       

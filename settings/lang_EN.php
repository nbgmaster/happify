<?php

  //TODO cache strings locally

  /* Header Nav */
  
        $tpl->assign('header_nav_li1', 'Analyze and Understand');   
        $tpl->assign('header_nav_li2', 'Learn and Improve');   
        $tpl->assign('header_nav_li3', 'Pursue Personal Fulfillment');   
		
  /* Initialize :: Language Data */

        $deactivated_notice_00 = "Page information";
        $deactivated_notice_01 = "This page is currently not denotable.";
        $deactivated_notice_02 = "It can have one of the following reasons:";
        $deactivated_notice_03 = "The page is currently under construction.";
        $deactivated_notice_04 = "The page is currently revised.";
        $deactivated_notice_05 = "The page is not existing (anymore). (invalid link)";

     /* Get Date & time values */

        $getmonth = array(1=>"January",
                          2=>"February",
                          3=>"March",
                          4=>"April",
                          5=>"May",
                          6=>"June",
                          7=>"July",
                          8=>"August",
                          9=>"September",
                          10=>"October",
                          11=>"November",
                          12=>"December");
                          
     /******************************************/

           
     /* Blog */
           
       $blog_getcat = array('Health'=>"Health",
              'PD'=>"Personal Development",
              'Inspiring'=>"Inspiring",
              'Depression'=>"Depression",
              'Positive'=>"Positive Thinking",
              'SF'=>"Self-fullfillment",
              'Productive'=>"Productiveness");

       //$tpl->assign('blog_getcat', $getcat);
					              
     /******************************************/
 

            
     /* BD SCALE */
     
        $bd_score_severity[0] = "This indicates that you are currently happy with your life and have no signs of a depression.";
        $bd_score_severity[1] = "This indicates that you are currently not depressed but not fully happy with your life.";
        $bd_score_severity[2] = "This indicates that you currently have a mild depression.";
        $bd_score_severity[3] = "This indicates that you currently have a moderate depression.";
        $bd_score_severity[4] = "This indicates that you currently have a severe depression.";    
        $bd_score_severity[5] = "This indicates that you currently have an extreme depression.";    
	       	                   
        $score_interpretation['happy'] = "Happy!";
        $score_interpretation['unhappy'] = "unhappy!";		
        $score_interpretation['mild'] = "Use the Dysfunctional Attitude Test to identify reasons for your mood swings. Then improve your mood by setting goals and fighting your distorting thoughts.";
        $score_interpretation['moderate'] = "moderate!";		
        $score_interpretation['severe'] = "severe!";
        $score_interpretation['extreme'] = "extreme!";		
        
		$score_interpretation['improved'] = "Great!";
		$score_interpretation['deteriorated'] = "Bad!";		
              
     /******************************************/

     
     /* DA SCALE */
     
       $da_reasons[0] = 'Approval';
       $da_reasons[1] = 'Love';
       $da_reasons[2] = 'Achievement';	   
       $da_reasons[3] = 'Perfectionism';	   
       $da_reasons[4] = 'Entitlement';
       $da_reasons[5] = 'Omnipotence';	   
       $da_reasons[6] = 'Autonomy';	   
	   	        
       $da_score_interpretation['approval']['description'] = "Tendency to measure your self-esteem based on how people react to you and what they think of you";
       $da_score_interpretation['love']['description'] = "Tendency to base your worth on whether or not you are loved";
       $da_score_interpretation['achievement']['description'] = "Tendency to see yourself as a commodity in the marketplace and workaholic<p></p>Tendency to think your sense of self-worth and your capacity for joy are dependent on your productivity";
       $da_score_interpretation['perfectionism']['description'] = "Tendency to perfectionism, to demand perfection in yourself";
       $da_score_interpretation['entitlement']['description'] = "Tendency to feel 'entitled' to things (success, love, happiness, etc.) because of your inherent goodness or hard work";
       $da_score_interpretation['omnipotence']['description'] = "Tendency to see yourself as the center of your personal universe to hold yourself responsible for much of what goes on around you<p></p>Tendency to blame yourself inappropriately for the negative actions and attitudes of others who are not really under your control";
       $da_score_interpretation['autonomy']['description'] = "Tendency to find happiness within yourself";
              
     /******************************************/
           
                                 						  
     /* New AAA Names */
     
        $tpl->assign('titlebar_blog', 'Blog');
        $tpl->assign('titlebar_admin', 'Administration');
        $tpl->assign('titlebar_products', 'Products');
        $tpl->assign('titlebar_services', 'Services');
        $tpl->assign('titlebar_teamlist', 'List');
        $tpl->assign('titlebar_home', 'Home');
        $tpl->assign('titlebar_overview', 'Overview');

        $tpl->assign('team_contact', 'Contact information:');
        $tpl->assign('team_email', 'Email:');
        $tpl->assign('team_phone', 'Phone:');
                
     /******************************************/
     
     
     /* Navigation :: Linknames */

        $navi_names["admin"]     = "Administration";
        $navi_names["home"]      = "Home";
        $navi_names["about"]     = "About me";
        $navi_names["imprint"]   = "Imprint";

        $navi_names2["newblog"]      = "Write new blog entry";
        $navi_names2["editblog"]     = "Blog";

        $navi_names2["about_edit"]     = "Edit about me";
        $navi_names2["imprint_edit"]   = "Edit imprint";
        $navi_names2["settings"]       = "Edit settings";
        
        $navi_names3["editblog"]     = "Edit blog entry";

     /******************************************/



     /* Language :: Names */

        $tpl->assign('lang_name_1', 'German');
        $tpl->assign('lang_name_2', 'English');
        $tpl->assign('title_flag1', 'Click here to display the website in German');
        $tpl->assign('title_flag2', 'Click here to display the website in English');
        
     /******************************************/


     /* Left Frame */

        $tpl->assign('left_settings', 'Settings');
        $tpl->assign('left_design', 'Design');
        $tpl->assign('left_lang', 'Language');
        $tpl->assign('left_admin', 'Administration');
        $tpl->assign('left_user', 'Username');
        $tpl->assign('left_pw', 'Password');

        $tpl->assign('left_login', 'GO');
        $tpl->assign('left_logout', 'Logout');

        $tpl->assign('logon_failed', "Login failed!");
        $tpl->assign('logon_greeting', 'Hello');
        $tpl->assign('twitter_title', 'Status message');
        $twitter_preposition = "ago";
        $tpl->assign('title_visiter', 'Visitors');
 
        $tpl->assign('v_today', 'Today:');
        $tpl->assign('v_yesterday', 'Yesterday:');
        $tpl->assign('v_total', 'Total:');
                                
        $tpl->assign("blog_comments_l", "Blog (comments)"); 
        $tpl->assign("left_blog_comments_head", "Blog :: Newest comments"); 
        $tpl->assign("comments", "Comment(s)"); 
                                        
     /******************************************/


     /* Blog */

        //$tpl->assign('blog_new', $navi_names2["newblog"]);
        //$tpl->assign('gal_new', $navi_names2["newgal"]);  
        $tpl->assign('blog_edit', 'Edit entry');
        $tpl->assign('blog_del', 'Delete entry');
        $tpl->assign('confirm_delete', 'Really remove this entry?');
        $tpl->assign('toogle_admin', 'Adminoptions');
        
        $img_enlarge_title = "Show picture in original size in a new window";

     /******************************************/
     
     
     /* Page Navi */

        $tpl->assign('sides_total', 'of');     
        $tpl->assign('sides', 'Pages');     
        $blog_navi = 'Blog :: Page navigation';
        $gal_navi  = 'Gallery :: Page navigation';


     /* Formular Main */

         $tpl->assign('preview_mainform', 'Preview');
         $tpl->assign('submit_mainform', 'Submit entry');
         $tpl->assign('f_title', 'Title');
         $tpl->assign('f_extension_title', 'English title');
         $tpl->assign('f_msg', 'German version');       
         $tpl->assign('f_extension_msg', 'English version');     
         $tpl->assign('input_folder', 'Image directory');   
         $tpl->assign('f_options_o1_gal', 'Display gallery:');          

     /******************************************/


     /* Formular Main */
     
        $tpl->assign('f_options_title', 'Options');     
        $tpl->assign('f_options_o1', 'Display news:'); 
        $tpl->assign('f_options_o1_yes', 'Yes'); 
        $tpl->assign('f_options_o1_no', 'No'); 
        $tpl->assign('f_options_o2', 'Activate comments:'); 
        $tpl->assign('f_options_o2_yes', 'Yes'); 
        $tpl->assign('f_options_o2_no', 'No'); 
        $tpl->assign('f_options_o3', 'Start date:'); 
        $tpl->assign('bid_invisible', 'This blog entry is currently not visible for visiters');
         
     /******************************************/
     
    
     /* Formular Comments */

         $tpl->assign('commentsS_title', 'Display comments');
         $tpl->assign('commentsW_title', 'Write comment');     
         $tpl->assign('submit_comform', 'Submit new comment');
         $tpl->assign('submit_comform_edit', 'Edit comment');
         $tpl->assign('f_name', 'Name');
         $tpl->assign('f_msg_c', 'Comment');
         $tpl->assign('com_name', 'wrote');         
         $tpl->assign('title_edit_com', 'Edit this comment');   
         $tpl->assign('title_del_com', 'Delete this comment');

         $tpl->assign('spam_01', 'Sorry, you commented only recently to this blog entry.');
         $tpl->assign('spam_02', 'Please try it again at a later date. ');
         
         $tpl->assign('f_code', 'Code');
         $tpl->assign('f_codeB', 'Generate new code');
         $tpl->assign('error_code', 'Sorry, the code you have entered was not valid.');
         
         $name_guest = 'Guest';
                                
     /******************************************/


     /* Toogle title */

        $toggle_expand = "Click here to fade in attachments";
        $toggle_expandB = "Click here to fade in admin options";        
        $toggle_expandC = "Click here to fade in comments";
        $toggle_expandD = "Click here to fade in submit form";
        $toggle_collapse = "Click here to fade out attachments";
        $toggle_collapseB = "Click here to fade out admin options";
        $toggle_collapseC = "Click here to fade out comments";
        $toggle_collapseD = "Click here to fade out submit form";
        
        $tpl->assign('toggle_expand', $toggle_expand);
        $tpl->assign('toggle_expandB', $toggle_expandB);
        $tpl->assign('toggle_expandC', $toggle_expandC);
        $tpl->assign('toggle_expandD', $toggle_expandD);
        $tpl->assign('toggle_collapse', $toggle_collapse);
        $tpl->assign('toggle_collapseB', $toggle_collapseB);
        $tpl->assign('toggle_collapseC', $toggle_collapseC);
        $tpl->assign('toggle_collapseD', $toggle_collapseD);
        
        $tpl->assign('toggle_admin', "Adminoptions");

     /******************************************/
     
     /* Title boxes :: BBCode */

        $mainform_info = "Highlight desired text and then choose a particular formatting.";

        $tpl->assign('mainform_info', $mainform_info);

        $tpl->assign('title_bold', 'bold text');
        $tpl->assign('title_italic', 'italic text');
        $tpl->assign('title_underline', 'underlined text');
        $tpl->assign('title_center', 'centered text');
        $tpl->assign('title_block', 'handprinted text');
        $tpl->assign('title_url', 'Insert Hyperlink');
        $tpl->assign('title_image', 'Insert Image');
        $tpl->assign('title_quote', 'Insert Quotation');
        $tpl->assign('title_list', 'Insert List');
        $tpl->assign('title_expand', 'Show extended bbcode functions');
        
        $tpl->assign('bbcode_size', 'Textsize');
        $tpl->assign('bbcode_size_small', 'small');
        $tpl->assign('bbcode_size_middle', 'middle');
        $tpl->assign('bbcode_size_big', 'big');
        $tpl->assign('bbcode_size_huge', 'huge');
        $tpl->assign('bbcode_color', 'Textcolor');

     /******************************************/


     /* Title boxes :: Filecons */

        $tpl->assign('title_jpg', 'JPG-Image');
        $tpl->assign('title_gif', 'GIF & PNG - Image');
        $tpl->assign('title_doc', 'Word-File');
        $tpl->assign('title_xls', 'Excel-File');
        $tpl->assign('title_ppt', 'Powerpoint-File');
        $tpl->assign('title_zip', 'ZIP-Archive');
        $tpl->assign('title_rar', 'RAR-Archive');
        $tpl->assign('title_pdf', 'PDF-File');
        $tpl->assign('title_txt', 'Textfile');

     /******************************************/


     /* Attachment */

        $tpl->assign('attach_file', 'Optional: Attach File');
        $tpl->assign('attach_maxsize', 'Maximal Filesize:');
        $tpl->assign('attach_del', 'Optional: Remove attached files (Enable Checkbox)');
        $tpl->assign('attach_format', 'Permitted Fileformats');
        $tpl->assign('attach_data', 'This entry contains file attachments');
        $tpl->assign('attach_name', 'File attachment');
        $tpl->assign('attach_del', 'delete');
        
     /******************************************/


     /* Administration :: Settings */

        $set_head_000 = "Enable / Disable blocks";

        $tpl->assign('set_head_000', $set_head_000);

        $tpl->assign('set_head_001', "Current Profile");

        $tpl->assign('set_profile_col_01', "German");
        $tpl->assign('set_profile_col_02', "English");
        $tpl->assign('set_profile_col_03', "Value");
        $tpl->assign('set_profile_col_04', "Delete");
        $tpl->assign('set_profile_col_05', "New entry (DE)");
        $tpl->assign('set_profile_col_06', "New entry (EN)");
        $tpl->assign('set_profile_col_07', "Display");
        
        $tpl->assign('set_head_002', "Interesting articles in the WWW");
        $tpl->assign('set_head_002b', "Interesting articles");
        $tpl->assign('set_references_col_01', "Link");
        $tpl->assign('set_references_col_02', "Description (DE)");
        $tpl->assign('set_references_col_03', "New link");
        $tpl->assign('set_references_col_04', "Description (EN)");

        $tpl->assign('set_head_003', "Design");
        $tpl->assign('set_design_col_01', "Color code (Hex)");
        $tpl->assign('set_design_col_02', "Image folder");
        $tpl->assign('set_design_col_03', "Neues Design");
        $tpl->assign('set_design_col_04', "New Design");

        $tpl->assign('set_head_004', "Miscellaneous");

        $tpl->assign("set_root", "Main directory");
        $tpl->assign('set_title_hp', "Homepage title (DE)");
        $tpl->assign('set_title_hp_EN', "Homepage title (EN)");
        $tpl->assign('set_main_title', "Front page :: Title (DE)");
        $tpl->assign('set_main_title_EN', "Front page :: Title (EN)");
        $tpl->assign('set_main_description', "Front page :: Description (DE)");
        $tpl->assign('set_main_description_EN', "Front page :: Description (EN)");
        $tpl->assign('set_keywords', "Keywords (Search engine)");
        $tpl->assign('set_mail', "Email adress");
        $tpl->assign('set_pp_blog', "Blog entrys per page");
        $tpl->assign('set_pp_users', "Users per page");
        $tpl->assign('set_pp_comments', "Comments per page");
        $tpl->assign('set_time_ban', "Time ban comments (minutes)");

        $tpl->assign('set_visiters1', "Visiters: delete after X min");
        $tpl->assign('set_visiters2', "Visiters: new count after X min");                        
        $tpl->assign('set_more', "More");
        
        $tpl->assign('twitter_title_DE', 'Statusnachricht (DE)');
        $tpl->assign('twitter_title_EN', 'Statusnachricht (EN)');

     /******************************************/


     /* Administration :: Links */

        $tpl->assign('set_head_005', "Categories");
        $tpl->assign('links_col_01', "Link");
        $tpl->assign('links_col_02', "Description (DE)");
        $tpl->assign('links_col_03', "Description (EN)");
        
     /******************************************/
     


            
     /* Links Section */ 
 
        $tpl->assign("links_categories_title", "Links :: Category"); 
        $tpl->assign("links_categories_option01", "View all");       
                     
     /******************************************                  
      *      
      *
      * NewStrings */
      
        $tpl->assign("home_more1", "More own products");   
        $tpl->assign("home_more2", "More marketing products");          
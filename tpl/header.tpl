<!DOCTYPE html>
<xml version="1.0" encoding="UTF-8">
<html class="no-js gtMobile isFull" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>Happify | Make every day a happy and fulfilling day</title>
<meta name="description" content="Happify helps you to make every day a happy and fulfilling day">
<meta name="keywords" content="Happify, happiness, mental areas, personal growth, fulfillment, depression, burnout, unhappy, distorted thinking, thoughts, mind, positive thinking, mind-fucked, cognitive therapy, mood, mood swings, antidepressant, drugs, healthy, lifestyle, joy, procrastination, personal, development, personal, growth">
<meta name="copyright" content="(c) 2013 Copyright: Happify Inc.">

<link rel="apple-touch-icon" href="">
<meta name="google-site-verification" content="">
<meta name="bitly-verification" content="">  

<link rel="shortcut icon" href="{$root_dir}media/images/favicon.ico" type="image/x-icon">

<meta property="fb:app_id" content="">
<meta property="og:site_name" content="Happifier.info">
<meta property="og:url" content="http://www.happifier.info/">
<meta property="og:title" content="Happify helps you to make every day a happy and fulfilling day">
<meta property="og:type" content="Happifier.info">
<meta property="og:image" content="http://happifier.info/media/images/favicon.ico">
  
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/reset.css">
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/main.css">
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/subsites.css">
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/logon.css">
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/jquery-ui-1.8.23.custom.css"> 
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/forum.css">   

<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/jquery.dropdown.css">

<link rel="stylesheet" type="text/css" media="all"  href="{$root_dir}media/css/pinterest.css">
<link rel="stylesheet" type="text/css" media="all"  href="{$root_dir}media/css/colorbox.css">


          
<!--script type="text/javascript" src="{$root_dir}js/jquery.js"></script-->
<!--http://jqueryui.com/demos/button/#radio-->
<!--TODO store on own server -->
<!-- jquery 1.8.0 min worked so far, changed .live to .on in colorbox-min and login_register // TESTS required -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script type="text/javascript" src="{$dir_js}jquery-ui-1.8.23.custom.min.js"></script>
<script type="text/javascript" src="{$dir_js}change_settings.js"></script> 
<script type="text/javascript" src="{$dir_js}login_register.js"></script> 

<script type="text/javascript" src="{$dir_js}jquery.flexibleArea.js"></script>

<script type="text/javascript" src="{$dir_js}jquery.dropdown.js"></script> 

<script type="text/javascript"  src="{$dir_js}jquery.colorbox-min.js"></script>
<script type="text/javascript"  src="{$dir_js}jquery.masonry.min.js"></script>
<script type="text/javascript"  src="{$dir_js}pinterest.js"></script>


</head>

{if $logon != 1 AND $w_online == 1}
<div id="login-box" class="login-popup">

          <a href="#" class="close"><img src="{$dir_img}close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
          <p id="p_logon_failure"></p>
          <form method="post" class="signin" id="signin" onkeypress="" autocomplete="on" action="{$ssl_dir}index.php">

                <fieldset class="textbox">
                <label class="email" for="email">
                <span>Email</span>
                 <input name="email" type="text" value="" required="required" autocomplete="on" placeholder="Email" />
                <!--input id="email" name="email" value="" type="text" autocomplete="on" placeholder="Email" required="required"-->
                </label>
                <label class="password" for="password">
                <span>Password</span>
                 <input name="password" type="password" value="" required="required" placeholder="Password" />
                <!--input id="password" name="password" value="" type="password" autocomplete="off" placeholder="Password" required="required"-->
                </label>
                <label class="logon_add" for="autologon" style="padding:0 !important">

                <span>Keep me logged in
        
                <input type="checkbox" name="autologon" id="autologon" value="1" checked="checked" class="checkbox">
                </span>
                </label>
                                        
                <button class="submit button" id="log_submit" type="button" onclick="xajax_login(xajax.getFormValues('signin'));return false">Sign in</button>
                <!--input type="submit" class="submit button" id="submit_login" value="New Sign in" {*onclick="xajax_login(xajax.getFormValues('signin'))"*} name="submit_login" style="{*visibility:hidden*}"-->
                
                <input type="submit" name="doLogin" value="Login" id="submit_login" name="submit_login" onclick="form.submit()" style="display:none" />
                <p>
                <a class="forgot" href="#" onclick="javascript:document.getElementById('reset_password').style.display='block'">Forgot your password?</a>
                </p>  

                <!--input type="submit" id="submit_login" value="" name="submit_login" style="{*visibility:hidden;width:0px;height:0px*}"-->      
                </fieldset>
          </form>
          
                          
                <p id="reset_password" style="display:none;width:212px;font-size:10px;border-top-color:#60852A;border-top-style:solid;border-top-width:1px;margin-top:10px; color:white">Please send an E-Mail to resetpw@happifier.info to request a new password.</p>
</div>

<div id="register-box" class="register-popup">
          <a href="#" class="close"><img src="{$dir_img}close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>

          <div id="form_reg">
        
              <p id="p_reg_failure"></p>
              <form method="get" class="signin" action="#" id="register">
                    <fieldset class="textbox">
                    <label class="username">
                    <span>Email</span>
                    <input id="email" name="email" value="" type="text" autocomplete="off" placeholder="Email" >
                    </label>
                    <label class="password">
                    <span>Password</span>
                    <input id="password" name="password" value="" type="password" autocomplete="off" placeholder="Password">
                    </label>
                    <label class="password">
                    <span>Repeat Password</span>
                    <input id="password2" name="password2" value="" type="password" autocomplete="off" placeholder="Repeat Password">
                    </label>
                    <label class="username">
                    <span>Firstname</span>
                    <input id="firstname" name="firstname" value="" type="text" autocomplete="off" placeholder="Firstname">
                    </label>
                    <label class="username">
                    <span>BETA Access Code</span>
                    <input id="betacode" name="betacode" value="" type="text" autocomplete="off" placeholder="Code">
                    </label>                    
                                                    
                    <button class="submit button" type="button" id="reg_submit" onclick="xajax_registerUser(xajax.getFormValues('register'), 'register');">Create Account</button>
    
                    </fieldset>
              </form>
          
          </div>
          
          <div id="reg_success" style="display:none">
          Registration successful. Please check your emails to confirm it.
          </div>
    
</div>

{/if}

{if $logon != 1 AND $w_online == 0}

<div id="register-box" class="register-popup">
          <a href="#" class="close"><img src="{$dir_img}close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>

          <div id="form_reg">
        
              <p id="p_reg_failure"></p>
              <form method="get" class="signin" action="#" id="register">
                    <fieldset class="textbox">
                    <label class="username">
                    <!--span>Email</span-->
                    <input id="email" name="email" value="" type="text" autocomplete="off" placeholder="Email" >
                    </label>
                    <!--label class="username">
                    <span>Firstname</span>
                    <input id="firstname" name="firstname" value="" type="text" autocomplete="off" placeholder="Firstname">
                    </label-->
                                                                  
                    <button class="submit button" type="button" id="reg_submit" onclick="xajax_registerUser(xajax.getFormValues('register'), 'notify');">Sign up</button>
    
                    </fieldset>
              </form>
          
          </div>
          
          <div id="reg_success" style="display:none">
          You signed up successfully. We inform you as soon as Happify launches.
          </div>
    
</div>

{/if}

    <div class="height-wrapper">
    
    <div class="header-fixed top">
        <div class="wrapper">
            <a class="logo qjax" href="{$root_dir}" title="" rel="home"></a>
            <div style="top: -30px;" id="qloading">Loading</div>
            <div id="back-to-top">Back to top</div>
            <div style="display: block;" class="login animated" align="right">

                    {if $logon != 1 AND $w_online == 1}
                                    <a href="#login-box" class="login-btn" id="login_header"><span>Login</span></a>
                                    <a href="#register-box" class="register-btn" id="register_header"><span>Create account</span></a>
                    {else if $logon != 1 AND $w_online == 0}
                                    <!--a href="#register-box" class="register-btn" id="register_header"><span>Notify me when Happify launches!</span></a-->
                    {/if}
                    {if $logon == 1}
                    
                            <div id="dropdown-1" class="dropdown dropdown-tip">
                            <ul class="dropdown-menu" style="position:relative;z-index:999999">
                                <li><a href="#1">Edit User Picture</a></li>
                                <li><a href="#2">Edit User</a></li>
                                <li><a href="#3">Item 3</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a href="{$root_dir}logout/">Logout</a></li>
                                <li><a href="#5">Item 5</a></li>
                                <li><a href="#5">Item 6</a></li>
                            </ul>
                            </div>
                            <a href="#" data-dropdown="#dropdown-1" class="btn">{$user_data.UserEmail}</a>
             
                            <!--span style="color:#fff;font-weight:800px;padding-right:12px">{$user_data.UserEmail}</span>
                            <a href="{$root_dir}logout/" class="btn"><span>Logout</span></a-->
                                
                    {/if}                   

                    &nbsp;
            </div>

        </div>
    </div>
    
    

    <div style="position: fixed;" class="header animated stick">
        <div class="bg">
    {if $logon == 1}
                <div style="display: block;" class="menu submenu">
                    <div style="margin:0 auto;position:relative;max-width:1050px">
            <ul>
                <li class="pulse {if !$module}active{/if}">
                    <a class="qjax" href="{$root_dir}">Start</a>
                </li>
                <li class="pulse {if $module == 'analyze'}active{/if}">
                    <a class="qjax" href="{$root_dir}analyze/index.html">{$header_nav_li1}</a>
                </li>
                <li class="pulse {if $module == 'improve'}active{/if}">
                    <a class="qjax" href="{$root_dir}improve/index.html">{$header_nav_li2}</a>
                </li>
                <li class="pulse {if $module == 'achieve'}active{/if}">
                    <a class="qjax" href="{$root_dir}achieve/index.html">{$header_nav_li3}</a>
                </li>

                <!--li class="pulse {if $module == 'blog'}active{/if}">
                    <a class="qjax" href="{$root_dir}blog/index.html">Blog</a>
                </li-->
                
            </ul>
                </div>              
        </div>  {/if}
        </div>
        
    </div>
    
    
    <div id="main" role="main" {if $logon != 1}style="padding-top:100px"{/if}>
        <div class="main-bg">
        <div class="main-wrapper wrapper"><div style="display: block;" class="content">     
        
      <div class="entry-content">
    
        <div class="ani-spacer"></div>

{*if $log_ja == 0}
<form id="login_form" method="post" action="{$root_dir}">
  <fieldset>

<input type="text" name="UserEmail" autocomplete="on" class="login_inp">
 <input type="password" name="UserPass" autocomplete="on" class="login_inp">
     <input id="login_submit" class="submit" type="submit" value="drtd" name="login">
 
</fieldset>
</form>
{/if*}


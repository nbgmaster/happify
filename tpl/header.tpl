<!DOCTYPE html>
<xml version="1.0" encoding="UTF-8">
<html class="no-js gtMobile isFull" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>Happify | helps you to fully enjoy your life</title>
<meta name="description" content="Happify helps you to fully enjoy your life">
<meta name="keywords" content="Happify">
<meta name="copyright" content="(c) 2012 Copyright: Happify Inc.">

<link rel="apple-touch-icon" href="">
<meta name="google-site-verification" content="">
<meta name="bitly-verification" content="">  

<meta property="fb:app_id" content="">
<meta property="og:site_name" content="Happify.me">
<meta property="og:url" content="http://www.happify.me/">
<meta property="og:title" content="Happify helps you to fully enjoy your life.">
<meta property="og:type" content="company">
<meta property="og:image" content="http://static.happify.com/images/">
  
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/reset.css">
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/main.css">
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/subsites.css">
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/logon.css">
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/jquery-ui-1.8.23.custom.css">	
<link rel="stylesheet" type="text/css" media="all" href="{$root_dir}media/css/forum.css">	
          
<!--script type="text/javascript" src="{$root_dir}js/jquery.js"></script-->
<!--http://jqueryui.com/demos/button/#radio-->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="{$dir_js}/jquery-ui-1.8.23.custom.min.js"></script>
<script type="text/javascript" src="{$dir_js}change_settings.js"></script> 
<script type="text/javascript" src="{$dir_js}login_register.js"></script> 


</head>

<body>

{if $logon != 1}
<div id="login-box" class="login-popup">

          <a href="#" class="close"><img src="{$dir_img}close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
          <p id="p_logon_failure"></p>
          <form method="post" class="signin" id="signin" onkeypress="" autocomplete="on" action="index.php">

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
                <a class="forgot" href="#">Forgot your password?</a>
                </p>  
                <!--input type="submit" id="submit_login" value="" name="submit_login" style="{*visibility:hidden;width:0px;height:0px*}"-->      
                </fieldset>
          </form>
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
	            	
	            	            	            	
	                <button class="submit button" type="button" id="reg_submit" onclick="xajax_registerUser(xajax.getFormValues('register'));">Create Account</button>
	
	                </fieldset>
	          </form>
          
          </div>
          
          <div id="reg_success" style="display:none">
          Registration successful. Please check your emails to confirm it.
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

					{if $logon != 1}
									<a href="#login-box" class="login-btn"><span>Login</span></a>
								    <a href="#register-box" class="register-btn"><span>Create account</span></a>
					{/if}
					{if $logon == 1}
							<span style="color:#fff;font-weight:800px;padding-right:12px">{$usr_data.UserEmail}</span>
							<a href="{$root_dir}logout/" class="btn"><span>Logout</span></a>
					{/if}					

					
			</div>

		</div>
	</div>
	{$logon}

	<div style="position: fixed;" class="header animated stick">
		<div class="bg">
	{if $logon == 1}
				<div style="display: block;" class="menu submenu">
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
				<li class="pulse {if $module == 'connect'}active{/if}">
					<a class="qjax" href="{$root_dir}connect/index.html">{$header_nav_li3}</a>
				</li>

			</ul>
				  			
		</div>	{/if}
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

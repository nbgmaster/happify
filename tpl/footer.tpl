
</div><!-- .entry-content-->

</div>
    		
</div>
</div>
</div>
<div id="bottom-spacer"></div>



</div>
<div class="footer" style="position:fixed;bottom:0;width:100%">
	<div class="menu-footer-menu-container">

		<ul id="menu-footer-menu" class="menu">
	
<li></li><img src="{$dir_img}flag_german.jpg" onclick="change_lang(0)" class="img_flag" title="{$title_flag1}"> 
&nbsp; 
<img src="{$dir_img}flag_english.jpg" onclick="change_lang(1)" class="img_flag" title="{$title_flag2}"></li> 

<li><a class="qjax" href="{$root_dir}cms/about/">About</a></li>
<li><a class="qjax" href="{$root_dir}cms/contact/">Feedback</a></li>
<li><a class="qjax" href="{$root_dir}cms/faq/">FAQ</a></li>
<li><a class="qjax" href="{$root_dir}cms/press/">Press</a></li>

<li><a class="qjax" href="{$root_dir}cms/imprint/">Imprint</a></li>
{if $logon == 0}<li><a href="#" class="qjax" onclick="document.getElementById('login_header').click()">Login</a></li>{/if}
{if $logon == 0}<li><a href="#" class="qjax" onclick="document.getElementById('register_header').click()">Create Account</a></li>{/if}
<li><a class="qjax" href="http://www.happify.me/">© Happify 2013</a></li>
</ul></div>
{$rendering_time} 
</div>

			
</body></html>
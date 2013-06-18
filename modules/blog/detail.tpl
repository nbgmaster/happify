<div style="{*width:60%;float:left;*}">
{foreach from=$ay_blog item=blog name=blog}  	
        				 		       				 	
   	 <p class="b_title_detail" style="font-size:24px">{$blog.title_EN}</p> 
   	 <hr> 
   	 <p>&nbsp;</p> 
   	 <p class="b_text">{eval var=$blog.message_EN}</p>   

{/foreach}

</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<div style="{*float:left;width:32%;margin-left:40px*}">

<div class="fb-like" data-href="http://ibnlive.in.com/news/a-car-that-runs-on-tweets-facebook-likes-and-instagram-shares/394202-11.html" data-send="true" data-layout="button_count" data-width="800" data-show-faces="true" data-font="arial"></div>
   	 <p>&nbsp;</p> 
<div class="fb-comments" data-href="http://example.com" data-width="800" data-num-posts="20"></div>

</div>

<div style="clear:both"></div>

{include file="modules/blog/footer.tpl"}
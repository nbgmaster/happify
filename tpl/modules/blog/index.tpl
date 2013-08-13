
        <!-- main container -->
        <div class="main_container">
        	
	        {foreach from=$ay_blog item=blog name=blog}  	
	        
	        	{if $blog.click_action == 'Popup'}
	        	
	        	<a class="ajax cursor" href="{$root_dir}lib/functions/pinterest_popup.php?id={$blog.ID}&m=blog&title={if $blog.popup_title == 'Yes'}{$blog.title_ser}{/if}&desc={$blog.text_ser}&root_dir={$root_dir}">
	        	 		
		        <div class="pin">
		        	
				    <div class="holder">

				        {if $blog.pinterest_picture == 'Yes'}
			
				            <img src="{$dir_img}blog/{$blog.ID}/pinterest.png" width="100%">
				        
				        {/if}
	
				    </div>
				    {if $blog.title_EN != ''}		
				    <p class="b_title">{$blog.title_EN}</p>
				    {/if}
				    {if $blog.pinterest_text != ''}
				   	 <p class="b_text">{$blog.pinterest_text}</p>   
				   	 {/if}
				    
					<!--p>&nbsp;</p>

				    <p class="b_small_text">
				    	<span>{$blog.fb_likes} likes</span>
				    	<span>{$blog.fb_comments} comments</span>

				    </p-->
				    
				    <hr>

				    <p class="info">
				    	<b>{$blog.cat_str}</b>
				    </p>

		         </div>
		         
		         </a>

	        	{else if $blog.click_action == 'URL'}
	        	
	        	<a class="cursor" href="{$blog.url}" target="_blank">
	        	 		
		        <div class="pin">
		        	
				    <div class="holder">

				        {if $blog.pinterest_picture == 'Yes'}
			
				            <img src="{$dir_img}blog/{$blog.ID}/pinterest.png" width="100%">
				        
				        {/if}
	
				    </div>
				    {if $blog.title_EN != ''}				    
				    <p class="b_title">{$blog.title_EN}</p>
				    {/if}
				    {if $blog.pinterest_text != ''}
				   	 <p class="b_text">{$blog.pinterest_text}</p>   
				   	 {/if}
				    
					<!--p>&nbsp;</p>

				    <p class="b_small_text">
				    	<span>{$blog.fb_likes} likes</span>
				    	<span>{$blog.fb_comments} comments</span>

				    </p-->
				    
				    <hr>

				    <p class="info">
				    	<b>{$blog.cat_str}</b>
				    </p>

		         </div>
		         
		         </a>
		         		         
		         {else if $blog.click_action == 'Subpage'}

		         <div class="pin cursor" onclick="location.href='{$root_dir}blog/{$blog.permalink}.html'">
		        	
				    <div class="holder">

				        {if $blog.pinterest_picture == 'Yes'}
				        <span class="image">
				            <img src="{$dir_img}blog/{$blog.ID}/pinterest.png" width="100%">
				            {/if}
				        </span>
				    </div>
				    {if $blog.title_EN != ''}		
				    <p class="b_title">{$blog.title_EN}</p>
				    {/if}
				    {if $blog.pinterest_text != ''}
				   	 <p class="b_text">{$blog.pinterest_text}</p>   
				   	 {/if}
				    
					<!--p>&nbsp;</p>

				    <p class="b_small_text">
				    	<span>{$blog.fb_likes} likes</span>
				    	<span>{$blog.fb_comments} comments</span>

				    </p-->
				    
				    <hr>

				    <p class="info">
				    	<b>{$blog.cat_str}</b>
				    </p>
				    
				 </div>

		         {else if $blog.click_action == 'None'}

		         <div class="pin">
		        	
				    <div class="holder">

				        {if $blog.pinterest_picture == 'Yes'}
				        <span class="image">
				            <img src="{$dir_img}blog/{$blog.ID}/pinterest.png" width="100%">
				            {/if}
				        </span>
				    </div>
				    {if $blog.title_EN != ''}		
				    <p class="b_title">{$blog.title_EN}</p>
				    {/if}
				    {if $blog.pinterest_text != ''}
				   	 <p class="b_text">{$blog.pinterest_text}</p>   
				   	 {/if}
				    
					<!--p>&nbsp;</p>

				    <p class="b_small_text">
				    	<span>{$blog.fb_likes} likes</span>
				    	<span>{$blog.fb_comments} comments</span>

				    </p-->

				    <hr>

				    <p class="info">
				    	<b>{$blog.cat_str}</b>
				    </p>
				    
		         </div>
		         
		         {/if}
		         		         		
		    {/foreach}
		    
		 </div> <!--main_container-->
		
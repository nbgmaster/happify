

        <!-- main container -->
        <!--div class="main_container"-->
        	
				{if $at_least_one_entry == 1}
			
				{foreach from=$ay_diary item=diary name=diary}  
					
		        	{*if $diary.picture == 'Yes'*}
		        	
		        	<!--a class="ajax cursor" href="{$root_dir}lib/functions/pinterest_popup.php?id={$blog.ID}&m=blog&title={if $blog.popup_title == 'Yes'}{$blog.title_ser}{/if}&desc={$blog.text_ser}">
		        	 		
			        <div class="pin">
			        	
					    <div class="holder">
	
					        {if $blog.pinterest_picture == 'Yes'}
				
					            <img src="{$dir_img}blog/{$blog.ID}/pinterest.png" width="100%">
					        
					        {/if}
		
					    </div>
					    <p class="b_title">{$blog.title_EN}</p>
					    {if $blog.pinterest_text != ''}
					   	 <p class="b_text">{$blog.pinterest_text}</p>   
					   	 {/if}
					    
						<p>&nbsp;</p>
	
					    <p class="b_small_text">
					    	<span>{*$blog.likes*}0 likes</span>
					    	<span>{*$blog.comments*}0 comments</span>
	
					    </p>
					    
					    <hr>
	
					    <p class="info">
					    	<b>{$blog.cat_str}</b>
					    </p>
	
			         </div>
			         
			         </a-->
			         
			         {*else if $diary.picture == 'No'*}

			         <div class="pin">
			        	
					    <!--div class="holder">
	
					        {*if $blog.pinterest_picture == 'Yes'}
					        <span class="image">
					            <img src="{$dir_img}blog/{$blog.ID}/pinterest.png" width="100%">
					            {/if*}
					        </span>
					    </div-->

					   	 <p class="b_text">{$diary.entry}</p>   

						<p>&nbsp;</p>
	
					    <hr>
	
					    <p class="info">
					    	<b>{$diary.date}</b>
					    </p>
					    
			         </div>
			         
			         {*/if*}
     		         		
		    {/foreach}
	         
		    {else}No entries{/if}
			    		    
		 <!--/div--> <!--main_container-->
		
		
	<!--div id="container">
		
				{if $at_least_one_entry == 1}
			
					{foreach from=$ay_diary item=diary name=diary}  
					
					<div id="rightnav" valign="top" style="text-align:left;border-bottom:1px solid #819683;{*if $smarty.foreach.diary.first}border-top:1px solid #819683;{/if*}">
								
						    <span>				
								
								<form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">		 
								    <input type="image" value="del" title="Delete" src="{$dir_img}delete.gif" name="submit_del" id="submit">			
								    <input type="hidden" name="id_to_delete" value="{$diary.ID}" id="id_to_delete">			 
				    		    </form>
				    					
						    	<img src="{$dir_img}edit2.png" border="0" class="edit_entry" onclick="start_edit_mode({$diary.ID});return false;" value="{$diary.ID}" style="cursor:pointer">
						    	
						        <form method="get" id="diary_modify_entry_{$diary.ID}">
								<fieldset>
									
						    	<textarea id="edit_entry_inp_{$diary.ID}" style="width:100%;height:100px;display:none" name="edit_entry_inp">{$diary.entry}</textarea>
						    	<a href="#" class="btn_modify_entry" onclick="modify_entry({$diary.ID});return false;" id="edit_entry_btn_{$diary.ID}" style="display:none"><span>Submit</span></a>
				
							    </fieldset>			    
						  	    </form>
	 			
		        			</span> 
		        			
							<span style="color:#333;" id="entry_txt_{$diary.ID}">{$diary.entry}</span> 
							<span style="color:#819683;font-weight:bold;font-size:10px">{$diary.date}</span> 
							
					</div>
					
					{/foreach}
					
				{else}No entries{/if}
				
     </div-->
     
     

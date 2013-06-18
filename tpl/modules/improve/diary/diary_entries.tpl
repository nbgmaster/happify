
			<p id="add_pin"></p>

			{if $at_least_one_entry == 1}
		
				{foreach from=$ay_diary item=diary name=diary}  

			         <div class="pin" style="overflow:auto;z-index:{$diary.ID}" id="pin_{$diary.ID}">
					
					     {if $diary.picture != ''}
					   			     	        	
		        	        <a class="ajax cursor" href="{$root_dir}lib/functions/pinterest_popup.php?id={$diary.picture}&m=diary&root_dir={$root_dir}&uid={$user_data.ID}">
		        					     
					     {/if}
								        	
					       <div class="holder">
		
						        {if $diary.picture != ''}
					
						            <img src="{$dir_img}uploads/{$user_data.ID}/{$diary.picture}" width="100%">
						        
						        {/if}
			
						    </div>		

					   	 <p class="b_text" id="entry_txt_{$diary.ID}">{$diary.entry}</p>  
					   	 
					   	 				  			     
					     {if $diary.picture != ''}
					  	     
					        </a>  
					          
					     {/if}
	 
					   	 
					   	 		<div style="overflow:auto">			    	
					    		
						        <form method="get" id="diary_modify_entry_{$diary.ID}">
								<fieldset>
									
						    	<textarea id="edit_entry_inp_{$diary.ID}" style="width:100%;display:none;" name="edit_entry_inp">{$diary.entry_org}</textarea>
						    	<a href="#" class="btn_modify_entry" onclick="modify_entry({$diary.ID});return false;" id="edit_entry_btn_{$diary.ID}" style="display:none"><span>Submit</span></a>
				
							    </fieldset>			    
						  	    </form>
				</div>
		
					    <hr>
	
					    <p class="info">
					    	
					    	<div style="float:left" style="padding-bottom:8px">
					    		<b>{$diary.date}</b>
					    	</div>
 	
					    	<div style="float:right;padding-bottom:8px">
						        <form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">		 
								    <input type="image" value="del" title="Delete" src="{$dir_img}delete.gif" name="submit_del" id="submit">			
								    <input type="hidden" name="id_to_delete" value="{$diary.ID}" id="id_to_delete">			 
								    <input type="hidden" name="pid" value="{$diary.picture}" id="pid">	
				    		    </form>
			    		    </div>
					    	
					        <div style="float:right;padding-right:8px;padding-bottom:8px">
					    	    <img src="{$dir_img}edit2.png" border="0" class="edit_entry" onclick="start_edit_mode({$diary.ID});return false;" value="{$diary.ID}" style="cursor:pointer">
						    </div>
					   			    		    
			    		    <div style="clear:both"></div>
			    		    
					    </p>
					    
			         </div>

		    {/foreach}
	         
	    {else}No entries{/if}
			    		    
	
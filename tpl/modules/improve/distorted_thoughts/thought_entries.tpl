	
	<div id="container3" class="headline">
	    <div id="container2" class="headline">
	        <div id="container1" class="headline">
	            <div id="col1" class="headline" style="width:32%"><div class="spacing">Distorted Thought</div></div>
	            <div id="col2" class="headline" style="width:38%"><div class="spacing">Rational Response</div></div>
	            <div id="col3" class="headline" style="width:30%"><div class="spacing">Counter Action</div></div>
	            <!--div id="col4" class="headline">Progress</div-->
	        </div>
	    </div>
	</div>
	
{foreach from=$ay_thoughts item=thoughts name=thoughts}  

<div id="container3">
    <div id="container2">
        <div id="container1">
            <div id="col1" style="width:32%"><div class="spacing">
            	<div style="float:left;padding-right:10px">
            						
					<form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">		 
					    <input type="image" value="del" title="Delete" src="{$dir_img}delete.gif" name="submit_del" id="submit">			
					    <input type="hidden" name="id_to_delete" value="{$thoughts.ID}" id="id_to_delete">			 
		    		</form>
		    		
		    		<p>&nbsp;</p>
		    	
			    	<img src="{$dir_img}edit2.png" border="0" class="edit_goal" onclick="start_edit_mode({$thoughts.ID});" value="{$thoughts.ID}" style="cursor:pointer">
			    	
		    		<p>&nbsp;</p>
		    	
		    	 	<img  id="img_status_{$thoughts.ID}" src="{$dir_img}status_{$thoughts.status}.png" width="16" onclick="change_status({$thoughts.ID})" style="cursor:pointer">
		    	 	<input type="hidden" value="{$thoughts.status}" id="current_status_{$thoughts.ID}">
		    	 	
            	</div>
            	
            	<div style="float:left" id="entry_txt1_{$thoughts.ID}"><strong>{$thoughts.thought}</strong></div>
	      	    <textarea id="edit_entry_inp1_{$thoughts.ID}" style="width:90%;display:none;min-height:60px;">{$thoughts.thought}</textarea>  		           	
            	<div style="clear:both"></div>
            	
            	</div>
            	
            </div>
            <div id="col2" style="width:38%">
            	
            	<div class="spacing" id="entry_txt2_{$thoughts.ID}">{$thoughts.response}</div>
	      	    <div class="spacing"><textarea id="edit_entry_inp2_{$thoughts.ID}" style="width:100%;display:none;min-height:60px;">{$thoughts.response}</textarea> </div>	
           
            </div>
            <div id="col3" style="width:30%">
            	
            	<div class="spacing" id="entry_txt3_{$thoughts.ID}">{$thoughts.action}</div>
	      	    <div class="spacing"><textarea id="edit_entry_inp3_{$thoughts.ID}" style="width:100%;display:none;min-height:60px;">{$thoughts.action}</textarea></div>

				<div id="edit_entry_btn_{$thoughts.ID}" style="display:none;padding-bottom:10px;text-align:center;width:100%;">
		
					<center>
	            	<a href="#" class="btn_modify_entry" onclick="modify_entry({$thoughts.ID});return false;" style="display:block;width:30%">Submit</a>
	            	</center>
	            	
                </div>
             
            </div>
            <!--div id="col4">{$thoughts.status}</div-->
        </div>
    </div>
</div>

{/foreach}

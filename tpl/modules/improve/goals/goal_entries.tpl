
    {foreach from=$ay_goals item=goal name=goal} 
    
	<div style="display:table-row;" id="goal_{$goal.ID}">
  
		<div align="left" class="tablec g_line">
					
				<div class="g_cell2">
				
					<form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">		 
					    <input type="image" value="del" title="Delete" src="{$dir_img}delete.gif" name="submit_del" id="submit">			
					    <input type="hidden" name="id_to_delete" value="{$goal.ID}" id="id_to_delete">			 
			
					</form>	

				    	<img src="{$dir_img}edit2.png" border="0" id="edit_img_{$goal.ID}" class="edit_goal g_img" onclick="start_edit_mode({$goal.ID});" value="{$goal.ID}">

		
				</div>
				
				<div class="g_cell">
					
						<span id="entry_txt_{$goal.ID}">{$goal.goal}</span>			
				
				        <input type="text" value="{$goal.goal}" id="edit_entry_inp_{$goal.ID}" class="g_edit_inp">
						<a href="#" class="btn_modify_entry" onclick="modify_entry({$goal.ID});return false;" id="edit_entry_btn_{$goal.ID}">
							Submit
						</a>
						
						<div id="achieved_{$goal.ID}">{include file="modules/improve/goals/achieved.tpl"}</div>
		
					
				</div>
				
				<div style="clear:both;"></div>

		</div>
		<div class="tablec g_line2">
		    <div class="g_progress" align="left">
		    	
		    	<select name="progress_{$goal.ID}" onChange="xajax_updatedata('{$tbl_goals}', 'progress', this.selectedIndex, '{$goal.ID}');return false;">
					<option label="" value="0" {if $goal.progress == 0}selected="selected"{/if}>0%</option>
					<option label="" value="20" {if $goal.progress == 20}selected="selected"{/if}>20%</option>
					<option label="" value="40" {if $goal.progress == 40}selected="selected"{/if}>40%</option>
					<option label="" value="50" {if $goal.progress == 50}selected="selected"{/if}>50%</option>
					<option label="" value="60" {if $goal.progress == 60}selected="selected"{/if}>60%</option>
					<option label="" value="80" {if $goal.progress == 80}selected="selected"{/if}>80%</option>
					<option label="" value="100" {if $goal.progress == 100}selected="selected"{/if}>100%</option>
				</select>
			</div>
			<div class="g_date" align="right">
				<span class="g_created">&nbsp;{$goal.created}</span>
			</div>

			<div style="clear:both;"></div>

		</div>

	</div>
		
    {/foreach}

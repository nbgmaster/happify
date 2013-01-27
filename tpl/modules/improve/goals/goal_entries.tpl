
    {foreach from=$ay_goals item=goal name=goal} 
    
	<div style="display:table-row;" class="" id="goal_{$goal.ID}">
  
		<div style="display:table-cell;width:74%;vertical-align:middle;border-bottom:2px solid #cccccc;height:46px" align="left" class="tablec">
			<span style="padding-left:6px">
				
				<form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">		 
				    <input type="image" value="del" title="Delete" src="{$dir_img}delete.gif" name="submit_del" id="submit">			
				    <input type="hidden" name="id_to_delete" value="{$goal.ID}" id="id_to_delete">			 
	    		</form>
	    	
	
		    	<img src="{$dir_img}edit2.png" border="0" class="edit_goal" value="{$goal.ID}">
		        <input type="text" value="{$goal.goal}" id="edit_goal_inp_{$goal.ID}" style="width:300px;display:none">
				<span style="padding-left:8px" id="goal_txt_{$goal.ID}">{$goal.goal}</span>
				
		</div>
		<div style="display:table-cell;vertical-align:middle;width:26%;border-bottom:2px solid #cccccc" class="tablec">
		    <div style="float:left;vertical-align:middle;width:50%" align="left">
		    	
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
			<div style="float:left;vertical-align:middle;width:50%" align="right">
				<span style="font-size:12px;color:#819683;padding-right:6px;line-height:26px;font-weight:bold;">&nbsp;{$goal.created}</span>
			</div>
			<!--div style="float:left;vertical-align:middle;width:33%">
				<img src="{$dir_img}checkmark.png" border="0"><span style="font-size:10px;color:#fff;line-height:26px;font-weight:bold;">&nbsp;Just achieved?</span>
			</div-->
			<div style="clear:both;"></div>

		</div>

	</div>
		
    {/foreach}
    
	<script>
	$('.edit_goal').click(function() {
		
		id_x = $(this).attr('value');

	    $('#edit_goal_inp_'+$(this).attr('value')).show('fast', function() {
	    $('#goal_txt_'+id_x).hide(0);
	    
  	    });
	 
	});
	</script>
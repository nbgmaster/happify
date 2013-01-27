<p>&nbsp;</p>              
<div style="width:100%;padding:0;margin:0">
	
			<img src="{$dir_img}note.png"> <strong>New Goal</strong>

			<p></p>  
			
			<div style="float:left;">
				<form method="get" id="insert">
				<fieldset>
				    <textarea style="border:1px solid #b4bbcd;width:320px;outline: none;resize: none;padding:8px;height:36px; margin-top:4px" name="note"></textarea>
				    <p>&nbsp;</p>
				</fieldset>
				</form>
			</div>
			
			<div style="float:left;width:80px;margin-top:4px;padding:8px">
				<a href="#" onclick="xajax_insertdata('{$tbl_goals}', xajax.getFormValues('insert'));return false;" class="btn"><span>Post<span></a>
			</div>
			
			<div style="clear:both"></div>

</div>

<p>&nbsp;</p>

<div id="sortfields">
			
{include file="modules/improve/goals/sortfields.tpl"}
    
</div>
    
<div style="display:table;width:100%;" id="goal_entries">

{include file="modules/improve/goals/goal_entries.tpl"}

</div>


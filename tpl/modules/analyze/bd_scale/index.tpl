  
<strong>This tool is a reliable mood-measuring device that detects the presence of depression and accurately rates its severity.</strong>
<p></p>
<i>developed by David D. Burns, M.D. &copy;, 1984 (Revised, 1996)</i>

<p>&nbsp;</p>

{if $total_entries < $max_items_bd_scale AND $time_ban == 0}<input type="button" class="btn" value="Create new entry" onclick="location.href='new.html'">
{elseif $time_ban == 1}You can only do this 
analyzes again one week after the last one.
{else if $total_entries >= $max_items_bd_scale}You can have a maximum of {$max_items_bd_scale} analyses.
{/if}

<p>&nbsp;</p>

{if $total_entries >= 1}

<div style="float:left;width:{if $total_entries == 1}240{elseif $total_entries==2}380{else}630{/if}px;height:450px">
	<img src='{$root_dir}modules/analyze/bd_scale/result.php?{$datay}' id="graph" />
</div>
<div style="float:left;width:120px;font-size:11px">
	<div style="height:107px;display:table-cell;vertical-align:middle">
	<strong>Extreme</strong>
	</div>
	<p></p>
    <div style="height:72px;display:table-cell;vertical-align:middle;">
    	<strong>Severe</strong>
	</div>
	<p></p>
    <div style="height:95px;display:table-cell;vertical-align:middle;">
	<strong>Moderate</strong>
	</div>
	<p></p>
	<div style="height:32px;display:table-cell;vertical-align:middle;">
	<strong>Mild</strong>
	</div>
	<p></p>
	<div style="height:26px;display:table-cell;vertical-align:middle;">
	<strong>Normal but unhappy</strong>
	</div>
	<p></p>
	<div style="height:10px;display:table-cell;vertical-align:middle;">
	<strong>No depression</strong>
	</div>
</div>
<div style="clear:both"></div>

{/if}


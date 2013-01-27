  
<div style="width:100%"><strong>This tool helps you to identify the reasons for your mood swings.</strong></div>
<p></p>
<i>developed by Dr. Arelende Weissmann</i>

<p>&nbsp;</p>
<p>&nbsp;</p>

{if $total_entries < $max_items_da_scale AND $time_ban == 0}
	<div style="float:left">
		<input type="button" class="btn" value="Create new entry" onclick="location.href='new.html'">
	</div>
{elseif $time_ban == 1}You can only do this analyzes again one month after the last one.
{else if $total_entries >= $max_items_da_scale}You can have a maximum of {$max_items_da_scale} analyses.
{/if}

{if $total_entries >= 1}

{if $total_entries == 1}

<div style="float:left">

  <form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">
	 
	    <input type="submit" class="btn" name="submit_del" id="submit" value="Delete last entry">
	
	    <input type="hidden" name="date_to_delete" value="{$data_sep_dates[1]}" id="date_to_delete">
	 
    </form>
 
</div>
    
{/if}

{if $total_entries > 1}

<div style="float:left">
	<select name="select_date" size="{*$ay_dates|@count*}" onChange="change_graph(this.selectedIndex)">
		<options>Select date</options>
	   {html_options values=$ay_dates output=$ay_dates}
	</select>
</div>

{/if}

<div style="float:left">
	<div style="display:none;" id="delete_btn">
		
	    <form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">
		 
		    <input type="image" value="del" title="Delete" src="{$dir_img}delete.gif" name="submit_del" id="submit">
		
		    <input type="hidden" name="date_to_delete" value="" id="date_to_delete">
		 
	    </form>
	                                
	</div>
</div>

<div style="clear:both"></div>

<p>&nbsp;</p>


<div style="float:left;width:640px;height:350px">
	<img src="{$root_dir}modules/analyze/da_scale/result.php?{$datay}" id="graph" />
</div>
<div style="float:left;width:110px;">
	<div style="height:146px;display:table-cell;vertical-align:middle;">
	<strong>Psychological Strengths</strong>
	</div>
	<p></p>
    <div style="height:140px;display:table-cell;vertical-align:middle;">
	<strong>Emotional Vulnerabilities</strong>
	</div>
</div>
<div style="clear:both"></div>


<script type="text/javascript">
	
	function change_graph(id) {
		
		if (id > 0)  $("#delete_btn").css("display",'block');
		else $("#delete_btn").css("display",'none');
	
		if (id == 0) url_end = '{$datay}';
		{if $total_entries > 0} if (id == 1) { url_end = '{$data_sep_string[1]}'; $("#date_to_delete").val('{$data_sep_dates[1]}'); } {/if}
		{if $total_entries > 1} if (id == 2) { url_end = '{$data_sep_string[2]}'; $("#date_to_delete").val('{$data_sep_dates[2]}'); } {/if}
		{if $total_entries > 2} if (id == 3) { url_end = '{$data_sep_string[3]}'; $("#date_to_delete").val('{$data_sep_dates[3]}'); } {/if}
		{if $total_entries > 3} if (id == 4) { url_end = '{$data_sep_string[4]}'; $("#date_to_delete").val('{$data_sep_dates[4]}'); } {/if}
		{if $total_entries > 4} if (id == 5) { url_end = '{$data_sep_string[5]}'; $("#date_to_delete").val('{$data_sep_dates[5]}'); } {/if}
										
		new_src = '{$root_dir}modules/analyze/da_scale/result.php?' + url_end;
		$("#graph").attr("src", new_src);
				
	} 
	
</script>
{/if}

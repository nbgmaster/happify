{include file="fractions/headline.tpl"}

{if $total_entries >= 1}


<p>&nbsp;</p>

<span class="cms_title">Score result</span>
<hr>

{if $total_entries < $max_items_bd_scale AND $time_ban == 0}
<ul class="bb-list-unordered"><li class="bb-listitem">Your last test was <b>{$in_days} days ago</b>. You should do a new test to see how your mood developed in the meantime!</li></ul>
{elseif $time_ban == 1}<ul class="bb-list-unordered"><li class="bb-listitem">You can do a new analysis <b>{$repeat_in_days} days after the last one</b>.</li></ul>
{else if $total_entries >= $max_items_bd_scale}<ul class="bb-list-unordered"><li class="bb-listitem">You reached your maximum of <b>{$max_items_bd_scale} analyses</b>.</li></ul>
{/if}

<p>&nbsp;</p>

<div style="float:left;width:{if $total_entries == 1}240{elseif $total_entries==2}380{else}730{/if}px;">
	<img src='{$root_dir}modules/analyze/bd_scale/result.php?{$datay}&getmonth={$getmonth}' id="graph" />
</div>
<div style="float:left;width:120px;font-size:11px;">
	<div style="height:117px;display:table-cell;vertical-align:middle">
	<strong>Extreme</strong>
	</div>
	<p></p>
    <div style="height:72px;display:table-cell;vertical-align:middle;">
    	<strong>Severe</strong>
	</div>
	<p></p>
    <div style="height:125px;display:table-cell;vertical-align:middle;">
	<strong>Moderate</strong>
	</div>
	<p></p>
	<div style="height:32px;display:table-cell;vertical-align:middle;">
	<strong>Mild</strong>
	</div>
	<p></p>
	<div style="height:30px;display:table-cell;vertical-align:middle;">
	<strong>Normal but unhappy</strong>
	</div>
	<p></p>
	<div style="height:4px;display:table-cell;vertical-align:middle;">
	<strong>No depression</strong>
	</div>
</div>
<div style="clear:both"></div>

<span class="cms_title">Score interpretation and next steps</span>
<hr>

<p>&nbsp;</p>

<div class="main_container">
        	
     <div class="pin" id="pin_add" style="overflow:auto;min-height:350px;min-width:250px">
     	
			<div style="float:left"><img src="{$dir_img}status_{if $latest_score < 5}2{else if $latest_score < 50}1{else}0{/if}.png" width="16"></div>
			<div style="float:left;padding-left:4px;padding-top:1px"><span style="font-size:12px;font-weight:bold">Your latest score is {$latest_score} out of 100 points.</span></div>
			<div style="clear:both"></div>
			<p>&nbsp;</p>
			
			<p style="font-size:12px;line-height:24px">
				{$score_interpretation_latest}
			</p>
			
			<p>&nbsp;</p>	
								
			{if $latest_score < 5}<a href="{$root_dir}achieve/index.html" class="btn" style="display:inline-block;"><span>Pursue Personal Fulfillment Now</span></a><p>&nbsp;</p>{/if}
						
			{if $latest_score > 4}<a href="{$root_dir}improve/index.html" class="btn" style="display:inline-block;"><span>Learn and Improve Now</span></a><p>&nbsp;</p>{/if}
							 
     </div>
     
     {if $change <= 100 AND $latest_score > 4}
     
     <div class="pin" id="pin_add" style="overflow:auto;min-height:350px;min-width:250px">
     	
     		<span style="font-size:12px;font-weight:bold">Score Comparison</span>
     		
     		<p>&nbsp;</p>
     		
     		<p style="font-size:12px;line-height:24px">	    	
			Compared to your first test your mood {if $change >= 0}improved{else}deteriorated{/if} by {$change}%! <br><br> {$score_interpretation_avg}
			</p>
			 
     </div>
     
     {/if} 

     {if $better_day == 1 AND $latest_score > 4}
     
     <div class="pin" id="pin_add" style="overflow:auto;min-height:350px;min-width:250px">

			<span style="font-size:12px;font-weight:bold">You were happier in the past</span>
     		
     		<p>&nbsp;</p>
     		
     		<p style="font-size:12px;line-height:24px">	        			    	
			{$happier_in_past}
			</p>
			 
     </div>
     
     {/if} 

</div>
      
{/if}

{if $total_entries > 0}

<p>&nbsp;</p>

<span class="cms_title">Delete entry</span>
<hr>

<ul class="bb-list-unordered"><li class="bb-listitem">You can delete one of your results here by selecting the date when you did the test. This can not be undone.</li></ul>

<p>&nbsp;</p>

<div style="float:left;padding-left:18px">
	<select name="select_date" size="{*$select_dates|@count*}" onChange="change_val(this.selectedIndex)" id="selected_date" style="height:30px">
		<options>Select date</options>
	   {html_options values=$select_dates output=$select_dates_formatted}
	</select>
</div>


<div style="float:left;padding-left:10px">
	<div id="delete_btn">
		
	    <form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">
	    	
	    	<input type="submit" class="btn" name="submit_del" id="submit" title="Delete" value="Delete">
		 
		    <!--input type="image" value="del" title="Delete" src="{$dir_img}delete.gif" name="submit_del" id="submit"-->
		
		    <input type="hidden" name="date_to_delete" value="{$select_dates[0]}" id="date_to_delete">
		 
	    </form>
	                                
	</div>
</div>

<p>&nbsp;</p>


<script type="text/javascript">
	
	function change_val(id) {
		
		s_date = $("#selected_date").val();

		 $("#date_to_delete").val(s_date); 

	} 
	
</script>

{/if}
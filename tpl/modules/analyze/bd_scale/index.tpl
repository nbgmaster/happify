	
	<div style="float:left;width:70%">	
			
		  <span style="font-size:36px" class="coolvetica">Burns Depression Scale</span>
		  <p></p>
		
			<span style="font-size:18px;padding-top:8px" class="coolvetica">This tool is a reliable mood-measuring device that detects the presence of depression and accurately rates its severity.</span>
			<p>&nbsp;</p>
			<span style="font-size:12px;padding-top:8px" class="coolvetica"<i>developed by David D. Burns, M.D. &copy;, 1984 (Revised, 1996)</i></span>
			
	</div>
			
	<div style="float:left;width:29%;text-align:right;padding-right:8px">	
					
		{if $total_entries < $max_items_bd_scale AND $time_ban == 0}
				<img src="{$dir_img}add.png" onclick="location.href='new.html'" style="cursor:pointer;width:32px">
		{/if}
				
	</div> 
				
	<div style="clear:both"></div>	
					   
<p>&nbsp;</p>


{if $total_entries >= 1}


<p>&nbsp;</p>

<span class="cms_title">Score result</span>
<hr>

{if $total_entries < $max_items_bd_scale AND $time_ban == 0}
<ul class="bb-list-unordered"><li class="bb-listitem">Your last test is <b>{$in_days} days ago</b>. You should do a new test to see how your mood developed in the meantime!</li></ul>
{elseif $time_ban == 1}<ul class="bb-list-unordered"><li class="bb-listitem">You can do a new analysis <b>{$repeat_in_days} days after the last one</b>.</li></ul>
{else if $total_entries >= $max_items_bd_scale}<ul class="bb-list-unordered"><li class="bb-listitem">You reached your maximum of <b>{$max_items_bd_scale} analyses</b>.</li></ul>
{/if}

<p>&nbsp;</p>

<div style="float:left;width:{if $total_entries == 1}240{elseif $total_entries==2}380{else}730{/if}px;">
	<img src='{$root_dir}modules/analyze/bd_scale/result.php?{$datay}' id="graph" />
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
        	
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;min-width:250px">
     	
     		<strong>Score Interpretation</strong>
     		
     		<p>&nbsp;</p>
     			    	
			<img src="{$dir_img}status_{if $latest_score < 5}0{else if $latest_score < 50}1{else}2{/if}.png" width="16">&nbsp;&nbsp;<b>Your latest score is {$latest_score} out of 100 points.</b>

			<p>&nbsp;</p>
			{$score_interpretation_latest}
			
			<p>&nbsp;</p>						
			
			{if $latest_score > 4}<a href="{$root_dir}analyze/da_scale/index.html" class="btn" style="display:inline-block;"><span>Dysfunctional Attitude Scale</span></a><p>&nbsp;</p>{/if}
			
			{if $latest_score > 4}<a href="{$root_dir}analyze/da_scale/index.html" class="btn" style="display:inline-block;"><span>Distorted Thoughts</span></a><p>&nbsp;</p>{/if}

			{if $latest_score > 4}<a href="{$root_dir}analyze/da_scale/index.html" class="btn" style="display:inline-block;"><span>Goals</span></a>{/if}
									 
     </div>
     
     {if $change <= 100}
     
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;min-width:250px">
     	
     		<strong>Score Comparison</strong>
     		
     		<p>&nbsp;</p>
     			    	
			Compared to your first test your mood {if $change >= 0}improved{else}deteriorated{/if} by {$change}%! {$score_interpretation_avg}
			 
     </div>
     
     {/if} 

     {if $better_day == 1 AND $latest_score > 0}
     
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;min-width:250px">
     	
     		<strong>You were happier in the past</strong>
     		
     		<p>&nbsp;</p>
     			    	
			There was a point of time in the past when you felt better than when you did the test for the last time. Why is that?
			 
     </div>
     
     {/if} 

</div>
      
{/if}

<p>&nbsp;</p>

<div style="float:left">
	<select name="select_date" size="{*$select_dates|@count*}" onChange="change_val(this.selectedIndex)" id="selected_date">
		<options>Select date</options>
	   {html_options values=$select_dates output=$select_dates}
	</select>
</div>


<div style="float:left">
	<div id="delete_btn">
		
	    <form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">
		 
		    <input type="image" value="del" title="Delete" src="{$dir_img}delete.gif" name="submit_del" id="submit">
		
		    <input type="hidden" name="date_to_delete" value="{$select_dates[0]}" id="date_to_delete">
		 
	    </form>
	                                
	</div>
</div>

<script type="text/javascript">
	
	function change_val(id) {
		
		s_date = $("#selected_date").val();

		 $("#date_to_delete").val(s_date); 

	} 
	
</script>
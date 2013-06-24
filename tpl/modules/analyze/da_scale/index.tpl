	
	<div style="float:left;width:70%">	
			
		  <span style="font-size:36px" class="coolvetica">Dysfunctional Attitude Scale</span>
		  <p></p>
		
			<span style="font-size:18px;padding-top:8px" class="coolvetica">This tool helps you to identify the reasons for your mood swings.</span>
			<p>&nbsp;</p>
			<span style="font-size:12px;padding-top:8px" class="coolvetica"<i>developed by Dr. Arelende Weissmann</i></span>
			
	</div>
			
	<div style="float:left;width:29%;text-align:right;padding-right:8px">	
					
		{if $total_entries < $max_items_da_scale AND $time_ban == 0}
				<img src="{$dir_img}add.png" onclick="location.href='new.html'" style="cursor:pointer;width:32px">
		{/if}
				
	</div> 
				
	<div style="clear:both"></div>	
					   
<p>&nbsp;</p>

{if $total_entries >= 1}

	<p>&nbsp;</p>
	
	<span class="cms_title">Score result</span>
	<hr>
	
	{if $time_ban == 1}<ul class="bb-list-unordered"><li class="bb-listitem">You can only do this analyzes again one month after the last one.</li></ul>
	{else if $total_entries >= $max_items_da_scale}<ul class="bb-list-unordered"><li class="bb-listitem">You can have a maximum of {$max_items_da_scale} analyses.</li></ul>

{/if}


{*if $total_entries == 1}

<div style="float:left">

  <form method="post" name="form_delete" onsubmit="return confirm('{$confirm_delete}')" style="display:inline">
	 
	    <input type="submit" class="btn" name="submit_del" id="submit" value="Delete last entry">
	
	    <input type="hidden" name="date_to_delete" value="{$data_sep_dates[1]}" id="date_to_delete">
	 
    </form>
 
</div>
    
{/if*}

{if $total_entries >= 1}

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

<p>&nbsp;</p>
<p>&nbsp;</p>

<span class="cms_title">Score interpretation</span>
<hr>

<div class="main_container">
          
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;">
     	
     		<strong>Approval</strong>
     		
     		<p>&nbsp;</p>
     			    	
			{$da_score_interpretation.approval.description}
			
			Latest score: {$scores.$total_entries.0}
			
			{if $total_entries > 1}{if $last_is_highest.approval == false}you had a better score in the past, why?{/if}{/if}

			{if $total_entries > 1}You {if $change.approval < 0}worsened{else}improved{/if} in this category compared to the first test by {$change.approval}%{/if}
						
     		<p>&nbsp;</p>
     			  			 
     </div>
         
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;">
     	
     		<strong>Love</strong>
     		
     		<p>&nbsp;</p>
     			    	
			{$da_score_interpretation.love.description}

			Latest score: {$scores.$total_entries.1}			

			{if $total_entries > 1}{if $last_is_highest.love == false}you had a better score in the past, why?{/if}{/if}

			{if $total_entries > 1}You {if $change.love < 0}worsened{else}improved{/if} in this category compared to the first test by {$change.love}%{/if}
							
     		<p>&nbsp;</p>
     			  			 
     </div>

         
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;">
     	
     		<strong>Achievement</strong>
     		
     		<p>&nbsp;</p>
     			    	
			{$da_score_interpretation.achievement.description}
			Latest score: {$scores.$total_entries.2}

			{if $total_entries > 1}{if $last_is_highest.achievement == false}you had a better score in the past, why?{/if}{/if}

			{if $total_entries > 1}You {if $change.achievement < 0}worsened{else}improved{/if} in this category compared to the first test by {$change.achievement}%{/if}
													
     		<p>&nbsp;</p>
     			  			 
     </div>
         
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;">
     	
     		<strong>Perfectionism</strong>
     		
     		<p>&nbsp;</p>
     			    	
			{$da_score_interpretation.perfectionism.description}
			Latest score: {$scores.$total_entries.3}			

			{if $total_entries > 1}{if $last_is_highest.perfectionism == false}you had a better score in the past, why?{/if}{/if}

			{if $total_entries > 1}You {if $change.approval < 0}worsened{else}improved{/if} in this category compared to the first test by {$change.approval}%{/if}
							
     		<p>&nbsp;</p>
     			  			 
     </div>
         
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;">
     	
     		<strong>Entitlement</strong>
     		
     		<p>&nbsp;</p>
     			    	
			{$da_score_interpretation.entitlement.description}
			Latest score: {$scores.$total_entries.4}			

			{if $total_entries > 1}{if $last_is_highest.entitlement == false}you had a better score in the past, why?{/if}{/if}

			{if $total_entries > 1}You {if $change.entitlement < 0}worsened{else}improved{/if} in this category compared to the first test by {$change.entitlement}%{/if}
						
     		<p>&nbsp;</p>
     			  			 
     </div>
         
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;">
     	
     		<strong>Omnipotence</strong>
     		
     		<p>&nbsp;</p>
     			    	
			{$da_score_interpretation.omnipotence.description}
			Latest score: {$scores.$total_entries.5}			

			{if $total_entries > 1}{if $last_is_highest.omnipotence == false}you had a better score in the past, why?{/if}{/if}

			{if $total_entries > 1}You {if $change.omnipotence < 0}worsened{else}improved{/if} in this category compared to the first test by {$change.omnipotence}%{/if}
						
     		<p>&nbsp;</p>
     			  			 
     </div>
         
     <div class="pin" id="pin_add" style="overflow:auto;min-height:300px;">
     	
     		<strong>Autonomy</strong>
     		
     		<p>&nbsp;</p>
     			    	
			{$da_score_interpretation.autonomy.description}
			Latest score: {$scores.$total_entries.6}			

			{if $total_entries > 1}{if $last_is_highest.autonomy == false}you had a better score in the past, why?{/if}{/if}

			{if $total_entries > 1}You {if $change.autonomy < 0}worsened{else}improved{/if} in this category compared to the first test by {$change.autonomy}%{/if}
						
    		<p>&nbsp;</p>
     			  			 
     </div>

</div>

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

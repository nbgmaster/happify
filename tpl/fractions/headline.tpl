
	<div style="float:left;{if $module == 'analyze' AND $section == 'bd_scale' AND $subsection == 'index' || $module == 'improve' AND $section == 'diary'}width:70%{*elseif $module == ''}width:60%{*}{/if}">	
			
		  <span style="font-size:36px" class="coolvetica">{$head_title}</span>
		  <p></p>
		  

			<span style="font-size:18px;padding-top:8px;margin-top:16px;" class="coolvetica" valign="bottom">
				{if $module == ''}
					<ul id="ticker">
								{foreach from=$ay_rules item=rules name=rules}  
			
								<li><a href="#"><span style="color:#565656">{$rules.rule}!&nbsp;</span></a></li>
								
								{/foreach}
				</ul>
				{else}
				{$head_subtitle}
				{/if}
				</span>
			
	</div>
	
	
	{if $module == 'analyze' AND $section == 'bd_scale' AND $subsection == 'index'}		
	<div style="float:left;width:29%;text-align:right;padding-right:8px">	
					
		{if $total_entries < $max_items_bd_scale AND $time_ban == 0}
				<img src="{$dir_img}add.png" onclick="location.href='{$root_dir}analyze/bd_scale/new.html'" style="cursor:pointer;width:32px">
		{/if}
				
	</div> 
			
    {/if}

	{if $module == 'analyze' AND $section == 'da_scale' AND $subsection == 'index'}	
	
	<div style="float:left;width:29%;text-align:right;padding-right:8px">	
					
		{if $total_entries < $max_items_da_scale AND $time_ban == 0}
				<img src="{$dir_img}add.png" onclick="location.href='{$root_dir}analyze/da_scale/new.html'" style="cursor:pointer;width:32px">
		{/if}
				
	</div> 
				
    {/if}
				
 	{if $module == 'improve' AND $section == 'diary'}		  
 	 		
			<div style="float:left;width:29%;text-align:right;padding-right:8px">	
				<img src="{$dir_img}add.png" onclick="xajax_insertdata('{$tbl_diary}', '', '1');return false;" style="cursor:pointer;width:32px">
				
					{if $ay_years != ''}&nbsp;<img src="{$dir_img}filter.png" style="cursor:pointer;width:32px;cursor:pointer" onclick="javascript:document.getElementById('filter').style.display='block'">{/if}
			
			<p>&nbsp;</p>

				<div style="display:none" id="filter">
									
					 {if $ay_years != ''}
					 
					 <form method="get" id="diary_date_selection">
						<fieldset>
					 
					 	 <!--div style="display:table-cell"><b>Filter:</b></div-->
		
						 	<select name="month">
						 			<!--option value="0">Month</option-->
						 			<option value="1" {if $c_month == '1'}selected="selected"{/if}>January</option>
						 			<option value="2" {if $c_month == '2'}selected="selected"{/if}>February</option>
						 			<option value="3" {if $c_month == '3'}selected="selected"{/if}>March</option>
						 			<option value="4" {if $c_month == '4'}selected="selected"{/if}>April</option>
						 			<option value="5" {if $c_month == '5'}selected="selected"{/if}>May</option>
						 			<option value="6" {if $c_month == '6'}selected="selected"{/if}>June</option>
						 			<option value="7" {if $c_month == '7'}selected="selected"{/if}>July</option>
						 			<option value="8" {if $c_month == '8'}selected="selected"{/if}>August</option>
						 			<option value="9" {if $c_month == '9'}selected="selected"{/if}>September</option>
						 			<option value="10" {if $c_month == '10'}selected="selected"{/if}>October</option>
						 			<option value="11" {if $c_month == '11'}selected="selected"{/if}>November</option>
						 			<option value="12" {if $c_month == '12'}selected="selected"{/if}>December</option>
						 	</select>
					
						 	<select name="year">
						 		{foreach from=$ay_years item=years name=years}  				 		   
						 			<option value="{$years.year}" {if $years.year == $c_year}selected="selected"{/if}>{$years.year}</option>
						 		{/foreach}
						 	</select>
						
						 	 <img src="{$dir_img}go.png" href="#" onclick="xajax_selectdata('{$tbl_diary}', xajax.getFormValues('diary_date_selection'));return false;" width="20" style="cursor:pointer">
						
						 	 <img src="{$dir_img}refresh.png" href="#" onclick="xajax_selectdata('{$tbl_diary}', 'clear_filter');return false;" width="20" style="cursor:pointer">			
			 	 	 
					    </fieldset>
					    
				  	 </form>	
			 
				 {/if}
				 				 			  	 
			  	 </div>			  	 		 
			 
			</div> 
			
    {/if}

    	
	<div style="clear:both"></div>	
					   
<p>&nbsp;</p>

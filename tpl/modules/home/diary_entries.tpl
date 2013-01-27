	<div id="container">
			
				{foreach from=$ay_diary item=diary name=diary}  
				
				<div id="rightnav" valign="top" style="text-align:left;border-bottom:1px solid #819683;{*if $smarty.foreach.diary.first}border-top:1px solid #819683;{/if*}">
				
					<p><span style="color:#333;">{$diary.entry}</span> <span style="color:#819683;font-weight:bold;font-size:10px">{$diary.date}</span> </p>
				
				</div>
				
				{/foreach}
				
     </div>
			 
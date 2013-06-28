
{literal}
<script>
	
$(function()
{
    var ticker = function()
    {
        setTimeout(function(){
            $('#ticker li:first').animate( {marginTop: '-24px'}, 800, function()
            {
                $(this).detach().appendTo('ul#ticker').removeAttr('style');
            });
            ticker();
        }, 4000);
    };
    ticker();
});

function edit_desc() {
    
    $("#desc_me").hide();
    $("#desc_input").show();   
    
    return true;
}

</script>
{/literal}

	<div style="float:left;width:70%">		
	    <span style="font-size:36px" class="coolvetica">Happify yourself</span>
	    <p></p
	    <span style="font-size:18px;padding-top:8px" class="coolvetica">yo yo yo</span>
     </div>

	<div style="float:left;width:29%;text-align:right;padding-right:8px">	


   			<div style="margin-top:16px;" valign="bottom">
				
				<ul id="ticker">
								{foreach from=$ay_rules item=rules name=rules}  
			
								<li><a href="#"><span style="color:#565656">{$rules.rule}!&nbsp;</span></a></li>
								
								{/foreach}
				</ul>
					
			</div>
	
	</div> 
	
	<div style="clear:both"></div>	
		     
    <p>&nbsp;</p>
   		 	 				
   
   <div class="main_container">
	   	
	   <div class="pin" style="width:271px; height:400px">
	     	
			<span style="font-size:18px;font-weight:bold">1 Analyze and Understand</span>
			<hr style="" size="1">
			<p class="b_text">...</p>
			
			<center>
			<img src="{$dir_img}analyze.jpg" width="180">
			<p>&nbsp;</p>
			<a href="{$root_dir}improve/diary/index.html" class="btn" style="display:inline-block;width:140px"><span>Learn more</span></a>
			<p>&nbsp;</p>			<p>&nbsp;</p>
			<a href="{$root_dir}improve/diary/index.html" class="btn" style="display:inline-block;width:140px"><span>View</span></a>
			<p>&nbsp;</p>			<p>&nbsp;</p>
			
			{if $user_data.bd_latest_score > 0}Your latest score on the Burns Depression Scale is X. 
				{if $user_data.bd_latest_score <= 5}{$bd_score_severity[0]}
					{elseif $user_data.bd_latest_score <= 10}{$bd_score_severity[1]}
					{elseif $user_data.bd_latest_score <= 25}{$bd_score_severity[2]}
					{elseif $user_data.bd_latest_score <= 50}{$bd_score_severity[3]}
					{elseif $user_data.bd_latest_score <= 75}{$bd_score_severity[4]}
					{elseif $user_data.bd_latest_score <= 100}{$bd_score_severity[5]}
				{/if}
			{else}
			You have not done the depression test yet. Do a depression test now.
			{/if}
			
			{if $user_data.da_latest_score != ''}
				{if $da_weakness}Your top emotional weaknesses are 
					{foreach from=$da_weakness item=weakness name=weakness}
						{$weakness} 
					{/foreach}  

				{else}You currently have no emotional vulnerabilities, very good!{/if}

				{if $da_strength}Your top emotional strengths are 
					{foreach from=$da_strength item=strength name=strength}
						{$strength} 
					{/foreach}  

				{else}You currently have no emotional vulnerabilities, very good!{/if}
				
			{/if}
																
			</center>
			
	   </div>
	
	 
	   <div class="pin" style="width:271px; ">
	     	
			<span style="font-size:18px;font-weight:bold">2 Learn and Improve</span>
			<hr style="" size="1">
			<p class="b_text">...</p>
			
			<center>
			<img src="{$dir_img}improve.jpg" width="180">
			<p>&nbsp;</p>
			<a href="{$root_dir}improve/diary/index.html" class="btn" style="display:inline-block;width:140px"><span>Learn more</span></a>
			<p>&nbsp;</p>			<p>&nbsp;</p>
			<a href="{$root_dir}improve/diary/index.html" class="btn" style="display:inline-block;width:140px"><span>View</span></a>
			<p>&nbsp;</p>			<p>&nbsp;</p>
			

					
				{foreach from=$ay_diary item=diary name=diary}  
   {if $diary.picture != ''}       <img src="{$dir_img}uploads/{$user_data.ID}/{$diary.picture}" width="100%">{/if}
   {$diary.entry}
   {/foreach}
   			{if $entry_today == 0} no entry yet today{/if}
   
			<p></p>
			Latest goal: {$ay_goals[0].goal}  	
			<p></p>
			Recently reached goal: ...
			<p></p>
			Distorted thought you should work on: {$ay_thoughts[0].thought}        
			</center>
			
	   </div>
	      
	           
	   <div class="pin" style="width:271px; height:400px">
	     	
			<span style="font-size:18px;font-weight:bold">3 Pursue Personal Fulfillment</span>
			<hr style="" size="1">
			<p class="b_text">...</p>
			
			<center>
			<img src="{$dir_img}fulfill.jpg" width="180">
			<p>&nbsp;</p>
			<a href="{$root_dir}improve/diary/index.html" class="btn" style="display:inline-block;width:140px"><span>Learn more</span></a>
			<p>&nbsp;</p>			<p>&nbsp;</p>
			<a href="{$root_dir}improve/diary/index.html" class="btn" style="display:inline-block;width:140px"><span>View</span></a>
			<p>&nbsp;</p>			<p>&nbsp;</p>
			
			The key to achieve personal fulfillment is to continously develop yourself.
			<p></p>
			Write down your vision, what do you want to become:
			<p></p>
			
				
			<div id="desc_me" style="font-weight:700;font-size:14px;color:#859a87">{$user_data.description}</div>
			
		    <div id="desc_input" style="display:none">
		        <div style="float:left">
	                <form method="get" id="update_desc">
	                   <input type="text" value="{$user_data.description}" id="inp_me" name="desc_me" style="border:1px solid #b4bbcd;width:500px;outline: none;resize: none;padding:8px;height:36px; margin-top:4px">
	                </form>
		        </div>
		        
		        <!-- add personal_goal data storage -->
		        
		        <div style="float:left;margin-top:4px;padding:8px">
		        <a href="#" onclick="xajax_updatedata('{$tbl_users}', 'update_desc', xajax.getFormValues('update_desc'));return false;" class="btn"><span>Send</span></a>
		        </div>
		        <div style="clear:both"></div>
		    </div>
		    
		    <a href="#" onclick="edit_desc();">edit</a>

		
			</center>
			
	   </div>
	   
   </div>
   
   <p>&nbsp;</p>
	
			
   <p>&nbsp;</p>
   
   <p style="text-align:center;font-size:16px;line-height:32px" class="coolvetica">
   When I was 5 years old, my mom always told me that happiness was the key to life. </p>  
   <p></p>
    <p style="text-align:center;font-size:16px;line-height:32px" class="coolvetica">
When I went to school, they asked me what I wanted to be when I grew up. I wrote down “Happy.”  </p>  
  <p></p>
    <p style="text-align:center;font-size:16px;line-height:32px" class="coolvetica">
They told me I didn’t understand the assignment and I told them they didn’t understand life.
</p>   

            
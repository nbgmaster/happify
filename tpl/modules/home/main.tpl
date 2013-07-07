
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
    $("#desc_edit").hide();
    $("#desc_input").show();   
    
    return true;
}

</script>
{/literal}

{include file="fractions/headline.tpl"}
			   
   <div class="main_container">
	   	
	   <div class="pin" style="width:271px; min-height:400px">
	     	
			<span style="font-size:18px;font-weight:bold">1 Analyze and Understand</span>
			<hr>
	
				<ul class="bb-list-unordered" style="font-size:14px">
					<li class="bb-listitem">Identify your level of happiness and your mental areas for improvement</li>
					<li class="bb-listitem">Learn what your mental weaknesses mean and how you can improve mentally</li>
				</ul>
<p>&nbsp;</p>	
<span style="font-size:14px;font-weight:bold">Latest results</span>
<p>&nbsp;</p>
	<ul class="bb-list-unordered" style="font-size:14px">
						<!--img src="{$dir_img}analyze.jpg" width="180"-->

			{if $user_data.bd_latest_score != 500}<li class="bb-listitem">Your latest score on the <b>Burns Depression Scale</b> is {$user_data.bd_latest_score}.</li> 
				<li class="bb-listitem">
					{if $user_data.bd_latest_score <= 5}{$bd_score_severity[0]}
						{elseif $user_data.bd_latest_score <= 10}{$bd_score_severity[1]}
						{elseif $user_data.bd_latest_score <= 25}{$bd_score_severity[2]}
						{elseif $user_data.bd_latest_score <= 50}{$bd_score_severity[3]}
						{elseif $user_data.bd_latest_score <= 75}{$bd_score_severity[4]}
						{elseif $user_data.bd_latest_score <= 100}{$bd_score_severity[5]}
					{/if}
				</li>
			{else}
			<ul class="bb-list-unordered">
			<li class="bb-listitem">You have not done <b>Burns Depression Test</b> yet.</li>

			{/if}
			
			{if $user_data.da_latest_score != ''}
				{if $da_weakness}<li class="bb-listitem">Your top emotional weaknesses are: 
					{foreach from=$da_weakness item=weakness name=weakness}
						{$weakness} 
					{/foreach}  </li>

				{else}You currently have no emotional vulnerabilities, very good!{/if}

				{if $da_strength}<li class="bb-listitem">Your top emotional strengths are: 
					{foreach from=$da_strength item=strength name=strength}
						{$strength} 
					{/foreach}  </li>

				{else}<li class="bb-listitem">You currently have no emotional vulnerabilities, very good!</li>{/if}
			
			{else}<li class="bb-listitem">You have not done the <b>Dysfunctional Attitude Test</b> yet.</li>
			{/if}
			
			</ul>
			
			<center>
			
			<p>&nbsp;</p>
			<a href="{$root_dir}analyze/index.html" class="btn" style="display:inline-block;width:140px"><span>Do Test now</span></a>
			<p>&nbsp;</p>			
			<p>&nbsp;</p>
																
			</center>
			
			
	   </div>
	
	 
	   <div class="pin" style="width:271px;min-height:400px">
	     	
			<span style="font-size:18px;font-weight:bold">2 Learn and Improve</span>
			<hr>
				<ul class="bb-list-unordered" style="font-size:14px">
					<li class="bb-listitem">Use the tools Happify offers to assist you in becoming a happier person</li>
					<li class="bb-listitem">Track the progress you make</li>
				</ul>
	
				{if !empty($ay_diary)}
			<p>&nbsp;</p>					
					<span style="font-size:14px;font-weight:bold">Random Happy Diary Entry</span>	
					<hr>
					<div style="font-size:14px">
					{foreach from=$ay_diary item=diary name=diary}  
					   {if $diary.picture != ''}       <img src="{$dir_img}uploads/{$user_data.ID}/{$diary.picture}" width="100%">{/if}
					   {$diary.entry}
				   {/foreach}
				   </div>
			<p>&nbsp;</p>
			    {/if}
				<ul class="bb-list-unordered" style="font-size:14px">			   
   			{if $entry_today == 0}<li class="bb-listitem">You have not written a diary entry today yet!</li>{/if}
   
			<p></p>
			<li class="bb-listitem">Your Latest Goal: {$ay_goals[0].goal}</li> 	
			<p></p>
			<li class="bb-listitem">You recently reached goal: ... Congratulation!!</li>
			<p></p>
			<li class="bb-listitem">Don't forget: {$ay_thoughts[0].thought} is a distorted thought!</li>      
			
			</ul>
						
			<center>
			<!--img src="{$dir_img}improve.jpg" width="180"-->
			<p>&nbsp;</p>
			{if $entry_today == 0}<a href="{$root_dir}improve/diary/index.html" class="btn" style="display:inline-block;"><span>Write Diary Entry Now</span></a>
			<p>&nbsp;</p>			<p>&nbsp;</p>{/if}

			</center>
			
	   </div>
	      
	           
	   <div class="pin" style="width:271px; min-height:400px">
	     	
			<span style="font-size:18px;font-weight:bold">3 Pursue Personal Fulfillment</span>
			<hr>
			Pursue constant personal growth, self-fullfillment and rich interpersonal relationships

			<p>&nbsp;</p>

			<span style="font-size:14px;font-weight:bold">Your current Vision</span>
			<p>&nbsp;</p>

            <div id="initial_msg">			
			    {if $user_data.description == ''}
	
				    The key to achieve personal fulfillment is to continously develop yourself.
					<p></p>
					Write down your vision, what do you want to become:
					<p></p>
	
				{/if}
			</div>
													
			<div id="desc_me" style="font-weight:700;font-size:18px;">
				{$user_data.description}

				</div>
				
			 <img src="{$dir_img}edit2.png" border="0" id="desc_edit" class="edit_entry" onclick="edit_desc();" style="cursor:pointer">  
					    
			
		    <div id="desc_input" style="display:none">
		        <div style="float:left">
	                <form method="get" id="update_desc">
	                   <textarea type="text" value="{$user_data.description}" id="inp_me" name="desc_me" style="border:1px solid #b4bbcd;width:240px;outline: none;resize: none;padding:8px;height:86px; margin-top:4px">{$user_data.description}</textarea>
	                </form>
		        </div>
		        
		        <!-- add personal_goal data storage -->
		        
		        <div style="float:left;margin-top:4px;padding:8px">
		        <a href="#" onclick="xajax_updatedata('{$tbl_users}', 'update_desc', xajax.getFormValues('update_desc'));return false;" class="btn"><span>Send</span></a>
		        </div>
		        <div style="clear:both"></div>
		    </div>
		    
		    <p></p>
		  
			
			
			<center>
			<!--img src="{$dir_img}fulfill.jpg" width="180"-->
			<p>&nbsp;</p>
			<a href="{$root_dir}achieve/index.html" class="btn" style="display:inline-block;width:140px"><span>Read inspiring material</span></a>
			<p>&nbsp;</p>			<p>&nbsp;</p>

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

{if $user_data.description == ''}

<script>
	
    $("#desc_me").hide();
    $("#desc_edit").hide();
    $("#desc_input").show();   
    

</script>

{/if}


            
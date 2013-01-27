
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
</script>
{/literal}


<div style="width:100%;background-color:#f2f2f2;border:1px solid #cccccc;height:120px;margin-top:0px">
	
	<div style="width:120px;float:left">
		<img src="{$dir_img}user/{$usr_data.ID}.png" width="120" height="120" border="0" style="border-right:1px solid #ccc">
	</div>
	
	<div style="float:left;width:580px;padding:16px;font-weight:700;font-size:12px;line-height:1.3em">
		Ich bin ein selbstbewusster Mann, der authentisch und zuverlässig ist. Ich schaue anders aus und lasse mich nicht beirren.
	    Das macht mich einzigartig.
		<p>&nbsp;</p>
		<span style="font-weight:700;font-size:14px;color:#859a87">
		Become an inspiring CEO of a start-up within the next 5 years
		</span>
		<div style="margin-top:16px;" valign="bottom">
			<ul id="ticker">
							{foreach from=$ay_rules item=rules name=rules}  
		
							<li><a href="#"><span style="color:#565656">{$rules.rule}!&nbsp;</span></a></li>
							
							{/foreach}
			</ul>	
		</div>	
    </div>
    
	<div style="clear:both"></div>
	
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
    
<div style="float:left;width:40%;margin:0">
	
     <div style="float:left;border-right:1px solid #ccc;min-height:800px">
	
		<div style="font-weight:800;padding-bottom:4px;text-align:left">MY CURRENT GOALS</div>
		<p>&nbsp;</p>
		<div style="width:100%;text-align:left">
			
			{foreach from=$ay_goals item=goals name=goals} 
			
		    <p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">{$goals.goal}</p> 
			<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">{$goals.created}&nbsp;&nbsp;&nbsp;</span>
			<img src="{$dir_img}checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just achieved?</span></p>
	
			{/foreach}
			
		</div>
		
		<p>&nbsp;</p>
		
		<div style="font-weight:800;padding-bottom:4px;text-align:left">MY HAPPYFIERS</div>
		<p>&nbsp;</p>
		<div style="width:100%; padding:0px;text-align:left">
			
			{foreach from=$ay_happifiers item=happifiers name=happifiers}  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">{$happifiers.activity}</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">{$happifiers.lastdone}&nbsp;&nbsp;&nbsp;</span>
				<img src="{$dir_img}checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			{/foreach}
		
		</div>

     </div>

</div>
              
<div style="float:left;width:60%;padding:0;margin:0">
	
	<div style="margin-right:0px;">

			<img src="{$dir_img}note.png"> <strong>Update Diary</strong>
			&nbsp;&nbsp;&nbsp;
			<img src="{$dir_img}photo.png"> <strong>Upload happifying photo</strong>
			<p></p>  
			
			<div style="float:left;">
				<form method="get" id="insert">
				<fieldset>
				    <textarea style="border:1px solid #b4bbcd;width:320px;outline: none;resize: none;padding:8px;height:36px; margin-top:4px" name="note">Tell yourself something nice about the day</textarea>
				    <p>&nbsp;</p>
				</fieldset>
				</form>
			</div>
			
			<div style="float:left;width:80px;margin-top:4px;padding:8px">
				<a href="#" onclick="xajax_insertdata('{$tbl_diary}', xajax.getFormValues('insert'));return false;" class="btn"><span>Post<span></a>
			</div>
			
			<div style="clear:both"></div>
			
			 <p id="diary_entries">{include file="modules/home/diary_entries.tpl"}</p>
					
     </div>

</div>

<div style="clear:both"></div>



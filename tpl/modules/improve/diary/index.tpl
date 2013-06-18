
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

   $(".removeService").hide();     
   
    $("div.profile_pic img").hover(
    function(){  //this is fired when the mouse hovers over
        $(this).find('.remoteService').show();
    },
    function(){  //this is fired when the mouse hovers out
         $(this).find('.remoteService').hide();
    });
    
</script>
{/literal}


<!--div style="width:100%;background-color:#f2f2f2;border:1px solid #cccccc;height:120px;margin-top:0px">
	
	<div style="width:120px;float:left" id="profile_pic">
		<img src="{$dir_img}user/{$user_data.ID}.png" width="120" height="120" border="0" style="border-right:1px solid #ccc" class="profilfe_pic">
		<div class="remoteService">klj</div>
	</div>
	
	<div style="float:left;width:580px;padding:16px;font-weight:700;font-size:12px;line-height:1.3em">
	    
		<div id="desc_me">{$user_data.description}</div>
	    <div id="desc_input" style="display:none">
	        <div style="float:left">
                <form method="get" id="update_desc">
                   <input type="text" value="{$user_data.description}" name="desc_me" style="border:1px solid #b4bbcd;width:500px;outline: none;resize: none;padding:8px;height:36px; margin-top:4px">
                </form>
	        </div>
	        
	        <!-- add personal_goal data storage -->
	        
	        <!--div style="float:left;margin-top:4px;padding:8px">
	        <a href="#" onclick="xajax_updatedata('{$tbl_users}', 'update_desc', xajax.getFormValues('update_desc'));return false;" class="btn"><span>Send</span></a>
	        </div>
	        <div style="clear:both"></div>
	    </div>
	    
	    <a href="#" onclick="edit_desc();">edit</a>
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
<p>&nbsp;</p-->
    
<!--div style="float:left;width:40%;margin:0">
	
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
	
	<div style="margin-right:0px;"-->
		
			<div style="float:left;width:70%">		
			    <span style="font-size:36px" class="coolvetica">My Happy Diary</span>
			    <p></p>
			    <span style="font-size:18px;padding-top:8px" class="coolvetica">Tell yourself something nice about the day</span>
		     </div>
		
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
			
			<div style="clear:both"></div>	
				     
            <p>&nbsp;</p>
           		 	 				
			<div class="main_container" id="diary_entries">{include file="modules/improve/diary/diary_entries.tpl"}</div>
					
     </div>

<!--/div>

<div style="clear:both"></div-->

{literal}
<script>

 	 $("textarea").flexible();
    
     //replace text with editable textarea 	
     
	 function start_edit_mode(id) {
	 	
	 	inp_id = "edit_entry_inp_" + id;	
  		txt_entry = document.getElementById(inp_id);
  		
  	  	    $('#edit_entry_inp_'+id).show('fast', function() {
  	  	    	
  	  	    	//txt_entry.setAttribute("style","z-index:1 !important");
  	  	    	
  	  	    	//txt_entry.style.z-index = '1000';
  	  	    	
	    		$('#entry_txt_'+id).hide(0);	    
	  	    });
	
		    $('#edit_entry_btn_'+id).show('fast', function() {
		    	return true;    
	  	   });
  	    
  	 }
	  	    	 
     //change entry and refresh
	 function modify_entry(id) {	
	 		
		inp_id = "edit_entry_inp_" + id;		 
		txt_id = "entry_txt_" + id;		 
		 		 
		txt_entry = document.getElementById(inp_id).value;
		
	    $('#entry_txt_'+id).show('fast', function() {
	    	
	    	$('#edit_entry_inp_'+id).hide(0);	    
	    	$('#edit_entry_btn_'+id).hide(0);
	    	
	    	//stripped_entry = xajax_updatedata("{$tbl_diary}", 'update_entry', txt_entry, id);	
	    	
	    	stripped_entry = xajax.request({xjxfun: 'updatedata'},{parameters:['diary', 'update_entry', txt_entry, id],mode:'synchronous'});
	    	
	    	document.getElementById(txt_id).value = stripped_entry['entry_new_string'];
	    	document.getElementById(txt_id).innerHTML = stripped_entry['entry_new_string'];
	    	
	    	document.getElementById(inp_id).value = stripped_entry['entry_org'];
	    	document.getElementById(inp_id).innerHTML = stripped_entry['entry_org'];
	    	
	    	$("textarea").trigger('updateHeight');

  	    });
         
     }

    
</script>
{/literal}

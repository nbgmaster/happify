<?php /*%%SmartyHeaderCode:3083519a9c3e7b69b0-57940805%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '017999b91720481944a0e1c68dcd8fdd267d4f97' => 
    array (
      0 => '.\\tpl\\modules\\home\\main.tpl',
      1 => 1369086750,
      2 => 'file',
    ),
    'a79e39e6bd698e195dd65cf99f0e8c0ae91d05d4' => 
    array (
      0 => '.\\tpl\\modules\\home\\diary_entries.tpl',
      1 => 1348405487,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3083519a9c3e7b69b0-57940805',
  'version' => 'Smarty-3.1.11',
  'unifunc' => 'content_519a9c3fa3dfd3_89594657',
  'has_nocache_code' => false,
  'cache_lifetime' => 0,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_519a9c3fa3dfd3_89594657')) {function content_519a9c3fa3dfd3_89594657($_smarty_tpl) {?>
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



<div style="width:100%;background-color:#f2f2f2;border:1px solid #cccccc;height:120px;margin-top:0px">
	
	<div style="width:120px;float:left">
		<img src="http://localhost/happify/media/images/user/<br />
<b>Notice</b>:  Undefined index: ID in <b>D:\GitHub\happify\lib\smarty\templates_c\017999b91720481944a0e1c68dcd8fdd267d4f97.file.main.tpl.cache.php</b> on line <b>70</b><br />
.png" width="120" height="120" border="0" style="border-right:1px solid #ccc">
	</div>
	
	<div style="float:left;width:580px;padding:16px;font-weight:700;font-size:12px;line-height:1.3em">
	    
		<div id="desc_me"><br />
<b>Notice</b>:  Undefined index: description in <b>D:\GitHub\happify\lib\smarty\templates_c\017999b91720481944a0e1c68dcd8fdd267d4f97.file.main.tpl.cache.php</b> on line <b>76</b><br />
</div>
	    <div id="desc_input" style="display:none">
	        <div style="float:left">
                <form method="get" id="update_desc">
                   <input type="text" value="<br />
<b>Notice</b>:  Undefined index: description in <b>D:\GitHub\happify\lib\smarty\templates_c\017999b91720481944a0e1c68dcd8fdd267d4f97.file.main.tpl.cache.php</b> on line <b>81</b><br />
" name="desc_me" style="border:1px solid #b4bbcd;width:500px;outline: none;resize: none;padding:8px;height:36px; margin-top:4px">
                </form>
	        </div>
	        
	        <!-- add personal_goal data storage -->
	        
	        <div style="float:left;margin-top:4px;padding:8px">
	        <a href="#" onclick="xajax_updatedata('users', 'update_desc', xajax.getFormValues('update_desc'));return false;" class="btn"><span>Send</span></a>
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
							  
		
							<li><a href="#"><span style="color:#565656">Be healthy!&nbsp;</span></a></li>
							
							  
		
							<li><a href="#"><span style="color:#565656">Avoid negative thoughts, think only positively!&nbsp;</span></a></li>
							
							  
		
							<li><a href="#"><span style="color:#565656">Do what you love and what you are passionate about!&nbsp;</span></a></li>
							
							  
		
							<li><a href="#"><span style="color:#565656">Work on your dreams!&nbsp;</span></a></li>
							
							  
		
							<li><a href="#"><span style="color:#565656">Do not be nice to others as long as you are not nice to yourself!&nbsp;</span></a></li>
							
							  
		
							<li><a href="#"><span style="color:#565656">Do not live in the past or in the future, live in the present!&nbsp;</span></a></li>
							
							  
		
							<li><a href="#"><span style="color:#565656">Your past does not matter at all!&nbsp;</span></a></li>
							
							  
		
							<li><a href="#"><span style="color:#565656">Be yourself!&nbsp;</span></a></li>
							
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
			
			 
			
		    <p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333"></p> 
			<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">&nbsp;&nbsp;&nbsp;</span>
			<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just achieved?</span></p>
	
						
		</div>
		
		<p>&nbsp;</p>
		
		<div style="font-weight:800;padding-bottom:4px;text-align:left">MY HAPPYFIERS</div>
		<p>&nbsp;</p>
		<div style="width:100%; padding:0px;text-align:left">
			
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To play poker, also in the casino</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To play tennis</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To play bowling</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To go to the gym</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To go to the cinema</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To go hiking</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To play computer games</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To create meaningful, awesome websites</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To read a book</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
			  
				<p style="font-size:12px;font-weight:400;padding-bottom:0px;padding-right:10px;color:#333">To go jogging</p> 
				<p style="margin-bottom:8px;border-bottom:1px solid #ccc"><span style="color:#819683;font-weight:bold;font-size:10px;">> 1 month ago&nbsp;&nbsp;&nbsp;</span>
				<img src="http://localhost/happify/media/images/checkmark.png" border="0"><span style="font-size:10px;color:#819683;line-height:26px;font-weight:bold;">&nbsp;Just done?</span></p>
	
					
		</div>

     </div>

</div>
              
<div style="float:left;width:60%;padding:0;margin:0">
	
	<div style="margin-right:0px;">

			<img src="http://localhost/happify/media/images/note.png"> <strong>Update Diary</strong>
			&nbsp;&nbsp;&nbsp;
			<img src="http://localhost/happify/media/images/photo.png"> <strong>Upload happifying photo</strong>
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
				<a href="#" onclick="xajax_insertdata('diary', xajax.getFormValues('insert'));return false;" class="btn"><span>Post<span></a>
			</div>
			
			<div style="clear:both"></div>
			
			 <p id="diary_entries">	<div id="container">
			
				  
				
				<div id="rightnav" valign="top" style="text-align:left;border-bottom:1px solid #819683;">
				
					<p><span style="color:#333;"></span> <span style="color:#819683;font-weight:bold;font-size:10px"></span> </p>
				
				</div>
				
								
     </div>
			 </p>
					
     </div>

</div>

<div style="clear:both"></div>


<?php }} ?>
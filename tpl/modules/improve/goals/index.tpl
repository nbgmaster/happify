<p>&nbsp;</p>              
<div style="width:100%;padding:0;margin:0">
	
			<img src="{$dir_img}note.png"> <strong>New Goal</strong>

			<p></p>  
			
			<div style="float:left;">
				<form method="get" id="insert">
				<fieldset>
				    <textarea style="border:1px solid #b4bbcd;width:320px;outline: none;resize: none;padding:8px;height:36px; margin-top:4px" name="note" maxlength="200" placeholder="Enter your personal goal here"></textarea>
				    <p>&nbsp;</p>
				</fieldset>
				</form>
			</div>
			
			<div style="float:left;width:80px;margin-top:4px;padding:8px">
				<a href="#" onclick="xajax_insertdata('{$tbl_goals}', xajax.getFormValues('insert'));return false;" class="btn"><span>Post<span></a>
			</div>
			
			<div style="clear:both"></div>

</div>

<p>&nbsp;</p>

<div id="sortfields">
			
{if $total_goals > 0}{include file="modules/improve/goals/sortfields.tpl"}
{else}You have not created any goals yet.{/if}
    
</div>
    
<div style="display:table;width:100%;" id="goal_entries">

{if $total_goals > 0}{include file="modules/improve/goals/goal_entries.tpl"}{/if}

</div>

 {literal}   
	<script>
	//$('.edit_goal').click(function() { 

   function start_edit_mode(gid) {

		quark = $('#edit_entry_inp_'+gid).css('display');
		
		if (quark == 'none') {
	
		    $('#edit_entry_inp_'+gid).show(0, function() {
		    	$('#edit_entry_btn_'+gid).show(0);
		    	$('#entry_txt_'+gid).hide(0);
		    	//$('#edit_img_'+gid).off('click');
		
	
	  	    });
  	    
  	   }
	 
	}
	
		  	    	 
     //change entry and refresh
	 function modify_entry(id) {	
	 		
		inp_id = "edit_entry_inp_" + id;		 
		txt_id = "entry_txt_" + id;		 
		 		 
		txt_entry = document.getElementById(inp_id).value;
		
	    $('#entry_txt_'+id).show(0, function() {
	    	
	    	$('#edit_entry_inp_'+id).hide(0);	    
	    	$('#edit_entry_btn_'+id).hide(0);
	    	
	    	//stripped_entry = xajax_updatedata("{$tbl_diary}", 'update_entry', txt_entry, id);	
	    	
	    	stripped_entry = xajax.request({xjxfun: 'updatedata'},{parameters:['goals', 'update_entry', txt_entry, id],mode:'synchronous'});
	    	
	    	document.getElementById(txt_id).value = stripped_entry['entry_org'];
	    	document.getElementById(txt_id).innerHTML = stripped_entry['entry_org'];
	    	
	    	document.getElementById(inp_id).value = stripped_entry['entry_org'];
	    	document.getElementById(inp_id).innerHTML = stripped_entry['entry_org'];
	    		    	
  	    });
         
     }
     
     function reset_input() {
     	
     	$('#insert')[0].reset();
     	
     }
     
	</script>
{/literal}

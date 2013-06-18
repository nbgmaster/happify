<p>&nbsp;</p>              
<div style="width:100%;padding:0;margin:0">
	
			<img src="{$dir_img}note.png"> <strong>New Distorted Thought</strong>

			<p></p>  
			
				<form method="get" id="insert">
				<fieldset>
			<div style="float:left;">
				    <textarea style="border:1px solid #b4bbcd;width:200px;outline: none;padding:8px;height:36px; margin-top:4px" name="thought" maxlength="250" placeholder="Distorted Thought"></textarea>
						</div><div style="float:left;">
							&nbsp;
				    <textarea style="border:1px solid #b4bbcd;width:200px;outline: none;padding:8px;height:36px; margin-top:4px" name="response" maxlength="250" placeholder="Rational Response"></textarea>
						</div><div style="float:left;">
							&nbsp;
				    <textarea style="border:1px solid #b4bbcd;width:200px;outline: none;padding:8px;height:36px; margin-top:4px" name="c_action" maxlength="250" placeholder="Counter Action"></textarea>
			</div>
			<div style="float:left;width:80px;margin-top:4px;padding:8px">
				<a href="#" onclick="xajax_insertdata('{$tbl_distorted_thoughts}', xajax.getFormValues('insert'));return false;" class="btn"><span>Post<span></a>
			</div>
			
			<div style="clear:both"></div>
				</fieldset>
				</form>

			
	

</div>

<p>&nbsp;</p>

<div id="thought_entries">
	
	{if $total_thoughts > 0}

	{include file="modules/improve/distorted_thoughts/thought_entries.tpl"}
	
	{else}
	
	You have not entered a distorted thought yet.
	
	{/if}

</div>

<div style="clear:both"></div>


<script>
	table =  '{$tbl_distorted_thoughts}';
	dir_img = '{$dir_img}';
</script>

 {literal}   
	<script>
	//$('.edit_goal').click(function() { 
		
 //	 $("textarea").flexible();
    		
   function start_edit_mode(gid) {

		//id_x = $(this).attr('value');

	    $('#edit_entry_inp1_'+gid).show(0, function() {
	    	$('#edit_entry_inp2_'+gid).show(0);
	    	$('#edit_entry_inp3_'+gid).show(0);
	    	$('#edit_entry_btn_'+gid).show(0);
	    	$('#entry_txt1_'+gid).hide(0);
	    	$('#entry_txt2_'+gid).hide(0);
	    	$('#entry_txt3_'+gid).hide(0);
	    		    		    
  	    });
	 
	}
	
		  	    	 
     //change entry and refresh
	 function modify_entry(id) {	
	 	
	 	//thought	
		inp1_id = "edit_entry_inp1_" + id;		 
		txt1_id = "entry_txt1_" + id;		 
		
		//response
		inp2_id = "edit_entry_inp2_" + id;		 
		txt2_id = "entry_txt2_" + id;	
		
		//action
		inp3_id = "edit_entry_inp3_" + id;		 
		txt3_id = "entry_txt3_" + id;	
						
	    $('#entry_txt1_'+id).show(0, function() {

	    	$('#entry_txt2_'+id).show(0);	    	
	    	$('#entry_txt3_'+id).show(0);
	    	$('#edit_entry_inp1_'+id).hide(0);	    
	    	$('#edit_entry_inp2_'+id).hide(0);
	    	$('#edit_entry_inp3_'+id).hide(0);	    	
	    	$('#edit_entry_btn_'+id).hide(0);
	    	
	        ay_entries = document.getElementById(inp1_id).value + "%%%!" + document.getElementById(inp2_id).value + "%%%!" + document.getElementById(inp3_id).value;

	    	stripped_entry = xajax.request({xjxfun: 'updatedata'},{parameters:[table, 'update_entry', ay_entries, id],mode:'synchronous'});

	    	document.getElementById(txt1_id).value = stripped_entry['thought'];
	    	document.getElementById(txt1_id).innerHTML = stripped_entry['thought'];
	    	document.getElementById(inp1_id).value = stripped_entry['thought'];
	    	document.getElementById(inp1_id).innerHTML = stripped_entry['thought'];

	    	document.getElementById(txt2_id).value = stripped_entry['response'];
	    	document.getElementById(txt2_id).innerHTML = stripped_entry['response'];
	    	document.getElementById(inp2_id).value = stripped_entry['response'];
	    	document.getElementById(inp2_id).innerHTML = stripped_entry['response'];

	    	document.getElementById(txt3_id).value = stripped_entry['action'];
	    	document.getElementById(txt3_id).innerHTML = stripped_entry['action'];
	    	document.getElementById(inp3_id).value = stripped_entry['action'];
	    	document.getElementById(inp3_id).innerHTML = stripped_entry['action'];
	    		    	
	    	$("textarea").trigger('updateHeight');
	    	
  	    });
         
     }

     function change_status(id) {
     	
     	inp_id = "current_status_" + id;	
     	status = document.getElementById(inp_id).value;
     	
     	if (status == 0) new_status = 1; 
     	else if (status == 1) new_status = 2;
     	else new_status = 0;
     	
     	document.getElementById(inp_id).value = new_status;
     	
     	xajax_updatedata(table, 'update_status', new_status, id);	
     	$("#img_status_"+id).attr("src",dir_img+"status_"+new_status+".png");
     	
     }

     function reset_input() {
     	
     	$('#insert')[0].reset();
     	
     }
         
	</script>
{/literal}

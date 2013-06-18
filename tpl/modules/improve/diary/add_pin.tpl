
     <div class="pin" id="pin_add" style="overflow:auto;z-index:10000000000">
     	
     		<strong>New Happy Diary Entry</strong>
		    <div style="float:left;padding-top:6px;">Maxlength: 700 characters</div>
		    	
			<div style="float:left;">
				<form method="post" id="insert" enctype="multipart/form-data">
				<fieldset>
				    <textarea style="border:1px solid #b4bbcd;width:186px;padding:8px;min-height:66px; margin-top:4px" maxlength="700" name="note">Tell yourself something nice about the day</textarea>

				    <p>&nbsp;</p>

                <u>AND / OR</u>
                <p>&nbsp;</p>
                <strong style="padding-bottom:12px">Happy Picture Upload</strong>
                <p style="padding-bottom: 6px">Supported file types: jpg, png</p>
				<input type="file" name="image_file">
				</fieldset>
				</form>
			</div>
						
			<div style="float:left;width:120px;margin-top:20px;margin-bottom:20px; text-align:left">
				<a href="#" onclick="xajax_insertdata('{$tbl_diary}', xajax.getFormValues('insert'));return false;" class="btn"><span>   Post Entry   <span></a>
			</div>
			
			<div style="clear:both"></div>
			 
     </div>
     

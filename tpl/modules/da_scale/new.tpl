
<div id="container3" class="headline">
    <div id="container2" class="headline">
        <div id="container1" class="headline">
            <div id="col1" class="headline" style="width:13%"><div class="spacing">Category</div></div>
            <div id="col2" class="headline" style="width:53%"><div class="spacing">Item</div></div>
            <div id="col3" class="headline" style="width:34%"><div class="spacing">Score</div></div>
        </div>
    </div>
</div>


<form method="get" id="insert">
<fieldset>
	
	{assign var=count value=1}        	
	{while $count <= $cats_total}
	        	
	
		<div id="container3">
		    <div id="container2">
		        <div id="container1"> 
		        	
		            <div id="col1" style="width:13%"><div class="spacing">{$ay_cats[$count]} </div></div>
		            <div id="col2" style="width:53%">
		            	<div class="spacing">
         	
		            	{foreach from=$ay_final[$count] item=result} {$result.title}<p>&nbsp;</p>{/foreach}
		            	
		            	</div>
		            </div>
		            <div id="col3" style="width:34%"><div class="spacing">
		
		            	{foreach from=$ay_final[$count] item=result}
		            		            			            	
			            	<input type="radio" value="0" name="b{$result.ID}">0</input>&nbsp;&nbsp;&nbsp;
			            	<input type="radio" value="1" name="b{$result.ID}">1</input>&nbsp;&nbsp;&nbsp;            	
			               	<input type="radio" value="2" name="b{$result.ID}">2</input>&nbsp;&nbsp;&nbsp;           	
			                <input type="radio" value="3" name="b{$result.ID}">3</input>&nbsp;&nbsp;&nbsp;
			             	<input type="radio" value="4" name="b{$result.ID}">4</input>&nbsp;&nbsp;&nbsp;
			            	
			            	<p>&nbsp;</p>
		
		            	{/foreach}
		            			                   	          	               	
		               </div>
		           </div>
		     
		        </div>
		    </div>
		</div>

   {assign var=count value=$count+1} 
   {/while}
   
   <input type="hidden" value="{$items_total}" name="items_total">

</fieldset>   
</form>

<div style="clear:both"></div>


<p>&nbsp;</p>
<a href="" class="btn"id="btn" onclick="" ><span>Submit</span></a>


<script>
	
$(document).ready(function(){
  $('#btn').click(function() {
  	
  	alert( $('input:radio[name=c1]:checked').val() );
  	
  	if (!$("input:radio[name='b1']:checked").val()) {
  
       alert('Nothing is checked!');
        return false;
    }
    else {
      alert('One of the radio buttons is checked!');
      //xajax_postdata('{$tbl_da_scale_results}', xajax.getFormValues('insert'));
      return false;
    }
  });
});

</script>


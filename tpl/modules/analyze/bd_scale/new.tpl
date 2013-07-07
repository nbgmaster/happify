{if $total_entries < $max_items_bd_scale AND $time_ban == 0}

	<script type="text/javascript">
	$(function() {
		$( "#radio_1" ).buttonset();
		$( "#radio_2" ).buttonset();
		$( "#radio_3" ).buttonset();
		$( "#radio_4" ).buttonset();
		$( "#radio_5" ).buttonset();
		$( "#radio_6" ).buttonset();
		$( "#radio_7" ).buttonset();
		$( "#radio_8" ).buttonset();
		$( "#radio_9" ).buttonset();
		$( "#radio_10" ).buttonset();
		$( "#radio_11" ).buttonset();
		$( "#radio_12" ).buttonset();
		$( "#radio_13" ).buttonset();
		$( "#radio_14" ).buttonset();
		$( "#radio_15" ).buttonset();
		$( "#radio_16" ).buttonset();
		$( "#radio_17" ).buttonset();
		$( "#radio_18" ).buttonset();
		$( "#radio_19" ).buttonset();
		$( "#radio_20" ).buttonset();
		$( "#radio_21" ).buttonset();		
		$( "#radio_22" ).buttonset();
		$( "#radio_23" ).buttonset();
		$( "#radio_24" ).buttonset();
		$( "#radio_25" ).buttonset();
		$( "#radio_26" ).buttonset();
		$( "#radio_27" ).buttonset();
		$( "#radio_28" ).buttonset();
		$( "#radio_29" ).buttonset();
		$( "#radio_30" ).buttonset();
		$( "#radio_31" ).buttonset();
		$( "#radio_32" ).buttonset();
		$( "#radio_33" ).buttonset();	
		$( "#radio_34" ).buttonset();
		$( "#radio_35" ).buttonset();
	});
	</script>
	
{include file="fractions/headline.tpl"}
	
	<form method="get" id="insert">
<fieldset>
		
<div id="container3" class="headline">
    <div id="container2" class="headline">
        <div id="container1" class="headline">
            <!--div id="col1" class="headline" style="width:13%"><div class="spacing">Category</div></div-->
            <div id="col1" class="headline" style="width:64%;text-align:right"><div class="spacing">Item</div></div>
            <div id="col3" class="headline" style="width:36%"><div class="spacing">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Score</div></div>
        </div>
    </div>
</div>

		            	

    {assign var=count2 value=1}                    	
	{assign var=count value=1}        	
	{while $count <= $cats_total}
	        	
		<div id="container3">
		    <div id="container2">
		        <div id="container1"> 
		        	
		            <div id="col1" style="width:100%"><!--div class="spacing">{$ay_cats[$count]} </div></div-->
		            <!--div id="col2" style="width:87%"-->
		            		   
		                  <div style="display:table;border-collapse:collapse;width:100%;margin-top:10px">
		                  	
		                  			            	
		            	<div style="width:64%;float:left;padding-left:20px;font-weight:bold;text-transform: uppercase">{$ay_cats.$count} {*$ay_cats.{$ay_cats.$count}*}</div>
		            	
		            	<div style="width:28%;float:left">
			            	<div style="width:25%;float:left;padding-left:18px; text-valign:middle;font-weight:bold">Not at all</div>
			            	<div align="center" style="width:40%;float:left;text-align:center;text-valign:middle;font-weight:bold">Moderately</div>
			            	<div style="width:25%;float:right;padding-right:4px;text-align:right;font-weight:bold"><span style="">Extremely</span></div>
			            	<div style="clear:both"></div>		            	
		            	</div>
		            	
		            	<div style="clear:both"></div>	
		            	
		            	</div>


							  {foreach from=$ay_final[$count] item=result} 
							  
							            <div style="display:table-row;">           	
							            	<div style="display:table-cell;padding:6px;display:table-cell;width:596px;vertical-align:middle;text-align:right;">
							            		{$result.title}
							            	</div>
							            	<div style="display:table-cell;vertical-align:middle;text-align:center;padding:6px;width:300px;">
							            		
								                {assign var=count3 value=$count2+1}  
											    {assign var=count4 value=$count2+2}  
											    {assign var=count5 value=$count2+3}  
											    {assign var=count6 value=$count2+4}  
					            		
						            			<div id="radio_{$result.ID}" style="padding-left:0;margin-left:0; width:100%;vertical-align:middle;background-color:#e6efea;padding-top:4px">
								        			<input type="radio" id="radio{$count2}" value="0" name="{$result.ID}" /><label for="radio{$count2}">&nbsp;</label>
													<input type="radio" id="radio{$count3}" value="1" name="{$result.ID}" /><label for="radio{$count3}">&nbsp;</label>
													<input type="radio" id="radio{$count4}" value="2" name="{$result.ID}" /><label for="radio{$count4}">&nbsp;</label>
													<input type="radio" id="radio{$count5}" value="3" name="{$result.ID}" /><label for="radio{$count5}">&nbsp;</label>
													<input type="radio" id="radio{$count6}" value="4" name="{$result.ID}" /><label for="radio{$count6}">&nbsp;</label>
								        	    </div>    
	
	            					         </div>
	            					         
	                                   </div>
					           {assign var=count2 value=$count2+5} 
					           {/foreach}
     
                         </div>
       
		           </div>
		     
		        <!--/div-->
		    </div>
		</div>

   {assign var=count value=$count+1} 
   {/while}

<div style="clear:both"></div>

   
   <input type="hidden" value="{$items_total}" name="items_total">


<p>&nbsp;</p>
<p align="right"><a href="" class="btn"id="btn" onclick="" ><span>Submit</span></a></p>

</fieldset>   
</form>


<script type="text/javascript">
	
$(document).ready(function(){
  $('#btn').click(function() {
  	
  //	alert( $('input:radio[name=c1]:checked').val() );
  	
  /*	if (!$("input:radio[name='b1']:checked").val()) {
  
       alert('Nothing is checked!');
        return false;
    }
    else {
      alert('One of the radio buttons is checked!');*/
      return xajax_insertdata('{$tbl_bd_scale_results}', xajax.getFormValues('insert'));
      //return false;
    //}
  });
});

</script>

{/if}


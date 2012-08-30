
<div id="container3" class="headline">
    <div id="container2" class="headline">
        <div id="container1" class="headline">
            <div id="col1" class="headline" style="width:13%"><div class="spacing">Category</div></div>
            <div id="col2" class="headline" style="width:53%"><div class="spacing">Item</div></div>
            <div id="col3" class="headline" style="width:34%"><div class="spacing">Score</div></div>
        </div>
    </div>
</div>


	{assign var=count value=1}        	
	{while $count < $cats_total}
	        	
	
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
		            	
			            	0 &nbsp; <input type="radio" value="0" name="{$result.ID}">&nbsp;&nbsp;&nbsp;
			            	1 &nbsp; <input type="radio" value="1" name="{$result.ID}">&nbsp;&nbsp;&nbsp;            	
			               	2 &nbsp; <input type="radio" value="2" name="{$result.ID}">&nbsp;&nbsp;&nbsp;           	
			               	3 &nbsp; <input type="radio" value="3" name="{$result.ID}">&nbsp;&nbsp;&nbsp;
			            	4 &nbsp; <input type="radio" value="4" name="{$result.ID}">&nbsp;&nbsp;&nbsp;
			            	
			            	<p>&nbsp;</p>
		
		            	{/foreach}
		            	
		                   	          	               	
		               </div>
		           </div>
		     
		        </div>
		    </div>
		</div>

   {assign var=count value=$count+1} 
   {/while}

<div style="clear:both"></div>


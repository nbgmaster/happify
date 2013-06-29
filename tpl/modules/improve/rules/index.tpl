  <div class="main_container">
      
{foreach from=$ay_rules item=rules name=rules}  

 
   <div class="pin">
        
        <span style="font-size:18px;font-weight:bold">{$rules.rule}</span>
        <hr style="" size="1">
        <p class="b_text">{$rules.description}</p>
        
        
   </div>
      
       
 
{/foreach}

   </div>
      
       



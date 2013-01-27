
<div id="container3" class="headline">
    <div id="container2" class="headline">
        <div id="container1" class="headline">
            <div id="col1" class="headline" style="width:33%"><div class="spacing">Distorted Thought</div></div>
            <div id="col2" class="headline" style="width:33%"><div class="spacing">Rational Response</div></div>
            <div id="col3" class="headline" style="width:34%"><div class="spacing">Counter Action</div></div>
            <!--div id="col4" class="headline">Progress</div-->
        </div>
    </div>
</div>

{foreach from=$array item=thoughts name=thoughts}  

<div id="container3">
    <div id="container2">
        <div id="container1">
            <div id="col1" style="width:33%"><div class="spacing">{$thoughts.thought}</div></div>
            <div id="col2" style="width:33%"><div class="spacing">{$thoughts.response}</div></div>
            <div id="col3" style="width:34%"><div class="spacing">{$thoughts.action}</div></div>
            <!--div id="col4">{$thoughts.status}</div-->
        </div>
    </div>
</div>

{/foreach}


<div style="clear:both"></div>

<div id="container4" class="headline">
<div id="container3" class="headline">
    <div id="container2" class="headline">
        <div id="container1" class="headline">
            <div id="col1" class="headline">Distorted Thought</div>
            <div id="col2" class="headline">Rational Response</div>
            <div id="col3" class="headline">Counter Action</div>
            <div id="col4" class="headline">Progress</div>
        </div>
    </div>
</div>
</div>

{foreach from=$array item=thoughts name=thoughts}  
<div id="container4">
<div id="container3">
    <div id="container2">
        <div id="container1">
            <div id="col1">{$thoughts.thought}</div>
            <div id="col2">{$thoughts.response}</div>
            <div id="col3">{$thoughts.action}</div>
            <div id="col4">{$thoughts.status}</div>
        </div>
    </div>
</div>
</div>

{/foreach}


<div style="clear:both"></div>
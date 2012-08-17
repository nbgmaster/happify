		
<!--h2>Happify helps you to fully enjoy your life</h2>
<h3>This page is only about YOU and Happiness</h3>

<p>&nbsp;</p><p>&nbsp;</p-->
                  
<div style="float:left;width:60%">

<img src="{$dir_img}note.png"> <strong>Update Diary</strong>
&nbsp;&nbsp;&nbsp;
<img src="{$dir_img}photo.png"> <strong>Upload happifying photo</strong>
<p></p>  

<form method="get" id="update">
<fieldset>
    <textarea style="width:99%;border:1px solid #b4bbcd;outline: none;resize: none;padding:8px;margin-top:4px" name="note">Tell yourself something nice about the day</textarea>
    <p>&nbsp;</p>
</fieldset>
</form>

<a href="#" onclick="xajax_postdata('diary', xajax.getFormValues('update'));return false;" class="btn"><span>Post<span></a>

<p>&nbsp;</p>


{foreach from=$array item=diary name=diary}  
<div id="container">

<div id="leftnav">
<p>
<img src="{$dir_img}diary_small.png">
</p>
</div>
<div id="rightnav" valign="top">

<p>{$diary.date}</p>
{$diary.entry}

</div>
 </div>

{/foreach}

</div>

<script>
$(document).ready(function() {ldelim}
    $('.commentarea').keydown(function() {ldelim}
        if (event.keyCode == 13) {ldelim}
            this.form.submit();
            return false;
         {rdelim}
    {rdelim});
{rdelim});
</script>


</div>
<div style="float:left;width:40%;">

<div style="padding-left:40px">

<strong>About me</strong>
<p>Ich bin ein selbstbewusster Mann, der authentisch und zuverlässig ist. Ich schaue anders aus und lasse mich nicht beirren.
Das macht mich einzigartig.</p>
<p>&nbsp;</p><p>&nbsp;</p>

<strong>My Dreams</strong>

<p>Become a true inspiring entrepreneur</p>
<p>Kiss a girl that I like</p>
<p>Become truly happy</p>
<p>Always hike new and more challenging tours</p>

<p>&nbsp;</p><p>&nbsp;</p>
<strong>My Goals</strong>

<p><img src="media/images/goal.png"> Each day either go jogging and/or go to the gym</p>
<p><img src="media/images/goal.png"> Build happify.me</p>
<p><img src="media/images/goal.png"> Make the right job decision</p>

<p>&nbsp;</p><p>&nbsp;</p>
<strong>What makes me happy </strong>
<p>To do jogging</p>
<p>To go to the gym</p>
<p>To play tennis </p>
<p>To go to the cinema</p>
<p>To read a book   </p>
<p>To play computer games</p>
<p>To create meaningful, awesome websites</p>
<p>To play poker, also in the casino </p>
<p>To play bowling </p>

<p>&nbsp;</p><p>&nbsp;</p>

<strong>Happy Rules </strong>

<p><img src="media/images/star.png"> 1.	Be yourself</p>
<p><img src="media/images/star.png"> 2.	Your past does not matter at all  </p>
<p><img src="media/images/star.png"> 3.	Do not live in the past or in the future, live in the present  </p>
<p><img src="media/images/star.png"> 4.	Do not be nice to others as long as you are not nice to yourself  </p>
<p><img src="media/images/star.png"> 5.	Work on your dreams </p>
<p><img src="media/images/star.png"> 6.	Do what you love and what you are passionate about </p>
<p><img src="media/images/star.png"> 7.	Avoid negative thoughts, think only positively </p>


</div>
</div>
<div style="clear:both"></div>



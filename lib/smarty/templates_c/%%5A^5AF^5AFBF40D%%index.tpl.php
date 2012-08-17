<?php /* Smarty version 2.6.18, created on 2012-06-26 21:11:26
         compiled from modules/home/index.tpl */ ?>
		
<!--h2>Happify helps you to fully enjoy your life</h2>
<h3>This page is only about YOU and Happiness</h3>

<p>&nbsp;</p><p>&nbsp;</p-->
                  
<div style="float:left;width:60%">

<img src="<?php echo $this->_tpl_vars['dir_img']; ?>
note.png"> <strong>Update Diary</strong>
&nbsp;&nbsp;&nbsp;
<img src="<?php echo $this->_tpl_vars['dir_img']; ?>
photo.png"> <strong>Upload happifying photo</strong>
<p></p>  

<form method="get" id="update">
<fieldset>
    <textarea style="width:99%;border:1px solid #b4bbcd;outline: none;resize: none;padding:8px;margin-top:4px" name="note">Tell yourself something nice about the day</textarea>
    <p>&nbsp;</p>
</fieldset>
</form>

<a href="#" onclick="xajax_postdata('diary', xajax.getFormValues('update'));return false;" class="btn"><span>Post<span></a>

<p>&nbsp;</p>


<?php $_from = $this->_tpl_vars['array']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['diary'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['diary']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['diary']):
        $this->_foreach['diary']['iteration']++;
?>  
<div id="container">

<div id="leftnav">
<p>
<img src="<?php echo $this->_tpl_vars['dir_img']; ?>
diary_small.png">
</p>
</div>
<div id="rightnav" valign="top">

<p><?php echo $this->_tpl_vars['diary']['date']; ?>
</p>
<?php echo $this->_tpl_vars['diary']['entry']; ?>


</div>
 </div>

<?php endforeach; endif; unset($_from); ?>

</div>

<script>
$(document).ready(function() {
    $('.commentarea').keydown(function() {
        if (event.keyCode == 13) {
            this.form.submit();
            return false;
         }
    });
});
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


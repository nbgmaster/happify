<?php /* Smarty version 2.6.18, created on 2012-06-26 21:03:07
         compiled from modules/distorted_thoughts/index.tpl */ ?>

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

<?php $_from = $this->_tpl_vars['array']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['thoughts'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['thoughts']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['thoughts']):
        $this->_foreach['thoughts']['iteration']++;
?>  
<div id="container4">
<div id="container3">
    <div id="container2">
        <div id="container1">
            <div id="col1"><?php echo $this->_tpl_vars['thoughts']['thought']; ?>
</div>
            <div id="col2"><?php echo $this->_tpl_vars['thoughts']['response']; ?>
</div>
            <div id="col3"><?php echo $this->_tpl_vars['thoughts']['action']; ?>
</div>
            <div id="col4"><?php echo $this->_tpl_vars['thoughts']['status']; ?>
</div>
        </div>
    </div>
</div>
</div>

<?php endforeach; endif; unset($_from); ?>


<div style="clear:both"></div>
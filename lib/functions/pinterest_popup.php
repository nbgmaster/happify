<?php

	$i = stripslashes(strip_tags($_GET['id']));
	$m = stripslashes(strip_tags($_GET['m']));
	
						
	if ($m == 'blog') {
		
		$title = stripslashes(strip_tags(urldecode($_GET['title'])));
		$text = stripslashes(strip_tags(urldecode($_GET['desc'])));

		if ($title != '') {
			
			?><p style="font-size:24px;text-align:center;color:#819382;padding-top:10px;padding-bottom:10px;text-transform:uppercase"><?php echo $title; ?></p>
		
		<?php } 

		$size = getimagesize($_GET['root_dir'].'media/images/'.$m.'/'.$i.'/pinterest.png');
	
		?>
		
	    <img src="<?php echo $_GET['root_dir']; ?>media/images/<?php echo $m; ?>/<?php echo $i; ?>/pinterest.png" width="<?php echo $size[0]; ?>" height="<?php echo $size[1]; ?>">
	
		
    <?php } else if ($m == 'diary') { 
		
		$i_full = explode(".",$i);
		
		$size = getimagesize($_GET['root_dir'].'media/images/uploads/'.$_GET['uid'].'/'.$i_full[0].'_full.'.$i_full[1]);
			
		?>

	    <img src="<?php echo $_GET['root_dir']; ?>media/images/uploads/<?php echo $_GET['uid'] . '/' . $i_full[0].'_full.'.$i_full[1]; ?>" width="<?php echo $size[0]; ?>" height="<?php echo $size[1]; ?>">

    <?php } ?>
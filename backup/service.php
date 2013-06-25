<?php
/**
 *
 * Pinterest-like script - a series of tutorials
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 * 
 * Copyright 2012, Script Tutorials
 * http://www.script-tutorials.com/
 */

// set warning level
if (version_compare(phpversion(), '5.3.0', '>=')  == 1)
  error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
else
  error_reporting(E_ALL & ~E_NOTICE); 

$i = stripslashes(strip_tags($_GET['id']));
$ext = stripslashes(strip_tags($_GET['ext']));

// if something is wrong
if (! $i || ! $ext) {
    exit;
}

// prepare full image path
$sFullImgPath = $sFilename = '';
$sFolder = 'http://localhost/happify/photos/';
$aAllowedExt = array('jpg' => 1, 'png' => 1);
$aPathInfo = pathinfo($i . '.' . $ext);
$sExt = strtolower($aPathInfo['extension']);
if (isset($aAllowedExt[$sExt])) {
    $sFilename =  $aPathInfo['filename'];
    $sFullImgPath = $sFolder . $sFilename . '_full.' . $sExt;
}
if (! $sFullImgPath) {
    exit;
}

?>
<!--div class="pin bigpin">

    <div class="holder"-->

        <a class="image" href="#" title="Photo <?= $sFilename ?>">
            <img alt="Photo <?= $sFilename ?>" src="<?= $sFullImgPath ?>" >
        </a>
    <!--/div-->

    <p class="desc">Photo <?= $sFilename ?> description</p>


<!--/div-->
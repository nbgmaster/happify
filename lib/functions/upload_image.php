<?php

function uploadImageFile($file, $userID = 0) { // Note: GD library is required for this upload function

    $iDefWidth = 192; // default photos width (in case of resize)
    $iFDefWidth = 556; // full default photos width (in case of resize)

    //if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $iWidth = $iHeight = $iFDefWidth; // desired image dimensions
        $iJpgQuality = 75;
						
            // if there are no errors and filesize less than 2MB
            if (! $file['error'] && $file['size'] < 2000 * 1024) {  	
            				
                if (is_uploaded_file($file['tmp_name'])) {
                	
	                 if ( $pointer = opendir( "media/images/uploads/".$userID ) )  { }
	                 
					 else mkdir("media/images/uploads/".$userID, 0755); 
										
                    // new unique filename
                    $sTempFileName = 'media/images/uploads/'. $userID .'/' . md5(time().rand());

                    // move uploaded file into cache folder
                    move_uploaded_file($file['tmp_name'], $sTempFileName);

                    // change file permission to 644
                    @chmod($sTempFileName, 0644);

                    // if temp file exists
                    if (file_exists($sTempFileName) && filesize($sTempFileName) > 0) {
                        $aSize = getimagesize($sTempFileName); // obtain image info
                        if (!$aSize) {
                            @unlink($sTempFileName);
                            return;
                        }
						
						//TODO: upload only png or jpg

                        // check for image type and create a new image from file 
                        switch($aSize[2]) {
                            case IMAGETYPE_JPEG:
                                $sExt = '.jpg';
                                $vImg = @imagecreatefromjpeg($sTempFileName);
                                break;
                            case IMAGETYPE_PNG:
                                $sExt = '.png';
                                $vImg = @imagecreatefrompng($sTempFileName);
                                break;
                            default:
                                @unlink($sTempFileName);
                                return;
                        }

                        // get source image width and height
                        $iSrcWidth = imagesx($vImg);
                        $iSrcHeight = imagesy($vImg);
						
						$iWidth = $iSrcWidth;
						$iHeight = $iSrcHeight;

						if ($iSrcWidth > 1000) {
							
	                        // recalculate height (depends on width)
	                        $iWidth = 1000;
	                        $iHeight = $iSrcHeight * $iWidth / $iSrcWidth;
							
						}


						if ($iHeight > 800) {
							
	                        // recalculate height (depends on width)
	                        $iHeight = 800;
							$iWidth = $iHeight * $iSrcWidth / $iSrcHeight;
							
						}

                        // create a new true color image
                        $vDstImg = @imagecreatetruecolor( $iWidth, $iHeight );

                        // copy and resize
                        imagecopyresampled($vDstImg, $vImg, 0, 0, 0, 0, $iWidth, $iHeight, $iSrcWidth, $iSrcHeight);

                        // define a result image filename
                        $sResultFileName = $sTempFileName . '_full' . $sExt;

                        // output image to file and set permission 644
                        imagejpeg($vDstImg, $sResultFileName, $iJpgQuality);
                        @chmod($sResultFileName, 0644);

                        // and, prepare a thumbnail as well
                        $iWidth = $iDefWidth;
                        $iHeight = $iSrcHeight * $iWidth / $iSrcWidth;
                        $vDstThImg = @imagecreatetruecolor($iWidth, $iHeight);
                        imagecopyresampled($vDstThImg, $vImg, 0, 0, 0, 0, $iWidth, $iHeight, $iSrcWidth, $iSrcHeight);
                        $sResultThumnName = $sTempFileName . $sExt;
                        imagejpeg($vDstThImg, $sResultThumnName, $iJpgQuality);
                        @chmod($sResultThumnName, 0644);
	
                        // unlink temp file
                        @unlink($sTempFileName);
						
						$filename = explode('/', $sResultThumnName);

                        return $filename[4];
                    }
            }
    }
}
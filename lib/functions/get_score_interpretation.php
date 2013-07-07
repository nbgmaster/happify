<?php
		
	function get_score_interpretation($cat, $val, $score_interpretation) {
		
		if ($cat == 'latest') {

			 switch(true) { 
	    			case $val < 5:   return $score_interpretation['happy']; break;
	    			case $val < 10:  return $score_interpretation['unhappy']; break;
	    			case $val < 25:  return $score_interpretation['mild']; break;
	    			case $val < 50:  return $score_interpretation['moderate']; break;
	    			case $val < 75:  return $score_interpretation['severe']; break;
	    			case $val <= 100: return $score_interpretation['extreme']; break;
			 }
		 
		}
		
		elseif ($cat == 'average') {
		
			 switch(true) { 
	    			case $val < 0:   return $score_interpretation['deteriorated']; break;
	    			case $val >= 0:  return $score_interpretation['improved']; break;
			 }	
					
	    }
			 
	}
<?php

    if ($mod_memcache == 1) {

	    $memcache = new Memcache;  
	    $memcache->connect('localhost', 11211) or die ("Could not connect");  
	      
	    //$version = $memcache->getVersion();  
	
	    $tmp_object = new stdClass;  
	
	    //Think about when it should expired and get refreshed. otherwise all data for all users always stay in memcache; overload vs. inactive data
	    $duration = 0;             // never expire
	    $duration_trigger = 300;   // 5 minutes
	    $duration_cats = 600;      // 10 minutes
	    
	    $mem_key1 = "user_data_".$l["token"];
	
	    $user_data        = $memcache->get($mem_key1); 
	
	    //$memcache->delete("trigger_f_".$l["token"]);        
	
	    //$size = strlen(serialize($user_data));
	    //echo $size." bytes";
	    
	}
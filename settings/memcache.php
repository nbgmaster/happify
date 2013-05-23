<?php

     /* As most content is controlled by the user (no updates from other users or so), we can cache most content, as it is also not expected to change frequently.
	  * The charts will be done once and do not have to be selected from the database all the time. Once the user edit or inserts a new entry, the database is updated and the object is retrieved from the database.
	  * For the user object, we never ask the database. It is cached from the beginning. If an item changes, it is saved to the database and the cached object is updated, but not asked for in the database.
	  * This will hugely reduce the number of database accesses.
	  * 
	  * Currently cached: User Object, DA_Scale results, BD_Scale results
	  * TODO: Diary (also update the object after changes and do not retrieve from the DB), Happifiers, Distorted Thoughts, goals
	  * 
	  * Caching is done via memcache if the server supports it, otherwise stored in a session 
	  * */
	  
     //instanciate items that get cached	 
	 $bd_scale_data = "";
	 $da_scale_data = "";
	 //$da_scale_sep_strings = "";
	 //$da_scale_sep_dates = ""; 
  	 $user_data = "";     
 
     //define keys
     $mem_key1  = "user_data_".$l["token"];
     $mem_key2  = "da_scale_data_".$l["token"];
     $mem_key2a = "da_scale_sep_strings_".$l["token"];
     $mem_key2b = "da_scale_sep_dates_".$l["token"];
     $mem_key3  = "bd_scale_data_".$l["token"];

    if (mod_memcache == 1) {
    	
	    $memcache = new Memcache;  
	    $memcache->connect('localhost', 11211) or die ("Could not connect");  
	      
	    //$version = $memcache->getVersion();  
	
	    $tmp_object = new stdClass;  
	
	    //Think about when it should expire and get refreshed. otherwise all data for all users always stay in memcache; overload vs. inactive data
	    //$duration = 0;             // never expire
	    //$duration_trigger = 300;   // 5 minutes
	    //$duration_cats = 600;      // 10 minutes

		if (trigger_memcache_del == 1) {
		
		    $memcache->delete($mem_key1);    
		    $memcache->delete($mem_key2);        
		    $memcache->delete($mem_key2a);   
		    $memcache->delete($mem_key2b);  
		    $memcache->delete($mem_key3);

			$memcache->flush();  
	    	    
		} 
				
	    $user_data        = $memcache->get($mem_key1); 
	    $da_scale_data    = $memcache->get($mem_key2); 
	    $da_scale_sep_strings  = $memcache->get($mem_key2a); 
	    $da_scale_sep_dates    = $memcache->get($mem_key2b); 
	    $bd_scale_data    = $memcache->get($mem_key3); 
		
	    //$size = strlen(serialize($user_data));
	    //echo $size." bytes";

	}

    //work with php sessions
	else {
		
		if (trigger_session_del == 1) {
			
		    session_unset();
    	    session_destroy();					
			    
		}
		
	    if (isset($_SESSION['$mem_key1']))  $user_data = $_SESSION['$mem_key1'];
	    if (isset($_SESSION['$mem_key2']))  $da_scale_data    = $_SESSION['$mem_key2']; 
	    if (isset($_SESSION['$mem_key2a'])) $da_scale_sep_strings  = $_SESSION['$mem_key2a']; 
	    if (isset($_SESSION['$mem_key2b'])) $da_scale_sep_dates    = $_SESSION['$mem_key2b']; 
	    if (isset($_SESSION['$mem_key3']))  $bd_scale_data    = $_SESSION['$mem_key3']; 
				
	}
	
	/* MEMORY CALCULAION */
	/* Currently: 3kb pro User, which would translate that for a server with 2GB RAM, 1GB RAM would be filled by memcache with 350'000 users
	   but let's assume we need 10kb per User, this means a maximum of 100'000 users 
	 
		$old = memory_get_usage();
		$dummy = unserialize(serialize($bd_scale_data));
		$mem = memory_get_usage();	
		$size = abs($mem - $old);
	 	echo ($size);
		
    ********************/
		
	
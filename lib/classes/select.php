<?php

  /* copyright Stefan Richter. class should not be modified unless absolutely necessary and logic is well understood */

  /* Establish :: Class -> SELECT */
  
  /* Selects sql data from various defined sql statements; can also return the userObject via getUserData */

     //class SelectEntrys extends readdirectory
          
     class SelectEntrys  { 
     	 
          public $userid;
          public $username;
          public $tbl_users;
          public $timestamp;
		  public $distinct;
          public $cols;
          public $table;
          public $condition;
          public $order;
          public $group;
          public $limit;
          public $module;
          public $template;
          public $multiSelect;
          public $subfolders;

          public $extended, $replace, $Myadmin, $TotalRows, $br, $output_name;
          
          /* Get UserData, only ONE row */

             function getUserData()  { 
             	
			   	 global $db; 
  
                 $this->table     = $this->tbl_users;
                 $this->condition = " UserID = '$this->userid' ";
                 $this->order     = '';
                 $this->limit     = '1';
                 $this->module    = '';
                 $this->template  = '';

                 if ( $this->errno($db) == 0 ) return $this->row();
				 //else echo sql_error_select;

             }

          /******************************************/


          /* Convert UserName into UserID */

             function getUserID()  {
             	
			   	 global $db; 
  
                 $this->cols      = 'UserID';
                 $this->table     = $this->tbl_users;
                 $this->condition = " UserName = '$this->username' ";
                 $this->order     = '';
                 $this->limit     = '1';
                 $this->module    = '';
                 $this->template  = '';

                 if ( $this->errno($db) == 0 ) return $this->row();
				 //else echo sql_error_select;

          }

          /******************************************/

          
          /* Convert UserName into UserID */

             function getUserToken()  {
             	
			   	 global $db; 
  
                 $this->cols      = 'UserToken';
                 $this->table     = $this->tbl_users;
                 $this->condition = " UserEmail = '".$this->email."' ";
                 $this->order     = '';
                 $this->limit     = '1';
                 $this->module    = '';
                 $this->template  = '';

                 if ( $this->errno($db) == 0 ) return $this->row();
				 //else echo sql_error_select;

          }

          /******************************************/

          function errno($db) {         			
				return mysqli_errno($db);
				die();
          }
          
          /* Get total rows */

             function getrows() {
             	
			   	 global $db; 
  
                 if ( !$this->table ) $this->table = 'users';

                 $query = mysqli_query($db, "SELECT COUNT(1) AS result from $this->table $this->condition LIMIT 1");
  				 //echo "SELECT COUNT(1) AS result from $this->table $this->condition LIMIT 1";
                 $rows  = mysqli_fetch_row( $query );
                                            
                 $result = $rows[ 0 ];

                 if ( $this->errno($db) == 0 ) return $result; 
                 //else echo sql_error_select;
     
             }

          /******************************************/


          /* Convert unixtime into time and date */

             function getDate()  {

                 include("./settings/template.php");

                 $month_full = date("n", $this->timestamp);

                 $month_full = $getmonth[$month_full];

                 $Fday = date("d",$this->timestamp);
                 $Fyear = date("Y",$this->timestamp);

                 $date = $Fday.".".$month_full.".".$Fyear;

                 // $date = date("d.m.Y, H:i",$this->timestamp);

                 return $date;

             }

          /******************************************/


          /* Loop out data */

          function row() {
          		  
          	  global $db;      

              //if ( !eregi  ( "ORDER", $this->order ) && $this->order )  {
              if ( !preg_match("/ORDER/i", $this->order) && $this->order) {
              
                   $this->order  = 'ORDER by ' . $this->order;

              }

              //if ( !eregi  ( "WHERE", $this->condition ) && $this->condition )  { 
              if ( !preg_match("/WHERE/i", $this->condition) && $this->condition) {
              
                   $this->condition  = 'WHERE ' . $this->condition; 

              }

              //if ( !eregi  ( "LIMIT", $this->limit ) && $this->limit )  { 
              if ( !preg_match("/LIMIT/i", $this->limit) && $this->limit) {
              
                   $this->limit  = 'LIMIT ' . $this->limit;

              }
              
              //if ( !eregi  ( "GROUP BY", $this->group ) && $this->group )  { 
              if ( !preg_match("/GROUP BY/i", $this->group) && $this->group) {
             
                   $this->group  = 'GROUP BY ' . $this->group;

              }

              $totalrows = $this->getrows();
          
              if ( $totalrows > 0 )  {
                 
                   $count = 0;
            
            	   if (!$this->distinct) $col_mod = $this->cols;
				   else $col_mod = "DISTINCT($this->cols)";
				   
                   mysqli_query($db, "SET NAMES 'utf-8'");
				   mysqli_set_charset($db, 'utf8');
				   				   
				   //echo "SELECT $col_mod FROM $this->table $this->condition $this->group $this->order $this->limit";     
                   $select = mysqli_query($db, "SELECT $col_mod FROM $this->table $this->condition $this->group $this->order $this->limit");

                   while ( $result = mysqli_fetch_assoc($select) )  {
  
	                        if ( $this->multiSelect )  {
	
	                             $colnames = str_replace(" ", "", $this->cols);
	
	                             $colnames = explode(",", $colnames);
	
	                             for ( $z = 0; $z < count($colnames); $z++)  {
	
	                                   $result[$colnames[$z]] =  htmlentities($result[$colnames[$z]]);
	                                   if ( $this->errno($db) == 0) $this->array[$count][$colnames[$z]] = $result[$colnames[$z]]; 				 
	                                   //else echo sql_error_select;
	                 
	                             }
	
	                             $count++;
	
	                        }
	
	                        else  {
	                          
	                             if ( $this->errno($db) == 0 ) return $result[$this->cols]; 
	                             //else echo sql_error_select;
	
	                        }

                    }

                    if ( $this->multiSelect && $this->errno($db) == 0 )  {

                       return $this->array;

                    } //else echo sql_error_select;

                    mysqli_free_result($select);

              }

              else  {

                  return false; 

              }

          }

          /******************************************/

     }

  /******************************************/

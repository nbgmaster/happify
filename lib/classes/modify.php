<?php

  /* copyright Stefan Richter. class should not be modified unless absolutely necessary and logic is well understood */

  /* Establish :: Class -> Insert, Update, Delete, Attach */
  
  /* Class used to insert, update, or delete sql entries
   * Also used to upload any meta files (pictures, documents, etc.) */
   
     //require_once('readdirectory.php');
   
     //class ModifyEntry extends readdirectory  {
     class ModifyEntry {

          public $table;
          public $changes;
          public $condition;
          public $cols;
          public $values;
          public $directory;
          public $tempname, $filename;

          private $upload_access, $file, $attachment;

          /* Insert new entry */

             function insert()  {
             	 
				 global $db; 

                 mysqli_query($db, "SET NAMES 'utf-8'");
				 mysqli_set_charset($db, 'utf8');
				            
                 $query   = "INSERT into $this->table ($this->cols)";
                 $query  .= "VALUES ($this->values)";

                 //$result  = @mysqli_query($db, $query) OR die(mysql_error());

                 if ( $this->errno($db) == 0 ) mysqli_query($db, $query);
				 //else echo sql_error_modify;
								 
             }

          /*************************/


          /* Update data */

             function update() {
             	
				 global $db; 

                 if ( !preg_match("/WHERE/i", $this->condition) && $this->condition )  {

                      $this->condition  = 'WHERE ' . $this->condition;

                 }

                 mysqli_query($db, "SET NAMES 'utf-8'");
				 mysqli_set_charset($db, 'utf8');
				            
                 $sql = "UPDATE $this->table Set $this->changes $this->condition"; 
				 
                 if ( $this->errno($db) == 0 ) mysqli_query($db, $sql);
				 //else echo sql_error_modify;

             }

          /*************************/

          
          function errno() {
          	         			
				global $db; 

				return mysqli_errno($db);
				
          }

          /* Delete entry */

             function delete() {
             	
				 global $db; 

                 if ( !preg_match("/WHERE/i", $this->condition) && $this->condition )  {

                      $this->condition  = 'WHERE ' . $this->condition;

                 }
				 
				 //echo "DELETE FROM $this->table $this->condition";
                 $delete = "DELETE FROM $this->table $this->condition";   
				 
				 if ( $this->errno($db) == 0 ) {
				 	 mysqli_query($db, $delete); 
				 	 return true; 
				 }
	             //else echo sql_error_modify;
				 
             }

          /*************************/


          /* Upload Attachment */

             function attach($bid)  {

                 $fileformat  = substr($this->filename, strlen($_GET['fileID'])-3);

                 $uniqueid = time();

                 $uniqueid .= uniqid (rand());

                 $filetypes = array("jpg", "gif", "png", "txt", "pdf", "zip", "rar", "doc", "ocx", "xls", "lsx", "ppt", "ptx");

                 if ( in_array($fileformat, $filetypes) )  {

                      if ( $fileformat == 'ocx' ) $fileformat == 'docx';
                      if ( $fileformat == 'lsx' ) $fileformat == 'xlsx';
                      if ( $fileformat == 'ptx' ) $fileformat == 'pptx';

                      $this->file          = "$this->directory/"."$uniqueid.$fileformat";
                      $this->attachment[0] = "$uniqueid.$fileformat";
                      $this->attachment[1] = "$this->filename"; 

                      $this->upload_access = "1";

                 }

                 if ( $this->upload_access == "1" ) {
                 	  copy("$this->tempname", "$this->file");
					  return $this->attachment;
				 }
                 //else echo sql_error_modify;
              
                 

             }

          /*************************/

     }

  /******************************************/
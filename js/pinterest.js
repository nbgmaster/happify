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


$(document).ready(function(){
	

    // file field change handler
    $('#image_file').change(function(){
        var file = this.files[0];
        name = file.name;
        size = file.size;
        type = file.type;

        // extra validation
        if (name && size)  {
            if (! file.type.match('image.*')) {
                alert("Select image please");
            } else {
                fileSelectHandler();
            }
        }
    });
    
    // onclick event handler (for comments)
    $('.comment_tr').click(function () {
        $(this).toggleClass('disabled');
        $(this).parent().parent().parent().find('form').slideToggle(250, function () {
			 $('.main_container').masonry();
			 
 
        });
    }); 

    $('.ajax').colorbox({
        onOpen:function(){
        },
        onLoad:function(){
        
        },
        onComplete:function(){
           $(this).colorbox.resize();
        },
        onCleanup:function(){
        },
        onClosed:function(){
        }
    });
});

 $(window).load(function() {
 	
   // masonry initialization
    $('.main_container').masonry({
        // options
        itemSelector : '.pin',
        isAnimated: true,
        isFitWidth: false
    });

 });
 
 function m_reload() {
 	
    $('.main_container').masonry('reload');

 }
 
    
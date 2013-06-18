
	$(document).ready(function() {
	$('a.login-btn').click(function() {
		
                //Getting the variable's value from a link 
		var loginBox = $(this).attr('href');

		//Fade in the Popup
		$(loginBox).fadeIn(300);
		
		//Set the center alignment padding + border see css style
		var popMargTop = ($(loginBox).height() + 24) / 2; 
		var popMargLeft = ($(loginBox).width() + 24) / 2; 
		
		$(loginBox).css({ 
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});
		
		// Add the mask to body
		$('body').append('<div id="mask"></div>');
		$('#mask').fadeIn(300);
		
		return false;
	});
	
	// When clicking on the button close or the mask layer the popup closed
	//NOTE: 1.9.0 changed deprecated .live to .on
	$('a.close, #mask').on('click', function() { 
	  $('#mask , .login-popup').fadeOut(300 , function() {
		$('#mask').remove();  
		$('#p_logon_failure').hide();  
	}); 
	return false;
	});
	
		$('a.register-btn').click(function() {
	
                //Getting the variable's value from a link 
		var registerBox = $(this).attr('href');

		//Fade in the Popup
		$(registerBox).fadeIn(300);
		
		//Set the center alignment padding + border see css style
		var popMargTop = ($(registerBox).height() + 24) / 2; 
		var popMargLeft = ($(registerBox).width() + 24) / 2; 
		
		$(registerBox).css({ 
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});
		
		// Add the mask to body
		$('body').append('<div id="mask"></div>');
		$('#mask').fadeIn(300);
		
		return false;
	});
	
	// When clicking on the button close or the mask layer the popup closed
    //NOTE: 1.9.0 changed deprecated .live to .on
	$('a.close, #mask').on('click', function() { 
	  $('#mask , .register-popup').fadeOut(300 , function() {
		$('#mask').remove();  
		$('#p_reg_failure').hide();  
	}); 
	return false;
	});
	
	//enter on login or register mask
	$(document).keypress(function(e) {
	    if(e.which == 13 && $('#mask').length && $('.register-popup').length) {
	        $('#reg_submit').click();          
	    }

	});

	//enter on login or register mask
	$(document).keypress(function(e) {

	    if(e.which == 13 && $('#mask').length && $('.login-popup').length) {
	        $('#log_submit').click();  
	        return false;
	    }

	});
	     
	     
     
});
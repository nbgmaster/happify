  
 var IsiPhone = navigator.userAgent.indexOf("iPhone") != -1 ;
 var IsiPod = navigator.userAgent.indexOf("iPod") != -1 ;
 var IsiPad = navigator.userAgent.indexOf("iPad") != -1 ;

 var IsiPhoneOS = IsiPhone || IsiPad || IsiPod ; 
  
document.onmousemove = function(e) {

  e = e || window.event;

    if (e.pageX == null && e.clientX != null ) { 
    var html = document.documentElement;
    var body = document.body;

   e.pageX = e.clientX + (html.scrollLeft || body && body.scrollLeft || 0);
    e.pageX -= html.clientLeft || 0;
    
    }

      if (e.pageX == 0) history.back();

}

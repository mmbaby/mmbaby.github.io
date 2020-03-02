$(function(){
    
     var loginPosition=$('.loginlogo').offset().top;
        console.log(loginPosition);
        
        //$(document).ready(function(){
           $('html, body').animate({
               'scrollTop':(loginPosition-50)+'px'
           },500);
            return false;
       // });
       
});
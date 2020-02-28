$(function(){
    $(window).scroll(function(){
       var documentPosition=$(document).scrollTop();
    if(documentPosition>580){
        $('.box3').stop().addClass('fixed');
    }else{
        $('.box3').stop().removeClass('fixed');
    } 
    
    });
    
    //product
    setInterval(function(){
        slide();
    },2000);
   
    var target_odd=$('.product li:odd');
    var target_even = $('.product li:even');
    var change = 0;
     function slide(){
        if(change===0){
            target_even.removeClass("on");
            target_odd.addClass("on");
        }else{
            target_odd.removeClass("on");
            target_even.addClass("on");
        }
         
         change = (change+1)%2;
     }
    
    
    
    
    
    
    
    
    
    
});
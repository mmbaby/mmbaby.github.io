$(function(){
   $('.box1 a').mouseover(function(){
      $('.box1 span').stop().addClass('on');
       
   }); 
    
    $('.box1 a').mouseleave(function(){
      $('.box1 span').stop().removeClass('on');
   });    
});
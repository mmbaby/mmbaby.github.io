$(function(){
    $('.nav_1>li').mouseover(function(){
        $(this).children('.submenu').stop().slideDown();
    });
    
    $('.nav_1>li').mouseleave(function(){
        $(this).children('.submenu').stop().slideUp();
    });
    
    
    setInterval(function(){
        slide();
    },3000);
    var img_count=2;
    var target=$('.panel>img');
    var i=target.index();
    
    
    function slide(){
        i = i==img_count?0:i+=1
        target.eq(i).addClass('on');
        target.eq(i-1).removeClass('on');
    }
    
 
    
    $('.info-pop').click(function(){
        window.open('child.html','child','width=430,height=500,location=no,status=no,scrollbars=yes');
    })
    
   
    
    
});
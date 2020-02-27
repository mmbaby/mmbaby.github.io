$(function () {
    $('.nav_info>li').mouseover(function () {
        $(this).children('.sub_info').stop().slideDown();
    });

    $('.nav_info>li').mouseleave(function () {
        $(this).children('.sub_info').stop().slideUp();
    });

    var target = $('.imges>img');
    var i = target.index(); //0-5
    var now = target.length; //6

    $('#next').click(function () {
        if (i < now - 1) {
            $('.imges').stop().css({
                'margin-left': '-=1000px'
            });
            i++;
        }
    });

    $('#prev').click(function(){
        if(i>0){
            $('.imges').stop().css({
                'margin-left': '+=1000px'
            });
            i--;
        }
    });

    $('.partner>img').click(function(){
        $('.partner_info').stop().addClass('on');
    });

    $('#close').click(function(){
        $('.partner_info').stop().removeClass('on');
    });

    //퀵메뉴 위치 조절

    var currentPosition = parseInt($('.quick').css('top')); //300
   
    $(window).scroll(function(){
        var position = $(document).scrollTop(); //현재 스크롤값
            $('.quick').stop().animate({
                'top': position + currentPosition + 'px'
            }, 500)
    });
    
    var navPosition=$('.nav').offset().top; //60
    console.log(navPosition);
    var noticePosition=$('.notice').offset().top; //590
    console.log(noticePosition);
    var eventPosition=$('.third').offset().top;//965
    console.log(eventPosition);  
   
    $('#nav').click(function(){
        $('html, body').animate({'scrollTop': navPosition + 'px'},500)
    });
    $('#notice').click(function(){
        $('html, body').animate({'scrollTop': noticePosition + 'px'},500)
    });
    $('#event').click(function(){
        $('html, body').animate({'scrollTop': eventPosition + 'px'},500)
    });
    
   
    
});

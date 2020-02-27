$(function () {
    $('.main_nav>li').mouseover(function () {
        $(this).children('.sub_nav').stop().slideDown();
    });
    $('.main_nav>li').mouseleave(function () {
        $(this).children('.sub_nav').stop().slideUp();
    });



    setInterval(function () {
        slide();
    }, 3000);

    var img_count = 4;
    var target = $('.imges>img');
    var i = target.index();

    function slide() {
        i = i==img_count?0:i+=1;
        target.eq(i).addClass('on');
        target.eq(i-1).removeClass('on');

    }



    $('.partner img').click(function () {
        $('#partner_inner').addClass('active');
    });

    $('#close').click(function () {
        $('#partner_inner').removeClass('active');
    });
});
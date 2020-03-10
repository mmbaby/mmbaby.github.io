$(function () {
    //quick view
    $('#view').mouseover(function () {
        $(this).children().slideDown();
    });
    $('#view').mouseleave(function () {
        $(this).children().slideUp();
    });


    //nav_fixed

    $(window).scroll(function () {
        var documentPosition = $(document).scrollTop();
        if (documentPosition > 270)
            $('.box4').css('display', 'block');
        else
            $('.box4').css('display', 'none');
    });
});
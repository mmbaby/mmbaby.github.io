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

    //img_panel

    setInterval(function () {
        fade_change();
    }, 4000);
    var now_img;
    var next_img;

    function fade_change() {
        now_img = $('.img_panel img:eq(0)');
        next_img = $('.img_panel img:eq(1)');
        next_img.addClass('on').css('opacity', 0).animate({
            'opacity': 1
        }, 1000, function () {
            $('.img_panel').append(now_img);
            now_img.removeClass('on');
        });
    }

    //contents


    setInterval(function () {
        first_timer();

    }, 3000);

    function first_timer() {
        var odd = $('.first li:odd');
        var even = $('.first li:even');
        if (odd.is(':visible')) {
            odd.hide();
            even.show();
        } else {
            odd.show();
            even.hide();
        }
    }


    setInterval(function () {
        second_timer();

    }, 4000);

    function second_timer() {
        var odd = $('.second li:odd');
        var even = $('.second li:even');
        if (odd.is(':visible')) {
            odd.hide();
            even.show();
        } else {
            odd.show();
            even.hide();
        }
    }
    
    //push_side
    $('#sideopen').click(function(){
        $('.sidebar').addClass('active');
        $('.overlay').fadeIn();
    });
    
    $('.overlay').click(function(){
       $('.sidebar').removeClass('active');
        $(this).fadeOut();
    });



});
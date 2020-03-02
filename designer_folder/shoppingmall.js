$(function () {
    $(window).scroll(function () {
        var documentPosition = $(document).scrollTop();
        if (documentPosition > 580) {
            $('.box3').stop().addClass('fixed');
        } else {
            $('.box3').stop().removeClass('fixed');
        }
        var currentPosition = $('.quick').css('top'); //300
        $('.quick').stop().animate({
            'top':currentPosition+documentPosition+'px'
        },500)

    });

    //box1
    var bookmark = $('.bookmark li');
    var join = $('.join li');

    bookmark.stop().mouseover(function () {
        var bookmarkSpan = $(this).find('span');
        var bookmarkI = $(this).find('i');
        bookmarkSpan.addClass('on');
        bookmarkI.addClass('off');
    });
    bookmark.stop().mouseleave(function () {
        var bookmarkSpan = $(this).find('span');
        var bookmarkI = $(this).find('i');
        bookmarkSpan.removeClass('on');
        bookmarkI.removeClass('off');
    });

    join.stop().mouseover(function () {
        var joinSpan = $(this).find('span');
        var joinI = $(this).find('i');
        joinSpan.addClass('on');
        joinI.addClass('off');
    });
    join.stop().mouseleave(function () {
        var joinSpan = $(this).find('span');
        var joinI = $(this).find('i');
        joinSpan.removeClass('on');
        joinI.removeClass('off');
    });
    //product
    setInterval(function () {
        slide();
    }, 2000);

    var target_odd = $('.product li:odd');
    var target_even = $('.product li:even');
    var change = 0;

    function slide() {
        if (change === 0) {
            target_even.removeClass("on");
            target_odd.addClass("on");
        } else {
            target_odd.removeClass("on");
            target_even.addClass("on");
        }

        change = (change + 1) % 2;
    }

    //imges
    //이미지와 버튼 인덱스값 연결

    $('.img_slide>li').each(function (index) {
        $(this).attr('data-index', index);
    });
    $('.btn>li').each(function (index) {
        $(this).attr('data-index', index);
    }).click(function () {
        var btnIndex = $(this).attr('data-index');
        //        console.log(btnIndex); //버튼 인덱스
        clickSlider(btnIndex);
    });


    function clickSlider(btnIndex) {
        $('.img_slide>li[data-index=' + btnIndex + ']').stop().addClass('active');
        $('.img_slide>li[data-index!=' + btnIndex + ']').stop().removeClass('active');
    }


    var now = 0;
    var img_count = 4;
    setInterval(function () {
        imgSlider();
    }, 3000);

    function imgSlider() {
        now = (now == img_count) ? 0 : now + 1;
        $('.img_slide>li[data-index=' + now + ']').stop().addClass('active');
        $('.img_slide>li[data-index!=' + now + ']').stop().removeClass('active');
    };

    //content
    var contentsSlide = $('.contents>li');
    contentsSlide.each(function (index) {
        $(this).attr('data-index', index);
    });

    setInterval(function () {
        moveLeft();
    }, 2000);

    var i = 0;
    var count = contentsSlide.length; //5
    function moveLeft() {
        $('.contents').append($('.contents>li[data-index=' + i + ']'));
        //        console.log(i);
        i = (i + 1) % 5;
    }









});
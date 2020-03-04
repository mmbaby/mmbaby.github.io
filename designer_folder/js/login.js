$(function () {

    var loginPosition = $('.loginlogo').offset().top;


    $('html, body').stop().animate({
        'scrollTop': (loginPosition - 50) + 'px'
    }, 800);

    $('input[id=login]').click(function(){
        var idresult=$.trim($('input[id=idresult]').val());
        var pwresult=$.trim($('input[id=pwresult]').val());
        if(!idresult){
            alert('ID 를 입력해주세요');
            $('input[id=idresult]').focus();
        }else if(!pwresult){
            alert('PW 를 입력해주세요');
            $('input[id=pwresult]').focus();
        }
    })

});
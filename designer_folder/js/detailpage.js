$(function () {
    var targer_odd = $('.mainimg li:odd');
    var targer_even = $('.mainimg li:even');
    var i = 0;
    setInterval(function () {
        if (i === 0) {
            targer_odd.addClass('on');
            targer_even.removeClass('on');
        } else {
            targer_odd.removeClass('on');
            targer_even.addClass('on');
        }
        i = (i + 1) % 2;
    }, 2000);

    //옵션 값 넣기
    $('select[name=gender]').change(function () {
        if ($(this).val() != '1') {
            $('#option1').val($(this).val());
            $('#option1').attr('readonly', true);
        } else {
            $('#option1').val('');
        }
    });

    $('select[name=size]').change(function () {
        if ($(this).val() != '1') {
            $('#option2').val($(this).val());
            $('#option2').attr('readonly', true);
        } else {
            $('#option2').val('');
        }
    });
    //별점

    $('.select_item').click(function () {
        var documentHtml = $(this).html();
        let $_label = $('#select_input_label');
        $_label.html(documentHtml);
        $('.star_label_ul').children().hide();
        var data_score = $(this).attr('data_score');
//        console.log(data_score);

        $_label.children("span").css("font-size", 13);
        $_label.children("img").css({
            'width': '15',
            'height': '15',
            'display': 'inline-block',
            'vertical-align': 'middle'
        });
        


    });




    //추천배너 사진
    var count = 0;
    setInterval(function () {

        var odd = $('.item li:odd');
        var even = $('.item li:even');
        if (count == 0) {
            odd.addClass('view');
            even.removeClass('view');
        } else {
            even.addClass('view');
            odd.removeClass('view');
        }
        count = (count + 1) % 2;
    }, 3000);

    //배너 옆으로 넘기기

    $('.item').each(function (index) {
        $(this).attr('data-index', index);
    });

    $('.go_left').click(function () {
        let first_index = $('.recommend_item').children().eq(0).attr("data-index");
        $('.item[data-index=' + (first_index) + ']').appendTo($('.recommend_item'));
    });
    $('.go_right').click(function () {
        let last_index = $('.recommend_item').children().eq(-1).attr("data-index");
        $('.item[data-index=' + (last_index) + ']').prependTo($('.recommend_item'));
    });

    //카드할부 버튼
    $('.tag input[id=notax]').click(function () {
        $('.tax:even').addClass('do');
        $('.tax:odd').removeClass('do');
    });
    $('.tag input[id=addtax]').click(function () {
        $('.tax:odd').addClass('do');
        $('.tax:even').removeClass('do');
    });

    $('.tag li').eq(0).click(function () {
        $(this).addClass('pick');
        $('.tag li').eq(-1).removeClass('pick');
    });
    $('.tag li').eq(-1).click(function () {
        $(this).addClass('pick');
        $('.tag li').eq(0).removeClass('pick');
    });

    $('.price input[id=card]').click(function () {
        if ($('.card_info').is(':visible')) {
            //true
            $('.card_info').fadeOut('fast');

        } else {
            //false
            $('.card_info').fadeIn('fast');
        }
    });

    //nav 이동
    var tab_1_Position = $('.boxE').offset().top;
    var tab_2_Position = $('.boxH').offset().top;
    var tab_3_Position = $('.boxJ').offset().top;
    var tab_4_Position = $('.boxL').offset().top;

    $('.nav li a').click(function (event) {
        event.preventDefault;
        var targetNav = $(this).attr('class');
        if (targetNav === 'tab_1') {
            $('html, body').animate({
                'scrollTop': (tab_1_Position - 50) + 'px'
            }, 500);
        } else if (targetNav === 'tab_2') {
            $('html, body').animate({
                'scrollTop': (tab_2_Position - 50) + 'px'
            }, 500);
        } else if (targetNav === 'tab_3') {
            $('html, body').animate({
                'scrollTop': (tab_3_Position - 50) + 'px'
            }, 500);
        } else {
            $('html, body').animate({
                'scrollTop': (tab_4_Position - 50) + 'px'
            }, 500);
        }


    });

    //star_lable
    $('.down, #select_input').click(function () {
        if ($('.star_label_ul').children().is(':visible')) {
            $('.star_label_ul').children().hide();
        } else {
            $('.star_label_ul').children().show();
        }
    });

    //평점
    let personnelArray = $('.data_score_filters>input').toArray();
    var personValues = [];
//    console.log(personValues);
    for(let person of personnelArray)
        personValues.push(Number(person.value));
        
//    valSums.push(Number($('#personnel_5').val()));
//    valSums.push(Number($('#personnel_4').val()));
//    valSums.push(Number($('#personnel_3').val()));
//    valSums.push(Number($('#personnel_2').val()));
//    valSums.push(Number($('#personnel_1').val()));
    
    let sum = 0;
    for(let value of personValues)
        sum+=value;
    
    $('input[name=people]').val(sum);
    let percents=[];
    for(let value of personValues)
        percents.push(parseInt((value/sum)*100));
    
//    var percent_5=parseInt((valSum5/allSum)*100);
//    var percent_4=parseInt((valSum4/allSum)*100);
//    var percent_3=parseInt((valSum3/allSum)*100);
//    var percent_2=parseInt((valSum2/allSum)*100);
//    var percent_1=parseInt((valSum1/allSum)*100);
    
        $('.dimain_point').each(function(index, item){
            $(item).css('width',percents[index]+'%');
        });
        
//    $('#percent_5').css('width',percent_5+'%');
//    $('#percent_4').css('width',percent_4+'%');
//    $('#percent_3').css('width',percent_3+'%');
//    $('#percent_2').css('width',percent_2+'%');
//    $('#percent_1').css('width',percent_1+'%');

//평균점수
//    var scoreArray=$('.data_score_filters').toArray();
//    var scores=[];
//    for(let data_score of scoreArray)
//        scores.push(Number(data_score.value));
//    console.log(scores);
    
    var personVal5=Number($('#personnel_5').val());
    var personVal4=Number($('#personnel_4').val());
    var personVal3=Number($('#personnel_3').val());
    var personVal2=Number($('#personnel_2').val());
    var personVal1=Number($('#personnel_1').val());
    
    var multi=(5*personVal5)+(4*personVal4)+(3*personVal3)+(2*personVal2)+(1*personVal1);
   
    var result=multi/sum;
    
    $('#ave_input').text(result.toFixed(1));
    
    $('input[id=cart_in]+label').click(function(){
          $('.cart_pop').addClass('block'); 
       });
        $('#close').click(function(){
          $('.cart_pop').removeClass('block'); 
       });
});



var sell_price;
var amount;

function init() {
    sell_price = document.form.sell_price.value;
    amount = document.form.amount.value;
    document.form.sum.value = sell_price;
    change();
}

function add() {
    hm = document.form.amount;
    sum = document.form.sum;
    hm.value++;

    sum.value = parseInt(hm.value) * sell_price;
}

function del() {
    hm = document.form.amount;
    sum = document.form.sum;
    if (hm.value > 1) {
        hm.value--;
        sum.value = parseInt(hm.value) * sell_price;
    }
}

function change() {
    hm = document.form.amount;
    sum = document.form.sum;

    if (hm.value < 0) {
        hm.value = 0;
    }
    sum.value = parseInt(hm.value) * sell_price;
}
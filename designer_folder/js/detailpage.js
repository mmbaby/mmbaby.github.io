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

    $('.item').each(function(index){
        $(this).attr('data-index',index);
    });
 
    $('.go_left').click(function () {
        let first_index = $('.recommend_item').children().eq(0).attr("data-index");
         $('.item[data-index='+(first_index)+']').appendTo($('.recommend_item'));
    });
     $('.go_right').click(function () {
         let last_index = $('.recommend_item').children().eq(-1).attr("data-index");
         $('.item[data-index='+(last_index)+']').prependTo($('.recommend_item'));
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
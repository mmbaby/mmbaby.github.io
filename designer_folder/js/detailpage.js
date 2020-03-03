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
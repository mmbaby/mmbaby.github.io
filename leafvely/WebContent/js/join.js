$(function () {
    var joinPosition = $('.certification').offset().top;

    $('html, body').stop().animate({
        'scrollTop': (joinPosition - 100) + 'px'
    }, 500);


    //우편주소 찾기
    $('#sample6_execDaumPostcode').click(function () {
        new daum.Postcode({
            oncomplete: function (data) {

                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                if (data.userSelectedType === 'R') {
                    addr = data.roadAddress;
                } else {
                    addr = data.jibunAddress;
                }


                if (data.userSelectedType === 'R') {
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }

                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }

                    if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                    }

                    document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }


                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;

                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    });

    //전체동의
    $('#allagree').click(function () {
        if ($('input[id=allagree]').prop('checked')) {
            $('.agree_check input[type=checkbox]').prop('checked', true);
        } else {
            $('.agree_check input[type=checkbox]').prop('checked', false);
        }

    });

    //엔터키 submit 막기
    $('input').keydown(function () {
        if (event.keyCode === 13) {
            event.preventDefault();
        }
    })

    //비밀번호 일치
    $('#same').hide();
    $('#discord').hide();
    $('input[type=password]').keyup(function () {
        var pw = $('input[name=pw]').val();
        var pwCheck = $('input[name=pwCheck]').val();
        if (pw != '' && pwCheck != '') {
            if (pw === pwCheck) {
                $('#same').show();
                $('#discord').hide();
                $('input[type=submit]').removeAttr('disabled');
            } else {
                $('#same').hide();
                $('#discord').show();
            }
        }
    });
    //비밀번호 틀릴때 제출 안되게
    $('input[type=submit]').click(function(){
        var pw = $('input[name=pw]').val();
        var pwCheck = $('input[name=pwCheck]').val();
       if(pw!=pwCheck){
           $(this).attr('disabled','disabled');
           alert('PW를 다시 한번 확인해주세요');
       }
    });
    
    //이메일값 넣기
    $('select[name=emailSelect]').stop().change(function() {
        if ($(this).val() == '1') {
            $('#email_2').val('');
        } else {
            $('#email_2').val($(this).val());
            $('#email_2').attr('readonly', true);
        }

    });







});
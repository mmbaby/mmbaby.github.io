<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>JOIN</title>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/shoppingmall.js"></script>
<script src='js/join.js'></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel='stylesheet' href="css/shoppingmall.css">
<link rel='stylesheet' href="css/join.css">
</head>

<body>
    <div class='box1'>
        <div class='box1_1'>
            <ul class='bookmark'>
                <li><a href="#"><i class="fas fa-heartbeat"></i><span>BOOK<br>MARK
                        </span></a></li>
                <li><a href='#'><i class="fas fa-search"></i><span>SEARCH</span></a></li>
            </ul>
        </div>
        <div class='logo'>
            <a href='shoppingmall.jsp'><img src="img/logo.png" alt='' width='300'></a>
        </div>
        <div class='box1_2'>
            <div class="loginStatus">
            </div>
            <ul class='join'>
                <li><a href="login.jsp"><i class="fas fa-link"></i><span>LOGIN
                            <small>OR</small> JOIN
                        </span></a></li>
                <li><a href="#"><i class="fas fa-user"></i><span>MY
                            PAGE</span></a></li>
                <li><a href="#"><i class="fas fa-shopping-cart"></i><span>CART</span></a></li>
            </ul>
        </div>
    </div>
    <div class='box2'>
        <div class='box2_inner'>
            <div class='menu'>
                <ul id='deco'>
                    <li><a href='#'>
                            <h4>NEW 5%</h4>
                        </a></li>
                    <li><a href='#'>
                            <h4>BEST</h4>
                        </a></li>
                    <li><a href='#'>
                            <h4>WEEKLY UPDATE</h4>
                        </a></li>
                    <li><a href='#'>
                            <h4>REVIEW</h4>
                        </a></li>
                    <li><a href='#'>
                            <h4>EVENT</h4>
                        </a></li>
                    <li><a href='#'>
                            <h4>득템찬스</h4>
                        </a></li>
                </ul>
            </div>
            <div class='menu'>
                <ul>
                    <li>
                        <h4>APPARELS</h4>
                    </li>
                    <li><a href='#'><span>맆블리메이드</span></a></li>
                    <li><a href='#'><span>아우터</span></a></li>
                    <li><a href='#'><span>원피스</span></a></li>
                    <li><a href='#'><span>상의</span></a></li>
                    <li><a href='#'><span>블라우스 & 셔츠</span></a></li>
                    <li><a href='#'><span>팬츠</span></a></li>
                    <li><a href='#'><span>스커트</span></a></li>
                    <li><a href='#'><span>슈즈 & 백</span></a></li>
                    <li><a href='#'><span>액세서리</span></a></li>
                    <li><a href='#'><span>입고일정안내</span></a></li>
                </ul>
            </div>
            <div class='menu'>
                <ul>
                    <li>
                        <h4>COSMETIC</h4>
                    </li>
                    <li><a href='#'><span>LEAFVELY VELY<i class="fab fa-angellist"></i></span></a></li>
                    <br>
                    <li>
                        <h4>LIFE STYLE</h4>
                    </li>
                    <li><a href='#'><span>LEAF PICK</span></a></li>
                    <li><a href='#'><span>LEAF HOME</span></a></li>
                </ul>
            </div>
            <div class='menu'>
                <ul>
                    <li>
                        <h4>BRAND</h4>
                    </li>
                    <li><a href='#'><span>맆티드에디션</span></a></li>
                    <li><a href='#'><span>맆라벨</span></a></li>
                    <li><a href='#'><span>3 GOOSE DOWN</span></a></li>
                    <li><a href='#'><span>땡큐맆머치</span></a></li>
                    <li><a href='#'><span>VERSE</span></a></li>
                    <li><a href='#'><span>DISNEY</span></a></li>
                    <li><a href='#'><span>LEAFSOME</span></a></li>
                    <li><a href='#'><span>COLLECT</span></a></li>
                    <li><a href='#'><span>러브미모어</span></a></li>
                    <li><a href='#'><span>런던슬랙스</span></a></li>
                    <li><a href='#'><span>맘블리</span></a></li>
                    <li><a href='#'><span>미친바지</span></a></li>
                </ul>
            </div>
            <div class='menu'>
                <ul id='last'>
                    <li>
                        <h4>COMMUNITY</h4>
                    </li>
                    <li><a href='#'><span>고객행복센터</span></a></li>
                    <li><a href='#'><span>고객의 소리</span></a></li>
                    <li><a href='#'><span>공지사항</span></a></li>
                    <li><a href='#'><span>이벤트</span></a></li>
                    <li><a href='#'><span>알려드립니다</span></a></li>
                    <li><a href='#'><span>오프라인 스토어</span></a></li>
                    <li><a href='#'><span>실시간 포토리뷰</span></a></li>
                    <li><a href='#'><span>VIP전용게시판</span></a></li>
                    <li><a href='#'><span>출석체크</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class='box3'>
        <div class='box3_inner'>
            <div class='fixednav'>
                <ul>
                    <li><a href='#'>BEST</a></li>
                    <li><a href='#'>NEW5%</a></li>
                    <li><a href='#'><span>LEAFVELY</span></a></li>
                    <li><a href='#'>MADE</a></li>
                    <li><a href='#'>OUTER</a></li>
                    <li><a href='#'>DRESS</a></li>
                    <li><a href='#'>TEE</a></li>
                    <li><a href='#'>BLOUSE</a></li>
                    <li><a href='#'>PANTS</a></li>
                    <li><a href='#'>SKIRT</a></li>
                    <li><a href='#'>SHOES/BAG</a></li>
                    <li><a href='#'>ACC</a></li>
                    <li><a href='#'>LEAF HOME</a></li>
                    <li><a href='#'>땡큐맆머치</a></li>
                    <li><a href='#'>미친바지</a></li>
                    <li><a href='#'>DESNEY</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class='boxA'>
        <div class='certification'>
            <input type=radio id='card' name='name'> <label for='card'>신용카드인증</label>
            <input type=radio id='mobile' name='name'> <label for='mobile'>휴대폰인증</label> <input type=radio id='ipin' name='name'>
            <label for='ipin'>아이핀인증</label><br>
            <button name='button'>인증하기</button>
            <p>*본인 명의의 수단으로 본인인증을 진행합니다.</p>
        </div>
    </div>
    <form action="join" method="post">
        <div class='boxB'>
            <div class='infor'>
                <strong>기본정보 | </strong> 다음은 회원가입을 위한 <strong>필수입력</strong> 항목입니다.

                <table>
                    <tr>
                        <td>
                            <p>
                                아이디<span>*</span>
                            </p>
                        </td>
                        <td><input type='text' name="id" required></td>
                        <td colspan='3'><small>(영문소문자/숫자,4~16자)</small></td>
                    </tr>

                    <tr>
                        <td>
                            <p>
                                비밀번호<span>*</span>
                            </p>
                        </td>
                        <td><input type='password' name="pw" required></td>
                        <td colspan='3'><small>(영문 대소문자/숫자/특수문자 중 2가지 이상 조합,
                                10자~16자)</small></td>
                    </tr>

                    <tr>
                        <td>
                            <p>
                                비밀번호 확인<span>*</span>
                            </p>
                        </td>
                        <td><input type='password' name="pwCheck" id='pwCheck' required></td>
                        <td><span id='same' style='color: darkolivegreen; font-size: 12px; font-weight: bold;'>비밀번호가
                                일치합니다.</span><span id='discord' style='font-size: 12px; font-weight: bold;'>비밀번호가
                                일치하지않습니다.</span></td>
                    </tr>

                    <tr>
                        <td>
                            <p>
                                비밀번호 확인 질문<span>*</span>
                            </p>
                        </td>
                        <td colspan="2"><select name="pwCheckQ" required>
                                <option>선택해주세요</option>
                                <option>맆블리 처음 기념 날짜는?</option>
                                <option>맆블리 기억에 남는 여행 장소는?</option>
                                <option>맆블리 아이러브커피 야옹이 이름은?</option>
                                <option>맆블리 좋아하는 유투버 채널은?</option>
                                <option>맆블리 가장 좋아하는 음식은?</option>
                                <option>맆블리 즐겨먹는 간식의 종류는?</option>
                                <option>맆블리 이루고싶은 최대목표는?</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td>
                            <p>
                                비밀번호 확인 답변<span>*</span>
                            </p>
                        </td>
                        <td><input type='text' name="pwCheckA" required></td>
                    </tr>

                    <tr>
                        <td>
                            <p>
                                이름<span>*</span>
                            </p>
                        </td>
                        <td><input type='text' class='normaltext' name="userName" required></td>
                    </tr>

                    <tr>
                        <td rowspan='3'>
                            <p>
                                주소<span>*</span>
                            </p>
                        </td>
                        <td><input type="text" id="sample6_postcode" placeholder="우편번호" name="postCode" readonly></td>
                        <td><input type="button" id="sample6_execDaumPostcode" value="우편번호 찾기"></td>
                    </tr>
                    <tr>
                        <td><input type="text" id="sample6_address" placeholder="주소" name="address" readonly></td>
                    </tr>
                    <tr>
                        <td><input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addressDetail" required></td>
                        <td><input type="text" id="sample6_extraAddress" placeholder="참고항목" name="addressExtra" readonly></td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                휴대전화<span>*</span>
                            </p>
                        </td>
                        <td><select name="phoneN">
                                <option>010</option>
                                <option>011</option>
                                <option>016</option>
                                <option>017</option>
                                <option>018</option>
                                <option>019</option>
                            </select> - <input type='text' class='smalltext' name="phoneN" required>
                            - <input type='text' class='smalltext' name="phoneN" required>
                        </td>

                    </tr>

                    <tr>
                        <td rowspan='2'>
                            <p>
                                SMS 수신여부<span>*</span>
                            </p>
                        </td>
                        <td colspan="2"><input type='radio' name='snsAg' id='agree1' required> <label for='agree1'>동의함</label> <input type='radio' name='snsAg' id='agree3'> <label for='agree3'>동의하지않음</label></td>
                    </tr>
                    <tr>
                        <td colspan="3"><small>쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로
                                받으실 수 있습니다.</small></td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                이메일<span>*</span>
                            </p>
                        </td>
                        <td colspan='3'><input type='text' name="userEmail" id='email_1' required> <small>@</small> <input type='text' id='email_2' name="userEmail" required> <select id='emailSelect' name='emailSelect' style='vertical-align: bottom'>
                                <option value="1" selected='selected'>직접입력</option>
                                <option>naver.com</option>
                                <option>hanmail.net</option>
                                <option>google.co.kr</option>
                                <option>nate.com</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td rowspan='2'>
                            <p>
                                이메일 수신여부<span>*</span>
                            </p>
                        </td>
                        <td colspan="2"><input type='radio' name='emailAg' id='agree2' required> <label for='agree2'>동의함</label> <input type='radio' name='emailAg' id='agree4'> <label for='agree4'>동의하지않음</label></td>
                    </tr>
                    <tr>
                        <td colspan="3"><small>쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로
                                받으실 수 있습니다.</small></td>
                    </tr>
                </table>
            </div>

            <div class='addinfo'>
                <strong>추가정보 | </strong>
                <input type='checkbox' name='add_agree' id='add_agree'><label for='add_agree'> 전체 입력안함</label>
                <table id='prefer'>
                    <tr>
                        <td><input type="checkbox" name='input_1' id='input_1'><label for='input_1' >닉네임</label></td>
                        
                        <td><input type='text' class='normaltext' name="nickname"></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name='input_2' id='input_2'><label for='input_2' >생년월일</label></td>
                        
                        <td><input type='text' class='smalltext' name="birthDate">
                            년 <input type='text' class='smalltext' name="birthDate">
                            월 <input type='text' class='smalltext' name="birthDate">
                            일</td>
                        <td><input type='radio' name='name' id='Lift'> <label for='Lift'>앙력</label> 
                           <input type='radio' name='name' id='Lunar'>
                            <label for='Lunar'>음력</label></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name='input_3' id='input_3'><label for='input_3' >추천인 아이디</label></td>
                        
                        <td><input type='text' class='normaltext' name="referer"></td>
                    </tr>

                </table>
            </div>
        </div>
        <div class='boxD'>
            <div class='agree'>
                <textarea class='noresize'>
                제 1조 (목적)

이 약관은 리프블리㈜(이하 "회사"라 한다)이 운영하는 인터넷 쇼핑몰 (맆블리) 이하 "쇼핑몰"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 쇼핑몰과 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.

PC통신, 모바일 무선 등을 이용하는 전자상거래에 대해서는 그 성질에 반하지 않는 한 이 약관을 준용합니다.



제 2조 (정의)

01."쇼핑몰" 이란 회사가 재화 또는 용역(이하 "재화등"이라 한다)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.

02."이용자"란 쇼핑몰에 접속하여 이 약관에 따라 쇼핑몰이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

03."회원"이라 함은 쇼핑몰에 개인정보를 제공하여 회원등록을 한 자로서, 쇼핑몰의 정보를 지속적으로 제공받으며, 쇼핑몰이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

04."비회원"이라 함은 회원에 가입하지 않고 쇼핑몰이 제공하는 서비스를 이용하는 자를 말합니다.

05."적립금"이란 쇼핑몰이 회원과의 거래에 부수하여 회원에게 제공하는 것으로, 회원은 쇼핑몰과의 물품등의 거래 시 적립금을 금전과 같이 사용할 수 있으며, 쇼핑몰이 이를 운영하는 제도를 "적립금제도"라고 합니다.

06.“예치금”이란 쇼핑몰이 회원과의 거래에서 주문취소 등의 결제대금 환불, 초과입금 차액 환불등으로 발생한 금액을 현금대신 임시지급(적립)하여 현금과 동일하게 사용이 가능한 것을 말합니다.


            </textarea>
                <div class='agree_check'>
                    <p>이용약관에 동의하십니까?</p>
                    <input type='checkbox' name='name' id='agree_1' required> <label for='agree_1'>동의함 (필수)</label>
                </div>
                <textarea class='noresize'>
              제 3조 (약관 등의 명시와 설명 및 개정)

01.쇼핑몰은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 모사전송번호, 전자우편주소, 사업자등록번호, 호스팅서비스를 제공하는 자의 상호, 통신판매업신고번호 등을 이용자가 쉽게 알 수 있도록 쇼핑몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

02.쇼핑몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.

03.쇼핑몰은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자거래기본법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자보호법」 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.

04.쇼핑몰이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 쇼핑몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 쇼핑몰은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.

05.쇼핑몰이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 쇼핑몰에 송신하여 쇼핑몰의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

06.이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제 등에 관한 법률」, 공정거래위원회가 정하는 「전자상거래 등에서의 소비자보호 지침」 및 관계법령 또는 상관례에 따릅니다.



제 4조 (서비스의 제공 및 변경)

01.쇼핑몰은 다음과 같은 업무를 수행합니다.

- 재화등에 대한 정보 제공 및 구매계약의 체결

- 구매계약이 체결된 재화등의 배송

- 기타 쇼핑몰이 정하는 업무

02.쇼핑몰은 재화등의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화등의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화등의 내용 및 제공일자를 명시하여 현재의 재화등의 내용을 게시한 곳에 즉시 공지합니다.

03.쇼핑몰이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.

04.전항의 경우 쇼핑몰은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, 쇼핑몰이 고의 또는 중대 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

            </textarea>
                <div class='agree_check'>
                    <p>개인정보 수집 및 이용에 동의하십니까?</p>
                    <input type='checkbox' name='name' id='agree_2' required> <label for='agree_2'>동의함 (필수)</label>
                </div>
                <div class='agree_all'>
                    <input type='checkbox' name='name' id='allagree'> <label for='allagree'>전체동의 하기</label>
                </div>
            </div>
        </div>
        <div class='boxE'>
            <div class='confirm'>
                <h5>
                    *서비스 제공을 위해 수집하는 위 개인정보에 대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부할 수 있습니다.<br>단,
                    이에 따라 제공되는 서비스가 제한될 수 있습니다.
                </h5>
                <input type='submit' name='submit' value='회원가입'> <input type='button' onclick="location.href='shoppingmall.jsp'" value='취소'>
            </div>
        </div>
    </form>

    <div class='box8'>
        <div class='box8_inner'>
            <div class='box8_1'>
                <div class='call'>
                    <h1>
                        <i class="fas fa-phone-volume"></i> 1588-0316
                    </h1>
                </div>
                <div class='time'>
                    <p>업무시간-10:00~17:00(점심시간-12:20~13:20)</p>
                    <p>휴무-토요일,일요일,공휴일</p>
                </div>
                <div class='ask'>
                    <button name='button'>문의하기</button>
                    <button name='button'>자주묻는질문</button>
                </div>
            </div>
            <div class='box8_2'>
                <div class='copyright'>
                    <ul>
                        <h5>GUIDE</h5>
                        <li><a href='#'><strong>개인정보처리방침</strong></a></li>
                        <li><a href='#'>이용약관</a></li>
                        <li><a href='#'>이용안내</a></li>
                        <li><a href='#'>인재채용</a></li>
                        <li><a href='#'>도매/제휴문의</a></li>
                        <li><a href='#'>오프라인매장</a></li>
                    </ul>
                    <ul>
                        <h5>CUSTOMER SERVICE</h5>
                        <li><a href='#'>공지사항</a></li>
                        <li><a href='#'>자주 묻는 질문</a></li>
                        <li><a href='#'>이벤트</a></li>
                        <li><a href='#'>출석체크</a></li>
                        <li><a href='#'>블리 119</a></li>
                    </ul>
                    <ul>
                        <h5>DELIVERY</h5>
                        <p>
                            반품주소 : 부산시 동구 자성공원로 13,<br> 자성대 그린파크 401호
                        </p>
                        <p>반품요청 : 우체국 택배 (1588-1300)</p>
                        <li><a href='#'>배송조회</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class='quick'>
        <a href="#"><i class="fas fa-chevron-up"></i></a> <a id='down'><i class="fas fa-chevron-down"></i></a>
    </div>
</body>
</html>
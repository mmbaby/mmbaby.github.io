<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>DETAILPAGE1</title>
    <script src="js/jquery-3.4.1.min.js"></script>

    <script src="js/shoppingmall.js"></script>
    <script src='js/detailpage.js'></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    <link rel='stylesheet' href="css/shoppingmall.css">
    <link rel='stylesheet' href="css/detailpage.css">
</head>

<body class='detail1' onload="init();">
    <div class='box1'>
        <div class='box1_1'>
            <ul class='bookmark'>
                <li><a href="#"><i class="fas fa-heartbeat"></i><span>BOOK<br>MARK</span></a></li>
                <li><a href='#'><i class="fas fa-search"></i><span>SEARCH</span></a></li>
            </ul>
        </div>
        <div class='logo'>
            <a href='shoppingmall.html'><img src="img/logo.png" alt='' width='300'></a>
        </div>
        <div class='box1_2'>
            <div class="loginStatus">
                <c:if test="${sessionScope.id ne null}">${sessionScope.id} <span style="font-size: 12px; display: inline;">님 안녕하세요.</span>
                </c:if>
            </div>
            <ul class='join'>
                <li><a href="loginPage.do"><i class="fas fa-link"></i><span>LOGIN <small>OR</small> JOIN</span></a></li>
                <li><a href="#"><i class="fas fa-user"></i><span>MY PAGE</span></a></li>
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
                    <li><a href='#'><span>LEAFVELY VELY<i class="fab fa-angellist"></i></span></a></li><br>
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
        <div class='mainimg'>
            <ul>
                <li class='on'><img src="img/KakaoTalk_20200228_192219865_01.jpg"></li>
                <li><img src="img/KakaoTalk_20200228_192219865_02.jpg"></li>
            </ul>
        </div>
        <div class='img_side'>
            <div class='story'>
                <h3>프로필사진 GET! 시밀러룩 DAY!</h3>
                <div class='story_label'>
                    <ul>
                        <li>NEW5% DC</li>
                        <li>LEAFVELY 추천</li>
                    </ul>
                </div>
                <p>맆블리는 인생샷사진 찍을때, 카페를 간다!</p>
            </div>
            <div class='price'>
                <table>
                    <tr>
                        <td>판매가</td>
                        <td><span>32,000</span></td>
                    </tr>
                    <tr>
                        <td>할인판매가</td>
                        <td>30,400원 (1,600원 할인)</td>
                    </tr>
                    <tr>
                        <td>적립금</td>
                        <td>300원</td>
                    </tr>
                    <tr>
                        <td>배송비</td>
                        <td>2,000원 (50,000원 이상 구매시 무료)</td>
                    </tr>
                    <tr>
                        <td>무이자할부</td>
                        <td><input type='button' id='card' value='카드 혜택안내 +'></td>
                    </tr>
                    <tr>
                        <td>SNS 공유</td>
                        <td><i class="fab fa-facebook-square"></i>
                            <i class="fab fa-twitter-square"></i>
                        </td>
                    </tr>
                    <tr>
                        <td>GENDER</td>
                        <td>
                            <select id='gender' name='gender' required>
                                <option value="1">-[필수] 옵션을 선택해 주세요-</option>
                                <option>Female </option>
                                <option>Male</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>SIZE</td>
                        <td>
                            <select id='size' name='size' required>
                                <option value="1">-[필수] 옵션을 선택해 주세요-</option>
                                <option>FREE SIZE</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <div class='card_info'>
                    <ul class='tag'>
                        <li class='pick'><input type='button' name='button' id='notax'>
                            <label for='notax'>무이자 할부</label>
                        </li>
                        <li>
                            <input type='button' name='button' id='addtax'>
                            <label for='addtax'>부분 무이자 할부</label>
                        </li>
                    </ul>

                    <ul class='tax do'>
                        <li>삼성카드<span>2~6 개월 (5만원 이상)</span></li>
                        <li>신한카드<span>2~6 개월 (5만원 이상)</span></li>
                        <li>KB국민카드<span>2~6 개월 (5만원 이상)</span></li>
                        <li>현대카드<span>2~6 개월 (5만원 이상)</span></li>
                        <li>비씨카드<span>2~6 개월 (5만원 이상)</span></li>
                        <li>NH농협카드<span>2~6 개월 (5만원 이상)</span></li>
                        <li>씨티카드<span>2~6 개월 (5만원 이상)</span></li>
                        <li>하나카드<span>2~6 개월 (5만원 이상)</span></li>
                    </ul>
                    <ul class='tax add'>
                        <li>삼성카드<span>10개월: 고객 1-4회차 부담(5만원 이상)<br>12개월: 고객 1-5회차 부담(5만원 이상)</span></li>
                        <li>신한카드<span>10개월: 고객 1-3회차 부담(5만원 이상)<br>12개월: 고객 1-4회차 부담(5만원 이상)</span></li>
                        <li>KB국민카드<span>10개월: 고객 1-4회차 부담(5만원 이상)<br>12개월: 고객 1-5회차 부담(5만원 이상)</span></li>
                        <li>비씨카드<span>10개월: 고객 1-2회차 부담(5만원 이상)<br>12개월: 고객 1-3회차 부담(5만원 이상)</span></li>
                        <li>NH농협카드<span>10개월: 고객 1-2회차 부담(5만원 이상)<br>12개월: 고객 1-4회차 부담(5만원 이상)</span></li>

                    </ul>
                </div>
            </div>
        </div>

    </div>
    <div class='boxB'>
        <div class='buy'>
            <form name='form' method='get'>
                <table>
                    <tr>
                        <td style="vertical-align: bottom"><span>프로필사진 GET! 시밀러룩 DAY!</span><br><br>
                            - <input type='text' class='none' id='option1' size='5' readonly onfocus="this.blur()">
                            <label for='option1'></label>
                            / <input type='text' class='none' id='option2' size='6' readonly onfocus="this.blur()">
                            <label for='option2'></label>
                        </td>
                        <td style="vertical-align: bottom">
                            <input type='hidden' name='sell_price' value='30400'>
                            <input type='text' name='amount' value='1' size='1' style='outline: 0;' onchange='change();'>
                            <input type='button' value="+" onclick="add();">
                            <input type='button' value='-' onclick='del();'>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='5' style='text-align: right'>
                            \<input type='text' class='none' name='sum' size='11' value="" style='font-weight: bold; font-size: 15px; text-align: right;' readonly onfocus="this.blur()">
                        </td>
                    </tr>
                </table>
                <div class='buy_btn'>
                    <input type="button" class='btn1' name='cart_in' id='cart_in'>
                    <label for='cart_in' id='cart_in_label'>장바구니에넣기</label>
                    <input type="button" class='btn1' name='buy_now' id='buy_now'>
                    <label for='buy_now'>바로구매하기</label>
                </div>

                <div class='cart_pop'>
                    <div class='pop_header'>
                        <h5>장바구니 담기</h5>
                        <i id='close' class="fas fa-times"></i>
                    </div>
                    <div class='pop_content'>
                        <i class="fas fa-cart-arrow-down"></i>
                        <p>장바구니에 상품이 정상적으로 담겼습니다.</p>
                    </div>
                    <div class='pop_footer'>
                        <input type='button' name='cart' class='go_cart' value='장바구니 이동'>
                        
                        <input type='button' name='cart' class='no_cart' value='쇼핑 계속하기'>
                    
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class='boxC'>
        <img src='img/recommend.png' alt='' width='600'>
    </div>
    <div class='boxD'>
        <div class='go_left'>
            <i class="fas fa-chevron-left"></i>
        </div>
        <div class='recommend_item'>
            <ul class='item'>
                <li class='view'><a href='#'><img src="img/bannerimg3.jpg"></a></li>
                <li><a href='#'><img src="img/bannerimg4.jpg"></a></li>
            </ul>
            <ul class='item'>
                <li class='view'><a href='#'><img src=img/bannerimg5.jpg></a></li>
                <li><a href='#'><img src=img/bannerimg6.jpg></a></li>
            </ul>
            <ul class='item'>
                <li class='view'><a href='#'><img src=img/bannerimg7.jpg></a></li>
                <li><a href='#'><img src=img/bannerimg8.jpg></a></li>
            </ul>
            <ul class='item'>
                <li class='view'><a href='#'><img src=img/bannerimg9.jpg></a></li>
                <li><a href='#'><img src=img/bannerimg10.jpg></a></li>
            </ul>
            <ul class='item'>
                <li class='view'><a href='#'><img src=img/bannerimg11.jpg></a></li>
                <li><a href='#'><img src=img/bannerimg12.jpg></a></li>
            </ul>
        </div>
        <div class='go_right'>
            <i class="fas fa-chevron-right"></i>
        </div>
    </div>
    <div class='boxE'>
        <div class='detail_nav nav'>
            <ul>
                <li><a class='tab_1 active'>상품상세정보</a></li>
                <li><a class='tab_2'>배송/교환/환불</a></li>
                <li><a class='tab_3'>상품구매후기</a></li>
                <li><a class='tab_4'>상품문의</a></li>
            </ul>
        </div>
    </div>
    <div class='boxF'>
        <div class='tip'>
            <h4>SHOPPING TIP</h4>
            <p>LEAFVELY라면 혜택받고 쇼핑하자!</p>
        </div>
        <div class='coupon'>
            <img src="img/tip.png" width='300'>
            <img src="img/tip1.png" width='200'>
            <img src="img/tip2.png" width='200'>
        </div>
    </div>
    <div class='boxG'>
        <div class='content_main' style='text-align: center'>
            <img src="img/detail1.png" alt=''>
            <img src="img/detail4-1.png" alt=''>
        </div>
        <div class='content_text'>
            <h1>위트 있는 무늬로 소장 욕구 폭발!</h1>
            <h2>쉽고 간편하게<br>멋내기 좋은 블라우스</h2>
            <p>지금부터 착용하기 좋고<br>
                <span>더욱 탄탄한 핏을 완성</span>해주며<br>
                꾸안꾸 스타일을 뽐낼 수 있는 시밀러룩이에요.</p>
        </div>
        <div class='content_second' style='text-align: center'>
            <img src="img/detail5_1.jpg" alt=''>
            <img src="img/design.png" alt=''>
            <img src='img/design1.png' alt=''>
        </div>
    </div>
    <div class='boxH'>
        <div class='delivery_nav nav'>
            <ul>
                <li><a class='tab_1'>상품상세정보</a></li>
                <li><a class='tab_2 active'>배송/교환/환불</a></li>
                <li><a class='tab_3'>상품구매후기</a></li>
                <li><a class='tab_4'>상품문의</a></li>
            </ul>
        </div>
    </div>
    <div class='boxI'>
        <div class='delivery_notice'>
            <h5><span>></span>배송안내</h5>
            <ul class='notice_list'>
                <li>
                    <p>-맆블리는 우체국 택배와 배송대행 계약이 체결되어 있습니다.</p>
                </li>
                <li>
                    <p>-50,000원 이상 결제 시 배송비 (2,000원)는 무료입니다.</p>
                </li>
                <li>
                    <p>-결제일을 기준으로 평균 2~4일 이내에 상품이 준비되어 발송되며, (일, 공휴일 제외) 주문 폭주로 재고가 충분치 않은 경우 시간이 조금 더 걸릴 수 있는 점 양해 부탁드립니다.</p>
                </li>
                <li>
                    <p>-수제화와 제작 액세서리의 경우, 7일~ 최대 약 2주의 제작 기간이 소요될 수 있습니다.</p>
                </li>
                <li>
                    <p>-예약 주문 상품의 경우 네이버 페이를 통해 구매 시 배송이 지연될 수 있습니다.</p>
                </li>
            </ul>
        </div>
        <div class='delivery_notice'>
            <h5><span>></span>확인해 주세요!</h5>
            <ul class='notice_list'>
                <li>
                    <p>-제품의 색상은 모니터 설정 및 환경에 따라 약간씩 차이가 있을 수 있습니다.</p>
                </li>
                <li>
                    <p>-워싱 된 제품이나 데미지, 전체적으로 프린트 무늬가 들어간 원단의 경우, 워싱 위피나 데미지 모양,무늬 등이 약간씩 다를 수 있습니다.</p>
                </li>
                <li>
                    <p>-데님 소재 및 컬러감이 강한 의류의 경유 밝은 소재(의류,가방,슈즈)와 함께 착용시 이염 가능성이 있을 수 있으니 주의하여 주세요.</p>
                </li>
            </ul>
        </div>
    </div>
    <div class='boxJ'>
        <div class='review_nav nav'>
            <ul>
                <li><a class='tab_1'>상품상세정보</a></li>
                <li><a class='tab_2'>배송/교환/환불</a></li>
                <li><a class='tab_3 active'>상품구매후기</a></li>
                <li><a class='tab_4'>상품문의</a></li>
            </ul>
        </div>
    </div>
    <div class='boxK'>
        <div class='notice_board'>
            <form>
                <input type='button' name='writing' value='후기게시판'>
                <textarea class='note'>본 게시판은 상품후기 게시판입니다. 문의글은 Q&A 게시판에서만 답변이 가능합니다. 리뷰 삭제 시에는 지급된 적립금이 회수될 수 있습니다.
리뷰 작성 시 이메일, 휴대혼 번호 등 개인정보 작성 및 이미지 노출은 금지되어 있으며 발견 즉시 사전 통보 없이 삭제 됩니다.
또한 이로 인해 발생하는 모든 피해에 대해 맆블리는 책임 지지 않습니다. 이점 유의하여 작성해 주시기 바랍니다.</textarea>
                <input type='file' id='file'>
                <label for='file'><i class="fas fa-camera"></i>사진추가</label>
                <div class='star_label'>
                    <input type='text' name='select_input' id='select_input'><label for='select_input' id='select_input_label'></label>
                    <div class='down'>
                        <i class="fas fa-caret-square-down"></i>
                    </div>

                    <ul class='star_label_ul'>
                        <li class='select_item' data_score='5'>

                            <img src="img/star.png">
                            <img src="img/star.png">
                            <img src="img/star.png">
                            <img src="img/star.png">
                            <img src="img/star.png">
                            <span class='text'>아주 좋아요</span>

                        </li>
                        <li class='select_item' data_score='4'>

                            <img src="img/star.png">
                            <img src="img/star.png">
                            <img src="img/star.png">
                            <img src="img/star.png">
                            <img src="img/star_empty.png">
                            <span class='text'>맘에 들어요</span>

                        </li>
                        <li class='select_item' data_score='3'>

                            <img src="img/star.png">
                            <img src="img/star.png">
                            <img src="img/star.png">
                            <img src="img/star_empty.png">
                            <img src="img/star_empty.png">
                            <span class='text'>보통이에요</span>

                        </li>
                        <li class='select_item' data_score='2'>

                            <img src="img/star.png">
                            <img src="img/star.png">
                            <img src="img/star_empty.png">
                            <img src="img/star_empty.png">
                            <img src="img/star_empty.png">
                            <span class='text'>그저 그래요</span>

                        </li>
                        <li class='select_item' data_score='1'>

                            <img src="img/star.png">
                            <img src="img/star_empty.png">
                            <img src="img/star_empty.png">
                            <img src="img/star_empty.png">
                            <img src="img/star_empty.png">
                            <span class='text'>별로에요</span>

                        </li>
                    </ul>
                </div>
                <input type='submit' value="리뷰 등록하기">
                <div class='score_A'>
                    <div class='average'>
                        <h3>리뷰 평점<input type='text' name='people' readonly onfocus="this.blur()" style='text-align: center'>명</h3>

                        <input type='text' name='ave' id='ave' value="" readonly onfocus="this.blur()">
                        <label for='ave' id='ave_input'></label>

                    </div>

                    <div class='chart'>
                        <ul class='data_score_star'>
                            <li class='data_score_filters' value='5'>
                                <!--                              1-->
                                <div class='score_number'>5 stars</div>
                                <!--                               2-->
                                <div class='domain_all'>
                                    <div class='dimain_point' id='percent_5'></div>
                                </div>
                                <!--                               3-->
                                <input type='text' id='personnel_5' name='personnel' value='30' readonly onfocus="this.blur()" style='text-align: center'>

                            </li>
                            <li class='data_score_filters' value='4'>
                                <div class='score_number'>4 stars</div>
                                <div class='domain_all'>
                                    <div class='dimain_point' id='percent_4'></div>
                                </div>
                                <input type='text' id='personnel_4' name='personnel' value='25' readonly onfocus="this.blur()" style='text-align: center'>

                            </li>
                            <li class='data_score_filters' value='3'>
                                <div class='score_number'>3 stars</div>
                                <div class='domain_all'>
                                    <div class='dimain_point' id='percent_3'></div>
                                </div>
                                <input type='text' id='personnel_3' name='personnel' value='10' readonly onfocus="this.blur()" style='text-align: center'>

                            </li>
                            <li class='data_score_filters' value='2'>
                                <div class='score_number'>2 stars</div>
                                <div class='domain_all'>
                                    <div class='dimain_point' id='percent_2'></div>
                                </div>
                                <input type='text' id='personnel_2' name='personnel' value='10' readonly onfocus="this.blur()" style='text-align: center'>

                            </li>
                            <li class='data_score_filters' value='1'>
                                <div class='score_number'>1 stars</div>
                                <div class='domain_all'>
                                    <div class='dimain_point' id='percent_1'></div>
                                </div>
                                <input type='text' id='personnel_1' name='personnel' value='0' readonly onfocus="this.blur()" style='text-align: center'>

                            </li>
                        </ul>
                    </div>

                </div>

            </form>
        </div>
    </div>
    <div class='boxL'>
        <div class='qna_nav nav'>
            <ul>
                <li><a class='tab_1'>상품상세정보</a></li>
                <li><a class='tab_2'>배송/교환/환불</a></li>
                <li><a class='tab_3'>상품구매후기</a></li>
                <li><a class='tab_4 active'>상품문의</a></li>
            </ul>
        </div>
    </div>
    <div class='boxM'>
        <div class='qna'>
            <h4>Q&A</h4>
            <p>궁굼한 점을 남겨주세요. 확인 후 빠르게 답변해 드리겠습니다.</p>
        </div>
    </div>
    <div class='box8'>
        <div class='box8_inner'>
            <div class='box8_1'>
                <div class='call'>
                    <h1><i class="fas fa-phone-volume"></i>
                        1588-0316</h1>
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
                        <p>반품주소 : 부산시 동구 자성공원로 13,<br>
                            자성대 그린파크 401호</p>
                        <p>반품요청 : 우체국 택배 (1588-1300)</p>
                        <li><a href='#'>배송조회</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class='quick'>
        <a href="#"><i class="fas fa-chevron-up"></i></a>
        <a id='down'><i class="fas fa-chevron-down"></i></a>
    </div>
</body>

</html>
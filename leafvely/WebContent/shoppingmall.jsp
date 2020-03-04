<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/shoppingmall.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    <link rel='stylesheet' href="css/shoppingmall.css">
</head>

<body>
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
				<c:if test="${sessionScope.id ne null}">${sessionScope.id} <span
						style="font-size: 12px; display: inline;">님 안녕하세요.</span>
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
    <div class='box4'>
        <div class='panel'>
            <div class='imges'>
                <ul class='img_slide'>
                    <li class='active'><a href='#'><img src="img/clothing-store-984396_1280.jpg" alt=''></a></li>
                    <li><a href='#'><img src="img/apparel-1850804_1280.jpg" alt='' ;></a></li>
                    <li><a href='#'><img src="img/fashion-605508_1280.jpg" alt=''></a></li>
                    <li><a href='#'><img src="img/cloth-1835894_1280.jpg" alt=''></a></li>
                    <li><a href='#'><img src='img/shopping-mall-906721_1280.jpg' alt=''></a></li>
                </ul>
            </div>
            <div class='control_btn'>
                <ul class='btn'>
                    <li><img src="img/btn.png" alt=''></li>
                    <li><img src="img/btn.png" alt=''></li>
                    <li><img src="img/btn.png" alt=''></li>
                    <li><img src="img/btn.png" alt=''></li>
                    <li><img src="img/btn.png" alt=''></li>
                </ul>
            </div>
        </div>
    </div>
    <div class='box5'>
        <div class='left'>
            <a href='#'>
                <i class="fas fa-chevron-left"></i>
            </a></div>
        <div class='content_panel'>
            <ul class='contents'>
                <li><a href='#'><img src="img/content(1).png" alt=''></a></li>
                <li><a href='#'><img src="img/content(2).png" alt=''></a></li>
                <li><a href='#'><img src="img/content(3).png" alt=''></a></li>
                <li><a href='#'><img src="img/content(4).png" alt=''></a></li>
                <li><a href='#'><img src="img/content(5).png" alt=''></a></li>
            </ul>
        </div>
        <div class='right'>
            <a href='#'>
                <i class="fas fa-chevron-right"></i>
            </a></div>

    </div>
    <div class='box6'>
        <h3>NEW ARRIVAL</h3>
        <div class='box6_1'>
            <ul class='product'>
                <li class='on'><img src="img/KakaoTalk_20200228_192219865_01.jpg"></li>
                <li><img src="img/KakaoTalk_20200228_192219865_02.jpg"></li>
            </ul>

            <ul class='product'>
                <li class='on'><img src="img/KakaoTalk_20200228_192219865_05.jpg"></li>
                <li><img src="img/KakaoTalk_20200228_192219865_06.jpg"></li>
            </ul>

            <ul class='product'>
                <li class='on'><img src="img/KakaoTalk_20200228_192219865_07.jpg"></li>
                <li><img src="img/KakaoTalk_20200228_192219865_08.jpg"></li>
            </ul>

            <ul class='product'>
                <li class='on'><img src="img/KakaoTalk_20200228_192219865_09.jpg"></li>
                <li><img src="img/KakaoTalk_20200228_192219865_10.jpg"></li>
            </ul>
        </div>
        <div class='box6_2'>
            <ul class='product'>
                <li class='on'><img src="img/KakaoTalk_20200228_192219865_11.jpg"></li>
                <li><img src="img/KakaoTalk_20200228_192219865_12.jpg"></li>
            </ul>

            <ul class='product'>
                <li class='on'><img src="img/KakaoTalk_20200228_192219865_13.jpg"></li>
                <li><img src="img/KakaoTalk_20200228_192219865_14.jpg"></li>
            </ul>

            <ul class='product'>
                <li class='on'><img src="img/KakaoTalk_20200228_192219865_15.jpg"></li>
                <li><img src="img/KakaoTalk_20200228_192219865_16.jpg"></li>
            </ul>

            <ul class='product'>
                <li class='on'><img src="img/KakaoTalk_20200228_200117496_01.jpg"></li>
                <li><img src="img/KakaoTalk_20200228_200117496_02.jpg"></li>
            </ul>
        </div>
    </div>
    <div class='box7'>
        <img src="img/banner.png" alt=''>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/shoppingmall.js"></script>
<script src="js/login.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel='stylesheet' href="css/shoppingmall.css">
<link rel='stylesheet' href="css/login.css">
<c:if test="${not empty param.fail}">
	<script type="text/javascript">
		alert("아이디나 비밀번호를 찾을수 없습니다.\n다시 시도 해주세요.");
		history.back();
	</script>
</c:if>
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
			<a href='shoppingmall.jsp'><img src="img/logo.png" alt=''
				width='300'></a>
		</div>
		<div class='box1_2'>
			<div class="loginStatus">
			</div>
			<ul class='join'>
				<li><a href="login.jsp" id='scroll'><i class="fas fa-link"></i><span>LOGIN
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
					<li><a href='#'><span>LEAFVELY VELY<i
								class="fab fa-angellist"></i></span></a></li>
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

	<div class='loginlogo'>
		<img src="img/loginlogo.png" alt=''>
	</div>
	<form action="login" method="post">
	<div class='logininput'>
		<h2>ID</h2>
		<input type="text" name="id" id="idresult" required><br>
		<h2>PW</h2>
		<input type='password' name="pw" id="pwresult" required><br> <input type='checkbox'
			id='ing'> <label for='ing'>로그인상태유지</label>
	</div>
	<div class='login_btn'>
		<a href="join.jsp">
		<input type='button' id='join' name='join'>
		<label for='join'>회원가입</label>
			</a>
		<input type="submit" id='login' name='login' >
		<label for='login'>로그인</label>
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
		<a href="#"><i class="fas fa-chevron-up"></i></a> 
		<a id='down'><i
			class="fas fa-chevron-down"></i></a>
	</div>
</body>

</html>
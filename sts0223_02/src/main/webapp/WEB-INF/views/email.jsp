
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Pages - Login</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	  	function loginBtn(){
	  		alert("test");
	  		$("#id").val();
	  		if($("#id").val()==""){
	  			alert("아이디를 입력하셔야 합니다.");
	  			$("#id").focus();
	  			return;
	  		}
	  		loginFrm.submit();
	  	}//loginBtn
	  	
	  	//이메일 체크하기
	  	function emailCheck(){
	  		alert($("#userEmail").val());
	  		alert($("#userName").val());
	  		
	  		
	  		$.ajax({
	  			url:"/sendEmail",
	  			type:"post",
	  			data:{"userEmail":$("#userEmail").val(),"userName" :$("#userName").val()},
	  			success:function(data){
	  				alert("입력한 이메일로 인증번호가 \n 발송되었습니다.");
	  				//$("#userEmail").val("");
	  				//$("#userName").val("");
	  				
	  				alert("pwCode 세션읽기 :" +"${sessionPwCode}");
	  			},
	  			error:function(){
	  				alert("실패");
	  			}
	  			
	  		});//ajax
	  		
	  	}//emailCheck
	  	
	  	
	  	function pwBtn(){
	  		alert("test");
	  		alert($("#tempPwCheck").val());
	  		//alert($("#userName").val());
	  		
	  		
	  
	  	
	  		
	  	}//pwCheck
	  
	  
	  </script>
	<link
		href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean"
		rel="stylesheet">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/login.css">
</head>

<body>
	<header>
		<ul>
			<li>회원가입</li>
			<span>|</span>
			<li><a href="login">로그인</a></li>
			<span>|</span>
			<li>고객행복센터</li>
			<span>|</span>
			<li>배송지역검색</li>
			<span>|</span>
			<li>기프트카드 등록</li>
		</ul>
	</header>

	<nav>
		<div class="logo"></div>

		<div id="search">
			<div class="search"></div>
			<br> <span>메뉴찾기</span>
		</div>

		<div id="cart">
			<div class="cart"></div>
			<br> <span>장바구니</span>
		</div>

		<div class="nav-menu">
			<ul>
				<li>COOKIT소개</li>
				<li>COOKIT 메뉴</li>
				<li>리뷰</li>
				<li>이벤트</li>
				<li>MY쿡킷</li>
			</ul>
		</div>
	</nav>

	<section>
		<h1>이메일 인증</h1>

		<article id="category">
			<ul>
				<li class="selected">회원인증</li>
				<li>비회원인증</li>
			</ul>
		</article>

		<form action="/login" name="loginFrm" method="post">
			<div class="id">
				<input type="text" name="userEmail" id="userEmail" size="30"
					placeholder="이메일을 입력하세요">
			</div>
			<div class="pw">
				<input type="text" name="userName" id="userName" size="45"
					placeholder="이름을 입력하세요">
			</div>


			<div id="save">
				<div class="save"></div>
				<span>아이디 저장</span>
			</div>

			<div id="find">
				<span>아이디 찾기</span> <span class="separator">|</span> <span>비밀번호
					찾기</span>
			</div>

			<button type="button" onclick="emailCheck()">이메일 발송</button>
			
			
		<!--  추가   -->
			<article id="category">
				<ul>
					<li class="selected">이메일 비밀번호 확인</li>
				</ul>
			</article>
			<div class="pw">
				<input type="text" name="tempPwCheck" id="tempPwCheck" size="45" placeholder="이메일 발송 번호를 입력하세요">
			</div>
			<button type="button" onclick="pwBtn()">이메일 비밀번호확인</button>
		<!--   추가끝    -->
		
		
		</form>

		<ul class="login-icons">
			<li class="phone"></li>
			<li class="kakao"></li>
			<li class="naver"></li>
			<li class="facebook"></li>
		</ul>

		<div class="sign-up-info">
			<h3>CJ ONE 통합회원이 아니신가요?</h3>
			<p>CJ ONE 통합회원으로 가입하시면 CJ제일제당의 다양한 서비스(COOKIT, CJ THE MARKET,
				CJ제일제당 홈페이지)를 이용하실 수 있습니다.</p>
			<div class="sign-up">
				CJ ONE 통합회원 신규가입하기
				<div class="arrow">&emsp;</div>
			</div>
		</div>
	</section>

	<footer>
		<div class="wrapper">
			<div class="footer-left">
				<div class="footer-logo"></div>
				<div class="copyright">© COOKIT ALL RIGHTS RESERVED</div>
			</div>

			<div class="footer-center">
				<ul class="footer-nav">
					<li class="first-list">이용약관</li>
					<li class="green">개인정보처리 방침</li>
					<li>법적고지</li>
					<li>사업자정보 확인</li>
				</ul>

				<ul class="footer-info">
					<li class="first-list">씨제이제일제당(주)</li>
					<li>대표이사 : 손경식,강신호,신현재</li>
					<li>사업자등록번호 : 104-86-09535</li>
					<li class="first-list">주소 : 서울 중구 동호로 330 CJ제일제당 센터 (우) 04560</li>
					<li>통신판매업신고 중구 제 07767호</li>
					<li class="first-list">개인정보보호책임자 : 조영민</li>
					<li>이메일 : cjon@cj.net</li>
					<li>호스팅제공자 : CJ올리브네트웍스㈜</li>
				</ul>

				<div id="check">
					고객님은 안전거래를 위해 현금등으로 결제시 LG U+ 전자 결제의 매매보호(에스크로) 서비스를 이용하실 수 있습니다. <span
						class="check">가입 사실 확인</span>
				</div>
			</div>

			<div class="footer-right">
				<div id="shortcut">
					<span>CJ그룹계열사 바로가기</span>
					<div class="shortcut"></div>
				</div>

				<div class="call">고객행복센터 1668-1920</div>
				<div class="inquery">1:1 문의</div>
			</div>

		</div>
	</footer>
</body>
</html>
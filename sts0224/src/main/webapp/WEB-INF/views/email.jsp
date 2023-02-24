<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Pages - Login</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link
		href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean"
		rel="stylesheet">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/login.css">
		<script>
			function emailBtn(){
				alert("입력한 이메일로 발송됩니다.");
				alert($("#userEmail").val());
				alert($("#userName").val());
				$.ajax({
					url:"/sendEmail",
					type:"post",
					data:{"userEmail":$("#userEmail").val(),"userName":$("#userName").val()},
					success:function(data){
						alert("입력한 이메일로 인증번호가 \n 발송되었습니다.");
						//alert("이메일 인증 비밀번호 : "+data);
						$("#userEmail").val("");
						$("#userName").val("");
						$("#pwCheck").focus();
						
					},
					error:function(){
						alert("실패");
					}
				});//ajax
			}//emailBtn
			
			function checkBtn(){
				alert("이메일 비밀번호를 확인합니다.");
				alert($("#pwCheck").val());
				$.ajax({
					url:"/checkEmail",
					type:"post",
					data:{"pwCheck":$("#pwCheck").val() },
					success:function(data){
						console.log("data : "+data);
						 if(data=="Chk_T"){
							alert(" 비밀번호가 일치합니다.다음 페이지로 이동합니다.");
							location.href="/member/join02_info_input";
						 }else{
							alert("입력한 비밀번호가 일치하지 않습니다.다시 입력해주세요.");
							 $("#pwCheck").val("");
							 $("#pwCheck").focus();
							 
						 }
					},
					error:function(){
						alert("실패");
					}
				});
				
				
				
				
			}//checkBtn
			
			
		
		</script>
	</head>

<body>
	<header>
		<ul>
			<li>회원가입</li>
			<span>|</span>
			<li>로그인</li>
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
				<li>COOKIT 소개</li>
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
				<li class="selected">회원이메일 인증</li>
				<li>비회원 이메일 인증</li>
			</ul>
		</article>

		<form action="" name="login" method="post">
			<div class="id">
				<input type="text" name="userEmail" id="userEmail" size="30"
					placeholder="이메일을 입력하세요">
			</div>
			<div class="pw">
				<input type="text" name="userName" id="userName" size="45"
					placeholder="이름을 입력하세요.">
			</div>

			<div id="save">
				<div class="save"></div>
				<span>아이디 저장</span>
			</div>

			<div id="find">
				<span>아이디 찾기</span> <span class="separator">|</span> <span>비밀번호
					찾기</span>
			</div>

			<button type="button" onclick="emailBtn()">이메일 비밀번호 발송</button>



			<article id="category">
				<ul>
					<li class="selected">이메일 비밀번호 확인</li>
				</ul>
			</article>
			<div class="pw">
				<input type="text" name="pwCheck" id="pwCheck" size="45"
					placeholder="이메일 비밀번호를 확인">
			</div>
			<button type="button" onclick="checkBtn()">이메일 비밀번호 확인</button>




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
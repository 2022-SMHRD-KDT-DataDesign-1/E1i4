<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link rel="stylesheet" href="Login_2.css"/>
<title>사용자 로그인</title>
</head>
<body >
<a href="Login_1.jsp" class="logo">REVVIA</a>
	<div class="container">
		<div class="login">
			<p class="logo_login">반갑습니다.<br> 계정 선택해주세요.      </p>
			<form class="login-form" action="Login_3.jsp" method="POST">
			
				<div class ="btn_wrap">
					<div class = btn_wrap_line style="display: grid" >
					<button calss ="btn-long-tv" id ="rvLogin">REVVIA ID로 시작하기</button>
					<button calss ="btn-long-tv" id ="nvLogin">네이버 ID로 시작하기</button>
					<button calss ="btn-long-tv" id ="kaLogin">카카오 ID로 시작하기</button>
					<button calss ="btn-long-tv" id ="faLogin">페이스북 ID로 시작하기</button>
					<button calss ="btn-long-tv" id ="apLogin">apple ID로 시작하기</button>
					</div>
					
				</div>

			</form>
		</div>
	</div>
</body>
</html>

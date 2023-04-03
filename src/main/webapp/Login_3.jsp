<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link rel="stylesheet" href="login3.css" />

<title>사용자 로그인</title>
</head>
<body>
	
	<a href="Login_1.jsp" class="logo">REVVIA</a>
	<div class="container">
		<div class="login">
			<p class="logo_login">REVVIA 로그인</p>
			<form class="login-form" action="LoginService.do" method="POST">
				<input id="username" type="text" name="member_id"
					placeholder="아이디 입력 (6~20자)" autofocus="autofocus"
					autocomplete="off" /> 
					
								
					
					<input id="password" type="password"
					name="member_pw" placeholder="비밀번호" /> 
					
															
					<input type="checkbox"
					id="remember-me" name="remember-me" value="true" />
				<p id="rememberme">자동로그인</p>

				<input class="btn_login" type="submit" value="로그인하기" />
				<div class="info_join">
					아직 계정이 없으신가요? <a href="join.jsp" style="color: #6e6e6e">
						회원가입하기</a>
				</div>

			</form>
		</div>
	</div>
	
	
	<script src="lib/background/background.js"></script>
	
	
</body>
</html>

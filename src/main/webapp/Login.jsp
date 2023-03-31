<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link rel="stylesheet" href="login.css" />
<title>사용자 로그인</title>
</head>
<body>
	<div class="container">
		<div class="login">
			<p class="logo">RIVVIA</p>
			<form class="login-form" action="LoginService.do" method="POST">
				<input id="username" type="text" name="member_id"
					placeholder="아이디 입력 (6~20자)" autofocus="autofocus"
					autocomplete="off" /> 
					<input id="password" type="password"
					name="member_pw" placeholder="비밀번호" /> 
					<input class="btn_login"
					type="submit" value="로그인" /> 
					<input type="checkbox"
					id="remember-me" name="remember-me" value="true">
					</input>

				<p id="rememberme">로그인기억하기</p>

				<a href="join.jsp" style="text-decoration-line: none"> <input
					type="button" id="join" value="회원가입">
				</a>

			</form>
		</div>
	</div>
</body>
</html>

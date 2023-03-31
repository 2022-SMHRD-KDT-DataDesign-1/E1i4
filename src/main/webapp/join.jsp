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
<p class="logo">RIVVIA</p>
	<div class="container">
		<div class="login">
			<p class="logo_login">회원가입</p>
			<form class="login-form" action="JoinService.do" method="POST">
				
					<input id="username" type="text" name="member_id"
					placeholder="아이디 입력 (6~20자)" autofocus="autofocus"
					autocomplete="off" />				
				
					<input id="nickname" type="text"
					name="nickname" placeholder="닉네임" autofocus="autofocus"
					autocomplete="off" /> 
					<input id="password" type="password"
					name="member_pw" placeholder="비밀번호" /> 
					<input id="password"
					type="password" name="member_pwck" placeholder="비밀번호확인" />

				<div class="gender">
					<input id="gender_man" type="radio" name="gender" value="남성">남성
					<input id="gender_woman" type="radio" name="gender" value="여성">여성
				</div>

				<a><input class="btn_login" type="submit" value="회원가입완료" /></a>

			</form>
		</div>
	</div>
</body>
</html>

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
	<a href="Login_1.jsp" class="logo">RIVVIA</a>
	<div class="container">
		<div class="login">
			<p class="logo_login">회원가입</p>
			<form class="login-form" action="JoinService.do" method="POST">

				<input id="username" type="text" name="member_id"
					placeholder="아이디 입력 (6~20자)" autofocus="autofocus"
					autocomplete="off" />
				<p class="input_info" id="userIdMsg">영문 소문자 또는 영문 소문자, 숫자 조합
					6~20 자리</p>


				<input id="password" type="password" name="member_pw"
					placeholder="비밀번호" />
				<p class="input-info red" id="userIdMsg">영문, 숫자, 특수문자
					(~!@#$%^&*) 조합 8~15 자리 로 입력해주세요.</p>
				<input id="password" type="password" name="member_pwck"
					placeholder="비밀번호확인" />
				<p class="input-info red" id="userIdMsg"></p>	 
				<input id="nickname" type="text"
					name="nickname" placeholder="닉네임" autofocus="autofocus"
					autocomplete="off" /> 
				<a><input class="btn_login"	type="submit" value="가입하기" /></a>

			</form>
		</div>
	</div>
</body>
</html>

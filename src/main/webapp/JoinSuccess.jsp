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
<style>
#Update>ul.actions {
	margin-top: 10%;
}
</style>
</head>
<form action=""></form>
	<body style="text-align: center;" >
	<img src="./img/join.png" class = "joinck" >
		<% String member_id = request.getParameter("member_id");%>
		<div class="container">
			<div class="login">
				<p class="logo">RIVVIA</p>
				<h1>환영합니다!</h1>
				<h3><%=member_id %> 회원가입을 축하합니다.</h3>
				<!-- Q2. 회원가입 한 회원정보 중 이메일을 출력하시오.(request영역 활용) -->
				<button onclick='location.href="Login.jsp"'>시작하기</button>		
				
					
			</div>
		</div>
	</body>
</form>

</html>









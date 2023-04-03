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
<style>
#Update>ul.actions {
	margin-top: 10%;
}
</style>
</head>
<form action="Login_3.jsp"></form>

	<body style="text-align: center; background: black" >
	<div id = "animation" class="animation" style="background:transparent;">
	<img src="./img/join.png" class = "joinck" style= "content-visibility:visible;" >
		<% String member_id = request.getParameter("member_id");%>
		<div class="container_1">
			<div class="login_1">				
				<h1>✨<%=member_id %>님 환영합니다✨</h1>
				<button onclick='location.href="Login_3.jsp"' class = "start">RIVVIA 이용하기</button>		
			</div>
		</div>
		
		
		
		
		
	</body>
</form>

</html>









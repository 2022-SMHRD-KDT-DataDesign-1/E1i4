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
				<h1><%=member_id %> 회원가입 완료 <br>RIVVIA 회원이 되신 것을 환영해요!</h1>
				<button onclick='location.href="Login_3.jsp"' class = "start">RIVVIA 이용하기</button>		
			</div>
		</div>
		
		
		
		
		   <div class="container_2">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        <h6>서비스 소개 | 개인정보 처리 방침 | 이용약관 | 고객센터 | 채용정보</h6><br>
                        <span style="word-break:break-all">E1I4 주식회사 | 대표이사 독고운</span><br>
                        <span>고객센터 1588-8282 (평일 09:00~18:00 / 점심시간 12:50~14:10 / 주말 및 공휴일 휴무)</span><br>
                        <span>사업자등록번호 220-88-38020 | 호스팅서비스제공자 : 스마트인재개발원</span><br>
                        <span>광주광역시 동구 예술길 31-15 4층 D반 | 전자우편주소 : godoli@smhrd.com</span><br>
                        &copy; <a class="border-bottom" href="#">REVVIA</a>, All Right Reserved.

                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">DGO</a><br><br>
                        Distributed By <a class="border-bottom" href="https://themewagon.com">E1I4</a>
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <div class="footer-menu">
                            <a href="">Home</a>
                            <a href="">Cookies</a>
                            <a href="">Help</a>
                            <a href="">FQAs</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</body>
</form>

</html>









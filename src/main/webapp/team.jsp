<%@page import="com.smhrd.model.MemberVO"%>
<%@page import="com.smhrd.model.indexVO"%>
<%@page import="com.smhrd.model.indexDAO"%>
<%@page import="com.smhrd.model.teamVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.teamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>eLEARNING - eLearning HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

   <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrapYH.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style1.css" rel="stylesheet">
    
    <!-- 폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- 상단바 -->
    <!-- <nav class="navbar navbar-expand-lg bg-black navbar-light shadow sticky-top p-0">
        <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h1 class="m-0 text-primary" ><i class="fa fa-book me-3"></i>REVVIA</h1>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.html" class="nav-item nav-link">Home</a>
                <a href="about.html" class="nav-item nav-link">About</a>
                <a href="courses.html" class="nav-item nav-link">Courses</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="team.html" class="dropdown-item active">Our Team</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contact</a>
            </div>
            <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Join Now<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav> -->
    	<!-- Navbar Start -->
	<%@ include file="header.jsp" %>
    <!-- 상단바 끝 -->


    <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Wish List</h1>
                    <nav aria-label="breadcrumb">
                        
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


	<%
	/* 	teamDAO dao = new teamDAO();
		List<teamVO> list = dao.wishList();
		System.out.print(list.size());
		
		String movie_id = (String)session.getAttribute("movie_id"); */
		
		
	login_vo = (MemberVO)session.getAttribute("login_vo");
	member_id = login_vo.getMember_id();
	teamDAO dao = new teamDAO();
	List<teamVO> list = dao.wishList(member_id);
	System.out.print(list.size());
	System.out.print("member_id " + member_id);

	String movie_id = (String) session.getAttribute("movie_id");
	%>   
					    				
    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                
                <h1 class="mb-5">내가 찜한 영화</h1>
            </div>
            <div class="row g-4">
            	<%double num = 0.1;%>
            	<%for(teamVO m : list){ %>
				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="<%=num%>s">
                    <div class="team-item bg-black">
                        <div class="overflow-hidden">  <!-- 찜한영화 DB에서 불러오기 -->
                            <a href = "testimonial.jsp?movie_id=<%=m.getMovie_id()%>"><img class="img-fluid" src=<%=m.getPoster_link()%> style="height: auto;"></a>
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                        </div>
                        <div style="background-color: #1e1e1e">.</div>
                    </div>
                </div>
                <% num += 0.2; %>
				<%} %>
                
                
                
                
                <!-- <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="1.5s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="https://movie-phinf.pstatic.net/20221215_185/1671091761840XXpCR_JPEG/movie_image.jpg " alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                           
                        </div>
                        
                    </div>
                </div> -->
                <!-- 영화 가져오기 끝 -->
            </div>
        </div>
    </div>
    <!-- Team End -->
        

    <!-- Footer Start -->
    <div class="container-fluid bg-black text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
        <!-- <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Quick Link</h4>
                    <a class="btn btn-link" href="">About Us</a>
                    <a class="btn btn-link" href="">Contact Us</a>
                    <a class="btn btn-link" href="">Privacy Policy</a>
                    <a class="btn btn-link" href="">Terms & Condition</a>
                    <a class="btn btn-link" href="">FAQs & Help</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Contact</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Smhrd, Gwang-ju, KR</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>010 1234 5678</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>독고운@naver.com.com</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Gallery</h4>
                    <div class="row g-2 pt-2">
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-1.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-2.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-3.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-2.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-3.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/course-1.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">영화추가</h4>
                    <p>영화는 순차적으로 추가중입니다.</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="movie name">
                        <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">send</button>
                    </div>
                </div>
            </div>
        </div> -->
        <div class="container">
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
        <div>/</div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/mainyh.js"></script>
</body>

</html>
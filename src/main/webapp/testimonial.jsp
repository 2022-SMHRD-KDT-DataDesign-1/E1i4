<%@page import="com.smhrd.model.testimonialDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.testimonialVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.MovieVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
    <link href="css/bootstrapyu.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/styleyu.css" rel="stylesheet">
    
<body>
 <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-black navbar-light shadow sticky-top p-0">
        <a href="index-goun.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary">REVVIA</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <!-- <a href="index.html" class="nav-item nav-link">Home</a>
                <a href="about.html" class="nav-item nav-link">About</a>
                <a href="courses.html" class="nav-item nav-link">Courses</a> -->
                <div class="search-area">
                    <input type="text" class="serach-input" name="" placeholder="search">
                    <a class="search-btn" href="#">
                        <i class="fas fa-search"></i>
                    </a>
                </div>
                
                <div class="nav-item dropdown" style="margin-left: 50px">
                    <a href="" class="btn btn-primary py-4 d-none d-lg-block nav-link-dropdown-toggle" data-bs-toggle="dropdown" style="margin-right: 30px">000<!--<i class="fa fa-arrow-right ms-3"></i>--></a>
                    <div class="dropdown-menu fade-down m-0" style="text-align: center; min-width: 80px; right: 11px; padding: 3px; position:absolute;">
                        <a href="team.jsp" class="dropdown-item">보관함</a>
                        <a href="" class="dropdown-item">설정</a>
                        <a href="" class="dropdown-item">로그아웃</a>
                    </div>
                </div>
                <!-- <a href="contact.html" class="nav-item nav-link">Contact</a> -->
            </div>
            <!-- <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Join Now<i class="fa fa-arrow-right ms-3"></i></a> -->
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Header Start -->

    <div>
         <%
    		
        	/* testimonialVO movie_one = (testimonialVO)session.getAttribute("movie_one"); */
         	/* search */
        	String movie_id = request.getParameter("movie_id");
        	testimonialDAO dao = new testimonialDAO();
        	testimonialVO movie_one = dao.deatilMovie(movie_id);
        	
         	if(movie_one != null){
         		 System.out.print(movie_one.getMovie_title());
         	}
         	

        
         %>
        <!-- 예고편 -->
        <div class="trailer" muted="false" data-vbg-autoplay="true" data-vbg="https://youtu.be/jBdRhhSt3Bc<%--  <%= movie_one.getTrailer()%>  --%>"></div>
        <!-- 영화정보  -->
        <div class="movie_import">
         <p id="movie_date">2019 <%= movie_one.getMovie_date()%></p>
         <p id="movie_age">관람 등급 : 12<%--  <%= movie_one.getMovie_age() %> --%></p>
         <p id="movie_genre">드라마</p>            
         <P id="movie_title">기생충<%-- <%= movie_one.getMovie_title() %> --%></P>
             <!-- 총 평점 -->
             <p class="all-score">⭐ 9.9<%-- <%= movie_one.getMovie_rate() %> --%></p>
        <!-- 찜 -->   
        <form action="">
        <ul class="tg-list">
            <li class="tg-list-item">
                <input class="tgl tgl-flip" id="cb5" type="checkbox" /><label class="tgl-btn" data-tg-off="찜❤" data-tg-on="저장💕" for="cb5"></label>
            </li>
            <li>
                <span class="tgNum">0</span>
                <span class="tgNum">0</span>
            </li>
        </ul>

        </form>

        <!-- 찜 누르면 테이블에 1 저장 누르면 0으로 -->

        <P id="movie_actor">주연배우 : 000 <%-- <%= movie_one.getActors() %> --%></P>         
         <P id="movie_story">"전원백수로 살 길 막막하지만 사이는 좋은 기택(송강호) 가족.
장남 기우(최우식)에게 명문대생 친구가 연결시켜 준 고액 과외 자리는
모처럼 싹튼 고정수입의 희망이다.
온 가족의 도움과 기대 속에 박사장(이선균) 집으로 향하는 기우.
글로벌 IT기업 CEO인 박사장의 저택에 도착하자
젊고 아름다운 사모님 연교(조여정)가 기우를 맞이한다.
그러나 이렇게 시작된 두 가족의 만남 뒤로, 걷잡을 수 없는 사건이 기다리고 있었으니…" <%-- <%= movie_one.getSynopsis() %> --%></P>
          <br>   
          
          </div>
             <!-- 댓글창 -->
           <form class="chat_form" action="">
			<section id="app">
			    <div class="containerMember">
			      <div class="rows">
			        <div class="col-6">
			          <div class="comment">
			       		 <p id="items" v-for="items in item" v-text="items"></p>	
			          </div><!--End Comment-->
			          </div><!--End col -->
			          </div><!-- End row -->
			     
			      <div class="rows">
			        <div class="col-6">
			      	  <textarea type="text" class="input" placeholder="Write a comment" v-model="newItem" @keyup.enter="addItem()"></textarea>
			          <button v-on:click="addItem()" class='primaryContained float-right' type="submit">Add Comment</button>
			        </div><!-- End col -->
			      </div><!--End Row -->
			    </div><!--End Container -->
			  </section><!-- end App -->
			</form>
         <!-- 댓글창 끝 -->
          
    </div>
 
    <!-- Header End -->


    <!-- Testimonial Start -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <!-- 리뷰영상 -->
        <div class="container1">
            <div class="text-center"> 
                <h6 class="section-title bg-white text-center text-primary px-3">Instructors</h6>
                <h1 class="mb-5">리뷰</h1>
            </div>
            <div class="owl-carousel testimonial-carousel position-relative">
                <div class="testimonial-item text-center">
                    <!-- 유튜버 로고 -->
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="./movie_jpg/따따시.jpg" style="width: 80px; height: 80px;">
                    <!-- 유튜버 이름 -->
                    <h5 class="mb-0">따따시</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"> <video id="review1" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./movie_mp4/Coze76IIflo_기생충.mp4"" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title1">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-2.jpg" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"> <video id="review2" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/review.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title2">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-3.jpg" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"> <video id="review3" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/review.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title3">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-4.jpg" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"> <video id="review4" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/review.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title4">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- 결말포함영상 -->
        <div class="container2">
            <div class="text-center"> 
                <h6 class="section-title bg-white text-center text-primary px-3">Instructors</h6>
                <h1 class="mb-5">결말 포함</h1>
            </div>
            <div class="owl-carousel testimonial-carousel position-relative">
                <div class="testimonial-item text-center">
                    <!-- 유튜버 로고 -->
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-1.jpg" style="width: 80px; height: 80px;">
                    <!-- 유튜버 이름 -->
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"><video id="include_end1" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./Youtube/movie_mp4/Coze76IIflo_기생충.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title5">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-2.jpg" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"><video id="include_end2" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/review.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title6">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-3.jpg" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"><video id="include_end3" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/review.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title7">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-4.jpg" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"><video id="include_end4" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/review.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title8">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- 해석영상 -->
        <div class="container3">
            <div class="text-center"> 
                <h6 class="section-title bg-white text-center text-primary px-3">Instructors</h6>
                <h1 class="mb-5">해석</h1>
            </div>
            <div class="owl-carousel testimonial-carousel position-relative">
                <div class="testimonial-item text-center">
                    <!-- 유튜버 로고 -->
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-1.jpg" style="width: 80px; height: 80px;">
                    <!-- 유튜버 이름 -->
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"><video id="interpretation1" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/DFvFGLomqeg_기생충.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title9">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-2.jpg" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"><video id="interpretation2" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/review.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title10">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-3.jpg" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"><video id="interpretation3" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/review.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title11">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-4.jpg" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">Client Name</h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"><video id="interpretation4" poster="https://img.youtube.com/vi/Coze76IIflo/0.jpg" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="./file/review.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p>
                    <a href=""><p id="title12">와..미친.. 이걸 이렇게 번역했었다고..!? 작품의 역사를 뒤바꿨던 역대급 G렸던 발번역 & 초월번역들ㄷㄷ..</p></a>
                    </div>
                </div>
            </div>
        </div>
        

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
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
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>SmartInjaeGaebalwon</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+821034567890</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>godoli@smhrd.com</p>
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
                            <img class="img-fluid p-1" src="img/burger_ear.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid p-1" src="img/burger_ear.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid p-1" src="img/burger_ear.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/burger_ear.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/burger_ear.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="img/burger_ear.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Newsletter</h4>
                    <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                        <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
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
    </div>
    <!-- Footer End -->

      <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
       
    <!-- Testimonial End -->
 
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    
    <!-- Vue JS -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.min.js'></script>

    <!-- Template Javascript -->
    <script src="js/mainyu.js"></script>
    <!-- 예고편 -->
    <script src="https://unpkg.com/youtube-background@1.0.14/jquery.youtube-background.min.js"></script>
</body>
</html>
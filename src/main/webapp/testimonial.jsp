<%@page import="com.smhrd.model.testimonialDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.testimonialVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
 
 <%@ include file="header.jsp" %>
 
 
 <!--    <nav class="navbar navbar-expand-lg bg-black navbar-light shadow sticky-top p-0">
        <a href="index-goun.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary">REVVIA</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.html" class="nav-item nav-link">Home</a>
                <a href="about.html" class="nav-item nav-link">About</a>
                <a href="courses.html" class="nav-item nav-link">Courses</a>
                <div class="search-area">
                    <input type="text" class="serach-input" name="" placeholder="search">
                    <a class="search-btn" href="#">
                        <i class="fas fa-search"></i>
                    </a>
                </div>
                
                <div class="nav-item dropdown" style="margin-left: 50px">
                    <a href="" class="btn btn-primary py-4 d-none d-lg-block nav-link-dropdown-toggle" data-bs-toggle="dropdown" style="margin-right: 30px">000<i class="fa fa-arrow-right ms-3"></i></a>
                    <div class="dropdown-menu fade-down m-0" style="text-align: center; min-width: 80px; right: 11px; padding: 3px; position:absolute;">
                        <a href="team.jsp" class="dropdown-item">보관함</a>
                        <a href="" class="dropdown-item">설정</a>
                        <a href="" class="dropdown-item">로그아웃</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contact</a>
            </div>
            <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Join Now<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav> -->
    <!-- Navbar End -->


    <!-- Header Start -->

    <div>
         <%
          
           /* testimonialVO movie_one = (testimonialVO)session.getAttribute("movie_one"); */
            /* search */
           String movie_id = request.getParameter("movie_id");
           session.setAttribute("movie_id", movie_id);
           
           testimonialDAO dao = new testimonialDAO();
           testimonialVO movie_one = dao.deatilMovie(movie_id);
           
           List<testimonialVO> youtube_list = dao.detailYoutube(movie_id);
           
            if(movie_one != null){
                System.out.print(movie_one.getMovie_title());
                System.out.print(youtube_list.get(0).getYoutube_title());
               
            }
         %>
        <!-- 예고편 -->
        <div class="trailer" muted="false" data-vbg-autoplay="true" data-vbg="<%= movie_one.getTrailer()%>"></div>
        <!-- 영화정보  -->
        <div class="movie_import">
         <p id="movie_date"><%= movie_one.getMovie_date()%></p>
         <p id="movie_age">관람 등급 : <%= movie_one.getMovie_age() %></p>
         <p id="movie_genre"><%= movie_one.getMovie_genre() %></p>            
         <P id="movie_title"><%= movie_one.getMovie_title() %></P>

		<form method="post" action="WishService" target="myHiddenFrame">
		<div class = score>
             <!-- 총 평점 -->
             <p class="all-score">⭐ <%= movie_one.getMovie_rate() %></p>

		<!-- 찜- 버튼 바꾸기  -->
		<input type="submit" name = like_check id="btnLike" value="찜🤞"><span id="btnNum">0</span>
		</div>
		</form>
        <!-- 찜 누르면 테이블에 1 저장 누르면 0으로 -->

			<% if(movie_one.getActors() != null){ %>
				
        <P id="movie_actor">주연배우 : <%= movie_one.getActors() %></P>
        <%} else { %>
       <!--  <P id="movie_actor">주연배우 : - </P> -->
        <%} %>         
         <P id="movie_story"> <%= movie_one.getSynopsis() %> </P>
          <br>   
          
          </div>
             <!-- 댓글창 -->
           <form class="" action="chatService.do">
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
                   <button v-on:click="addItem()" class='primaryContained float-right' type="button">Add Comment</button>
                  
                 </div><!-- End col -->
               </div><!--End Row -->
             </div><!--End Container -->
           </section><!-- end App -->
         </form>
         <!-- 댓글창 끝 -->
          
    </div>
 
    <!-- Header End -->


    <!-- Testimonial Start -->
    
        <!-- 리뷰영상 -->
        <div class="container1">
            <div class="text-center"> 
                <h1 class="mb-5">리뷰</h1>
            </div>
               <div class="owl-carousel testimonial-carousel position-relative">
            <%for(int i = 0 ; i < youtube_list.size(); i++){ %>
               <%if(movie_one.getMovie_id().equals(youtube_list.get(i).getMovie_id())){%>
                  <%if(youtube_list.get(i).getYoutube_type().equals("영화리뷰")) {%>
                <div class="testimonial-item text-center">
                    <!-- 유튜버 로고 -->
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="<%=youtube_list.get(i).getYoutuberimg_link() %>.jpg" style="width: 80px; height: 80px;">
                    <!-- 유튜버 이름 -->
                    <h5 class="mb-0"><%=youtube_list.get(i).getYoutuber() %></h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <a href="ReviewDetail.jsp?movie_id=<%=youtube_list.get(i).getMovie_id()%>&youtube_id=<%=youtube_list.get(i).getYoutube_id()%>"><p class="mb-0"><video id="review" poster="<%=youtube_list.get(i).getImg_link() %>" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="<%= youtube_list.get(i).getYoutubemp4_link()%>.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p></a>              
                    <a href="ReviewDetail.jsp?movie_id=<%=youtube_list.get(i).getMovie_id()%>&youtube_id=<%=youtube_list.get(i).getYoutube_id()%>"><p id="title"><%=youtube_list.get(i).getYoutube_title() %></p></a>
                    </div>
                </div>
            
                   <%} %> 
               <%}%>
            <%} %>
            
            </div>
        </div>

        <!-- 결말포함영상 -->
        <div class="container2">
            <div class="text-center"> 
                
                <h1 class="mb-5">결말 포함</h1>
            </div>
            <div class="owl-carousel testimonial-carousel position-relative">
             <%for(int i = 0 ; i < youtube_list.size(); i++){ %>
               <%if(movie_one.getMovie_id().equals(youtube_list.get(i).getMovie_id())){%>
                  <%if(youtube_list.get(i).getYoutube_type().equals("결말포함")) {%>
                <div class="testimonial-item text-center">
                    <!-- 유튜버 로고 -->
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="<%=youtube_list.get(i).getYoutuberimg_link() %>.jpg" style="width: 80px; height: 80px;">
                    <!-- 유튜버 이름 -->
                    <h5 class="mb-0"><%=youtube_list.get(i).getYoutuber() %></h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <a href="ReviewDetail.jsp?movie_id=<%=youtube_list.get(i).getMovie_id()%>&youtube_id=<%=youtube_list.get(i).getYoutube_id()%>"><p class="mb-0"><video id="review" poster="<%=youtube_list.get(i).getImg_link() %>" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="<%= youtube_list.get(i).getYoutubemp4_link()%>.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p></a>
                    <a href="ReviewDetail.jsp?movie_id=<%=youtube_list.get(i).getMovie_id()%>&youtube_id=<%=youtube_list.get(i).getYoutube_id()%>"><p id="title"><%=youtube_list.get(i).getYoutube_title() %></p></a>
                    </div>
                </div>
              
                      <%} %> 
               <%}%>
            <%} %>
            </div>
        </div>

        <!-- 해석영상 -->
        <div class="container3">
            <div class="text-center"> 
              
                <h1 class="mb-5">해석</h1>
            </div>
            <div class="owl-carousel testimonial-carousel position-relative">
              <%for(int i = 0 ; i < youtube_list.size(); i++){ %>
               <%if(movie_one.getMovie_id().equals(youtube_list.get(i).getMovie_id())){%>
                  <%if(youtube_list.get(i).getYoutube_type().equals("해석영상")) {%>
                <div class="testimonial-item text-center">
                    <!-- 유튜버 로고 -->
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="<%=youtube_list.get(i).getYoutuberimg_link() %>.jpg" style="width: 80px; height: 80px;">
                    <!-- 유튜버 이름 -->
                    <h5 class="mb-0"><%=youtube_list.get(i).getYoutuber() %></h5>
                    <div class="testimonial-text bg-light text-center p-4">
                    <a href="ReviewDetail.jsp?movie_id=<%=youtube_list.get(i).getMovie_id()%>&youtube_id=<%=youtube_list.get(i).getYoutube_id()%>"><p class="mb-0"><video id="review" poster="<%=youtube_list.get(i).getImg_link() %>" onmouseover="this.play()" onmouseout="this.pause()" autobuffer="true"><source src="<%= youtube_list.get(i).getYoutubemp4_link()%>.mp4" type="video/mp4";codecs="avc1.42E01E,mp4a.40.2"></video></p></a>
                    <a href="ReviewDetail.jsp?movie_id=<%=youtube_list.get(i).getMovie_id()%>&youtube_id=<%=youtube_list.get(i).getYoutube_id()%>"><p id="title"><%=youtube_list.get(i).getYoutube_title() %></p></a>
                    </div>
                </div>
               
                     <%} %> 
               <%}%>
            <%} %>
            </div>
        </div>
        

    <!-- Footer Start -->
   
   <%-- <%@ include file="footer.jsp" %> --%>
<!-- <!-- <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
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
    </div> -->
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
    <iframe  name="myHiddenFrame"  style="display:none;"></iframe>
</body>
</html>
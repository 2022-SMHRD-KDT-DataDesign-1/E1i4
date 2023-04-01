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
	<%@ include file="header.jsp" %>
	<!-- Navbar End -->


    <!-- Header Start -->

    <div>
         <%
         	testimonialVO movie_one = (testimonialVO)session.getAttribute("movie_one");
         
         	if(movie_one != null){
         		System.out.print(movie_one.getMovie_title());
         	}
         %>
        <!-- 예고편 -->
        <div class="trailer" muted="false" data-vbg-autoplay="true" data-vbg="https://youtu.be/jBdRhhSt3Bc <%-- <%= movie_one.getTrailer()%> --%>"></div>
        <!-- 영화정보  -->
        <div class="movie_import">
         <p id="movie_date">2019 <%-- <%= movie_one.getMovie_date()%> --%></p>
         <p id="movie_age">관람 등급 : 12<%--  <%= movie_one.getMovie_age() %> --%></p>
         <p id="movie_genre"> 드라마 </p>             
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
             <!-- 사용자 별점 -->
             <p id="user_com">사용자평</p>
           <div class="star-source">
             <svg>
                    <linearGradient x1="50%" y1="5.41294643%" x2="87.5527344%" y2="65.4921875%" id="grad">
                       <stop stop-color="#bf209f" offset="0%"></stop>
                       <stop stop-color="#d62a9d" offset="60%"></stop>
                       <stop stop-color="#ED009E" offset="100%"></stop>
                   </linearGradient>
               <symbol id="star" viewBox="153 89 106 108">   
                 <polygon id="star-shape" stroke="url(#grad)" stroke-width="5" fill="currentColor" points="206 162.5 176.610737 185.45085 189.356511 150.407797 158.447174 129.54915 195.713758 130.842203 206 95 216.286242 130.842203 253.552826 129.54915 222.643489 150.407797 235.389263 185.45085"></polygon>
               </symbol>
           </svg>
           
           </div>
              
           <div id="star-container">
             <input type="radio" name="star" id="five">
             <label for="five">
               <svg class="star">
                   <use xlink:href="#star"/>
               </svg>
             </label>
             <input type="radio" name="star" id="four">
             <label for="four">
               <svg class="star">
                   <use xlink:href="#star"/>
                </svg>
             </label>
               <input type="radio" name="star" id="three">
               <label for="three">
                 <svg class="star">
                   <use xlink:href="#star"/>
                 </svg>
               </label>
             <input type="radio" name="star" id="two">
             <label for="two">
               <svg class="star">
                 <use xlink:href="#star" />
               </svg>
             </label>
             <input type="radio" name="star" id="one">
             <label for="one">
               <svg class="star">
                  <use xlink:href="#star" />
                </svg>
             </label>
           </div>
           <!-- 댓글 입력 -->
           <form class="comment" action="testimonial.jsp" method="get">
                 <span class="commentS">
    				<input class="card-slide" id="knock" type="text" placeholder="댓글을 입력하세요" /><label for="knock">click!</label>
		            <input type="submit" value="등록" id="submit"></input>
  				 </span>
            </form>
          
         <!-- 댓글창 -->
         <div>
           <table id="board">
              <tr>
                 <th>Nickname</td>
                 <th>Content</td>
                 <th>Date</td>
                 <th>Delete</td>                 
              </tr>
               <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">🗑️</a></td>
              </tr>
               <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">🗑️</a></td>
              </tr>
               <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">🗑️</a></td>
              </tr>
               <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">🗑️</a></td>
              </tr>
               <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">🗑️</a></td>
              </tr>
              <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">🗑️</a></td>
              </tr>
           </table>            
         </div>  
       </div>   
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
	<%@ include file="footer.jsp" %>
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
    

    <!-- Template Javascript -->
    <script src="js/mainyu.js"></script>
    <!-- 예고편 -->
    <script src="https://unpkg.com/youtube-background@1.0.14/jquery.youtube-background.min.js"></script>
</body>
</html>
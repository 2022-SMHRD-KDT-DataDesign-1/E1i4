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
        <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>eLEARNING</h2>
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
                        <a href="team.html" class="dropdown-item">Our Team</a>
                        <a href="testimonial.html" class="dropdown-item active">Testimonial</a>
                        <a href="404.html" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contact</a>
            </div>
            <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Join Now<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Header Start -->
    <div>
         
        <!-- 예고편 -->
        <div class="trailer" muted="false" data-vbg-autoplay="true" data-vbg="https://youtu.be/jBdRhhSt3Bc"></div>
        <!-- 영화정보  -->
        <div class="movie_import">
         <p id="movie_date">2019</p>
         <p id="movie_genre">드라마</p>               
         <P id="movie_title">기생충</P>
             <!-- 총 평점 -->
             <p class="all-score">⭐ 9.9</p>
        <!-- 찜 -->   
        <ul class="tg-list">
            <li class="tg-list-item">
                <input class="tgl tgl-flip" id="cb5" type="checkbox" /><label class="tgl-btn" data-tg-off="찜❤" data-tg-on="저장💕" for="cb5"></label>
            </li>
            <li>
                <span class="tgNum">0</span>
                <span class="tgNum">0</span>
            </li>
        </ul>
        <P id="movie_actor">주연배우 : OOO</P>         
         <P id="movie_story">반지하에서 근근이 먹고 살던 가족. 우연히 생긴 알바로 부잣집에 발을 들이더니, 어느덧 온 식구가 저택 곳곳의 밥줄을 꿰찬다. 공간도 세간도 남아돌잖아요. 그러니 우리 같이 나눠 씁시다.</P>
          <br>   
             <!-- 사용자 별점 -->
             <p>사용자평</p>
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
               <input id="inputCom" type="text" placeholder="댓글 입력...">
               <input type="submit" value="저장" id="submit"></input>
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
                 <td class="delete"><a href="">삭제</a></td>
              </tr>
               <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">삭제</a></td>
              </tr>
               <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">삭제</a></td>
              </tr>
               <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">삭제</a></td>
              </tr>
               <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">삭제</a></td>
              </tr>
              <tr>
                 <td class="id">test1</td>
                 <td class="content">원래 있던 자리로 돌아간 수석처럼 기택네 가족도 원래 있던 반지하에서 계속 살아가는 것이 순리였던 것일까. 분수에 맞지 않은 옷을 잠깐 입었던 것처럼</td>
                 <td class="date">2023.03.26</td>
                 <td class="delete"><a href="">삭제</a></td>
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
                <h6 class="section-title bg-white text-center text-primary px-3">Review</h6>
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
                <h6 class="section-title bg-white text-center text-primary px-3">Include_End</h6>
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
                <h6 class="section-title bg-white text-center text-primary px-3">interpretation</h6>
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
    

    <!-- Template Javascript -->
    <script src="js/mainyu.js"></script>
    <!-- 예고편 -->
    <script src="https://unpkg.com/youtube-background@1.0.14/jquery.youtube-background.min.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Movie Details || Streamo - Media Streaming App Site Bootstrap 5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
    
    <!-- CSS 
    ========================= -->
   
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap-goun.min.css">
    
    <!-- Fonts CSS -->
    <link rel="stylesheet" href="css/material-design-iconic-font.css">
    
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="css/plugins.css">
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="css/st.css">
    
    <!-- Modernizer JS -->
    <script src="js/modernizr-3.6.0.min.js"></script>
</head>

<body>

<!-- Main Wrapper Start -->
<div class="main-wrapper">
   
	<!-- Navbar Start -->
	<%@ include file="header.jsp" %>
	<!-- Navbar End -->
    
    <!-- Breadcrumb -->
    <div class="breadcrumb-area breadcrumb-modify-padding bg-black-3">
        <div class="container">
            <div class="in-breadcrumb">
                <div class="row">
                    <div class="col">
                        <div class="breadcrumb-style-2">
                            <h2>제목</h2>
                            <!-- breadcrumb-list start -->
                            <ul class="breadcrumb-list-2">
                                <li>재생시간</li>
                                <li>연도</li>
                                <li>장르</li>
                                <li class="active">U/A 18+ 연령</li>
                            </ul>
                            <!-- breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--// Breadcrumb -->
    <div class="movie-details-wrap section-ptb-50 bg-black">
        <div class="container">
            <div class="movie-details-video-content-wrap">
                <div class="video-wrap">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/ixYjXuaYQ4I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>
                <div class="movie-details-content">
                    <div class="movie-details-info">
                        <ul>
                            <li><span>Director: </span>유튜버 이름</li>
                            <li><span>Starring: </span> 부제목? </li>
                        </ul>
                    </div>
                    <p>내용</p>
                    <p>자를거</p>
                </div>
            </div>
        </div>
    </div>
    <div class="movie-list section-ptb-50 bg-black-2">
        <div class="container">
            <div class="section-title-4 st-border-bottom">
                <h2 class="res-font-dec">Recommended For You</h2>
            </div>
            <div class="movie-slider-active-3 nav-style-3">
                <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="movie-details.html"><img src="image/G.png" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="movie-details.html">Top Of The World</a></h3>
                            <span>Quality : HD</span>
                            <div class="movie-btn">
                                <a href="movie-details.html" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="movie-details.html"><img src="image/dopa.png" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="movie-details.html"> Land And Sea</a></h3>
                            <span>Quality : HD</span>
                            <div class="movie-btn">
                                <a href="movie-details.html" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="movie-details.html"><img src="image/ex.jpg" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="movie-details.html">The Walk</a></h3>
                            <span>Quality : HD</span>
                            <div class="movie-btn">
                                <a href="movie-details.html" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="movie-details.html"><img src="image/pic.jpg" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="movie-details.html">Never Stop Looking</a></h3>
                            <span>Quality : HD</span>
                            <div class="movie-btn">
                                <a href="movie-details.html" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="movie-details.html"><img src="image/da.png" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="movie-details.html">The Lost Girl</a></h3>
                            <span>Quality : HD</span>
                            <div class="movie-btn">
                                <a href="movie-details.html" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="movie-details.html"><img src="image/ex.jpg" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="movie-details.html">The Lost Girl</a></h3>
                            <span>Quality : HD</span>
                            <div class="movie-btn">
                                <a href="movie-details.html" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="movie-wrap-plr">
                    <div class="movie-wrap text-center">
                        <div class="movie-img">
                            <a href="movie-details.html"><img src="image/ex.jpg" alt=""></a>
                            <button title="Watchlist" class="Watch-list-btn" type="button"><i class="zmdi zmdi-plus"></i></button> 
                        </div>
                        <div class="movie-content">
                            <h3 class="title"><a href="movie-details.html"> Silkovettes In The Attic</a></h3>
                            <span>Quality : HD</span>
                            <div class="movie-btn">
                                <a href="movie-details.html" class="btn-style-hm4-2 animated">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- Footer Start -->
	<%@ include file="footer.jsp"%>
	<!-- Footer End -->
	
	<!-- Modal -->
    <div class="modal fade" id="exampleModal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="subscribe-btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="zmdi zmdi-close s-close"></i></button>
                </div>
                <div class="modal-body">
                    <h5 id="exampleModalLabel">Ready to watch? Enter your email to create or restart your membership.</h5>
                    <div class="create-membership-wrap modify">
                        <input placeholder="Email Address">
                        <button class="landing-btn-style" type="button">Get Started</button> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main Wrapper End -->

<!-- JS
============================================ -->

<!-- jquery -->		
<script src="js/jquery-3.5.1min.js"></script>
<!-- <script src="js/jquery.js"></script> -->
<script src="js/jquery-migrate-3.3.0.min.js"></script>
<!-- Popper JS -->
<script src="js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="js/bootstrap.min.js"></script>
<!-- Plugins JS -->
<script src="js/plugins.js"></script>
<!-- Ajax Mail -->
<script src="assets/js/ajax-mail.js"></script>
<!-- Main JS -->
<script src="main.js"></script>


</body>

</html>
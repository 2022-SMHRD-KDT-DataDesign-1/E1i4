<%@page import="com.smhrd.model.indexVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.indexDAO"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
	e rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap-dokgo.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style-dokgo.css" rel="stylesheet">

<!-- slick slider -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

	<!-- Favicon -->
	<link href="img/favicon.ico" rel="icon">
	
	<!-- Google Web Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
	
	<!-- Icon Font Stylesheet -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
	
	<!-- Libraries Stylesheet -->
	<link href="lib/animate/animate.min.css" rel="stylesheet">
	<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
	
	<!-- Customized Bootstrap Stylesheet -->
	<link href="css/bootstrap-dokgo.min.css" rel="stylesheet">
	
	<!-- Template Stylesheet -->
	<link href="css/style-dokgo.css" rel="stylesheet">
	
	<!-- slick slider -->
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>


</head>

<body>

	<!-- 찜한 영화 가져오기 -->
	<%

	%>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->


	<!-- Navbar Start -->
	<nav class="navbar navbar-expand-lg bg-black navbar-light sticky-top p-0">
		<a href="index-goun.jsp" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h2 class="m-0 text-primary">REVVIA</h2>
		</a>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<!-- search-btn -->
				<form action="SearchService.do" method="get" class="search-form">
					<input type="search" value="" placeholder="검색어를 입력하세요..." class="search-input" name="searchKeyword">
					<button type="submit" class="search-button">
						<svg class="submit-button">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#search" style="color:#fff"></use>
                        </svg>
					</button>
				</form>
				<svg xmlns="http://www.w3.org/2000/svg" width="0" height="0"
					display="none">
                    <symbol id="search" viewBox="0 0 32 32">
                        <path d="M 19.5 3 C 14.26514 3 10 7.2651394 10 12.5 C 10 14.749977 10.810825 16.807458 12.125 18.4375 L 3.28125 27.28125 L 4.71875 28.71875 L 13.5625 19.875 C 15.192542 21.189175 17.250023 22 19.5 22 C 24.73486 22 29 17.73486 29 12.5 C 29 7.2651394 24.73486 3 19.5 3 z M 19.5 5 C 23.65398 5 27 8.3460198 27 12.5 C 27 16.65398 23.65398 20 19.5 20 C 15.34602 20 12 16.65398 12 12.5 C 12 8.3460198 15.34602 5 19.5 5 z" />
                    </symbol>
                </svg>
				<button class="nav-item nav-link" id="openBtn">AI 추천</button>
				<!-- ai추천 -->
				<div class="modal hidden">
					<div class="modal__overlay"></div>
					<div class="modal__content">
						<!-- <button id="closeBtn">❌</button> -->
						<h2 class="modal__title">독고운✨님이 찜한 영화에 기반한 추천 결과입니다!</h2>
						<div class="ai-slick-wrapper">
							<div class="ai-slick-item">
								<img src="https://movie-phinf.pstatic.net/20140507_216/1399432285654kL0n6_JPEG/movie_image.jpg?type=m886_590_2" alt="">
							</div>
							<div class="ai-slick-item">
								<img src="https://movie-phinf.pstatic.net/20190617_238/15607345554570jcTV_JPEG/movie_image.jpg?type=m886_590_2" alt="">
							</div>
							<div class="ai-slick-item">
								<img src="https://movie-phinf.pstatic.net/20170822_82/1503367158991tDEe4_JPEG/movie_image.jpg?type=m886_590_2" alt="">
							</div>
							<div class="ai-slick-item">
								<img src="https://movie-phinf.pstatic.net/20111223_287/1324614340546accPd_JPEG/movie_image.jpg?type=m886_590_2" alt="">
							</div>
							<div class="ai-slick-item">
								<img src="https://movie-phinf.pstatic.net/20181212_13/1544600979109cuOtx_JPEG/movie_image.jpg?type=m886_590_2" alt="">
							</div>
							<div class="ai-slick-item">
								<img src="https://movie-phinf.pstatic.net/20210915_104/1631681279096sdjNA_JPEG/movie_image.jpg?type=m886_590_2" alt="">
							</div>
							<div class="ai-slick-item">
								<img src="https://movie-phinf.pstatic.net/20130909_236/1378721647618BUmVX_JPEG/movie_image.jpg?type=m886_590_2" alt="">
							</div>
							<div class="ai-slick-item">
								<img src="https://movie-phinf.pstatic.net/20220719_124/1658199507038N0QB6_JPEG/movie_image.jpg?type=m886_590_2" alt="">
							</div>
						</div>
						<div class="ai-navigator">
							<i class="fas fa-chevron-left ai-prev"></i> 
							<i class="fas fa-chevron-right ai-next"></i>
						</div>
					</div>
				</div>
				<div class="nav-item dropdown">
					<a href="" class="btn btn-primary py-4 d-none d-lg-block nav-link-dropdown-toggle" data-bs-toggle="dropdown" style="font-size: 18px; padding-right: 30px; margin-right: 10px">독고운<!--<i class="fa fa-arrow-right ms-3"></i>--></a>
					<div class="dropdown-menu fade-down m-0" id="dropdown-mypage"
						style="text-align: center; min-width: 80px; right: 10px; padding: 3px; position: absolute;">
						<a href="team.jsp" class="dropdown-item">보관함</a> 
						<a href=""class="dropdown-item">설정</a> 
						<a href="Login_1.jsp" class="dropdown-item">로그아웃</a>
					</div>
				</div>
				<!-- <div class="nav-item dropdown " style="margin-left: 50px">
                    <a href="" class="btn btn-primary py-4 d-none d-lg-block nav-link-dropdown-toggle" data-bs-toggle="dropdown" style="margin-right: 30px">독고운</a>
                    <div class="dropdown-menu fade-down m-0" style="text-align: center; min-width: 80px; right: 11px; padding: 3px; position:absolute;">
                        <a href="" class="dropdown-item">보관함</a>
                        <a href="" class="dropdown-item">설정</a>
                        <a href="" class="dropdown-item">로그아웃</a>
                    </div>
                </div> -->
			</div>
		</div>
	</nav>
	
	<!-- Navbar End -->


	<!-- Carousel Start -->
	<div class="container-fluid p-0 mb-5">
        <div class="owl-carousel header-carousel position-relative">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/4-2.png" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h5 class="text-primary text-uppercase mb-3 animated slideInDown" style="margin-left:10px;">인터스텔라</h5>
                                <h1 class="display-3 text-white animated slideInDown" style="padding-bottom: 10px;">인터스텔라</h1>
                                <p class="fs-5 text-white mb-4 pb-2" style="margin-left:10px">사랑하는 가족들을 뒤로 한 채 인류라는 더 큰 가족을 위해, 그들은 이제 희망을 찾아 우주로 간다.
                                    그리고 우린 답을 찾을 것이다. 늘 그랬듯이…</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/6-1.png" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h5 class="text-primary text-uppercase mb-3 animated slideInDown" style="margin-left:10px">맨 인 블랙</h5>
                                <h1 class="display-3 text-white animated slideInDown" style="padding-bottom: 10px">맨 인 블랙</h1>
                                <h3 class="fs-5 text-white mb-4 pb-2" style="margin-left:10px">외계인 잡으러 가자~~~~👽</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="https://www.themoviedb.org/t/p/original/yGNnjoIGOdQy3douq60tULY8teK.jpg" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h5 class="text-primary text-uppercase mb-3 animated slideInDown" style="margin-left:10px">웨스트 월드</h5>
                                <h1 class="display-3 text-white animated slideInDown" style="padding-bottom: 10px; text-shadow: 0px 4px 3px rgba(0,0,0,0.4),0px 8px 13px rgba(0,0,0,0.1),0px 18px 23px rgba(0,0,0,0.1);">웨스트 월드</h1>
                                <h3 class="fs-5 text-white mb-4 pb-2" style="margin-left:10px">제껏 꿈에서도 볼 수 없었던 미래 세계를 배경으로 우주에서 펼쳐지는 월-E의 환상적인 모험! 애완용 바퀴벌레, 용맹스럽지만 어딘가 나사가 빠진 듯한 사회 부적응 로봇 군단 등 일련의 유쾌한 캐릭터들이 여기에 동참한다.</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- Carousel End -->


	<%
		String genre = "SF";
		indexDAO dao = new indexDAO();
		List<indexVO> list = dao.movieList(genre);
	
		list.get(0).getMovie_title();
	%>    

<!-- sf, 드라마, 코미디, 공포, 판타지 -->

	<!-- Service Start -->
	<div class="container-xxl py-5" style="width: 100%">
		<h4 class="show-movie-item-text"
			style="margin-bottom: 25px; font-weight: bold;">Popular</h4>
		<div class="container">
			<div class="slick-service-item row g-4 col-lg-3 col-sm-6" style="width: 1350px">
			<%int num = 0; %>
			<%for(indexVO M : list){ %>
				<div class="service-item text-center pt-3">
				<a href="testimonial.jsp?movie_id=1}">
					<img src="<%=M.getPoster_link()%>" alt="">
				</a>
				</div>
				<%num++;
				if(num == 9){
					break;
				}%>
				 <div class="service-item text-center pt-3">
					<a href="testimonial.jsp?movie_id=1">
						<img src="https://movie-phinf.pstatic.net/20190528_36/1559024198386YVTEw_JPEG/movie_image.jpg?type=m886_590_2" alt="">
					</a>
				</div>
				
				<!-- <div class="service-item text-center pt-3">
					<a href="testimonial.jsp?movie_id=1">
						<img src="https://movie-phinf.pstatic.net/20190528_36/1559024198386YVTEw_JPEG/movie_image.jpg?type=m886_590_2" alt="">
					</a>
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220923_263/1663900781920FODkW_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20170822_82/1503367158991tDEe4_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20230322_139/1679448583763RpbsY_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20221216_283/1671153488789d3g4j_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20161013_298/1476331104894iuPUD_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20111222_275/1324486858366TFhf1_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220719_124/1658199507038N0QB6_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div> -->
			<%} %>
			</div>
			<div class="navigator">
				<i class="fas fa-chevron-left prev"></i> <i
					class="fas fa-chevron-right next"></i>
			</div>
		</div>
	</div>
	<!-- Service End -->

	<div class="container-xxl py-5" style="width: 100%">
		<h4 class="show-movie-item-text" style="margin-bottom: 25px;">Popular</h4>
		<div class="container">
			<div class="slick-service-item row g-4 col-lg-3 col-sm-6"
				style="width: 1350px;">
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20190528_36/1559024198386YVTEw_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220923_263/1663900781920FODkW_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20170822_82/1503367158991tDEe4_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20230322_139/1679448583763RpbsY_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20221216_283/1671153488789d3g4j_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20161013_298/1476331104894iuPUD_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20111222_275/1324486858366TFhf1_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220719_124/1658199507038N0QB6_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
			</div>
			<div class="navigator">
				<i class="fas fa-chevron-left prev"></i> <i
					class="fas fa-chevron-right next"></i>
			</div>
		</div>
	</div>

	<div class="container-xxl py-5" style="width: 100%">
		<h4 class="show-movie-item-text" style="margin-bottom: 25px;">Popular</h4>
		<div class="container">
			<div class="slick-service-item row g-4 col-lg-3 col-sm-6"
				style="width: 1350px;">
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20190528_36/1559024198386YVTEw_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220923_263/1663900781920FODkW_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20170822_82/1503367158991tDEe4_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20230322_139/1679448583763RpbsY_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20221216_283/1671153488789d3g4j_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20161013_298/1476331104894iuPUD_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20111222_275/1324486858366TFhf1_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220719_124/1658199507038N0QB6_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
			</div>
			<div class="navigator">
				<i class="fas fa-chevron-left prev"></i> <i
					class="fas fa-chevron-right next"></i>
			</div>
		</div>
	</div>

	<div class="container-xxl py-5" style="width: 100%">
		<h4 class="show-movie-item-text" style="margin-bottom: 25px;">Popular</h4>
		<div class="container">
			<div class="slick-service-item row g-4 col-lg-3 col-sm-6"
				style="width: 1350px;">
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20190528_36/1559024198386YVTEw_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220923_263/1663900781920FODkW_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20170822_82/1503367158991tDEe4_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20230322_139/1679448583763RpbsY_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20221216_283/1671153488789d3g4j_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20161013_298/1476331104894iuPUD_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20111222_275/1324486858366TFhf1_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220719_124/1658199507038N0QB6_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
			</div>
			<div class="navigator">
				<i class="fas fa-chevron-left prev"></i> <i
					class="fas fa-chevron-right next"></i>
			</div>
		</div>
	</div>

	<div class="container-xxl py-5" style="width: 100%">
		<h4 class="show-movie-item-text" style="margin-bottom: 25px;">Popular</h4>
		<div class="container">
			<div class="slick-service-item row g-4 col-lg-3 col-sm-6"
				style="width: 1350px;">
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20190528_36/1559024198386YVTEw_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220923_263/1663900781920FODkW_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20170822_82/1503367158991tDEe4_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20230322_139/1679448583763RpbsY_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20221216_283/1671153488789d3g4j_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20161013_298/1476331104894iuPUD_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20111222_275/1324486858366TFhf1_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220719_124/1658199507038N0QB6_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
			</div>
			<div class="navigator">
				<i class="fas fa-chevron-left prev"></i> <i
					class="fas fa-chevron-right next"></i>
			</div>
		</div>
	</div>

	<div class="container-xxl py-5" style="width: 100%">
		<h4 class="show-movie-item-text" style="margin-bottom: 25px;">Popular</h4>
		<div class="container">
			<div class="slick-service-item row g-4 col-lg-3 col-sm-6"
				style="width: 1350px;">
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20190528_36/1559024198386YVTEw_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220923_263/1663900781920FODkW_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20170822_82/1503367158991tDEe4_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20230322_139/1679448583763RpbsY_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20221216_283/1671153488789d3g4j_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20161013_298/1476331104894iuPUD_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20111222_275/1324486858366TFhf1_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
				<div class="service-item text-center pt-3">
					<img
						src="https://movie-phinf.pstatic.net/20220719_124/1658199507038N0QB6_JPEG/movie_image.jpg?type=m886_590_2"
						alt="">
				</div>
			</div>
			<div class="navigator">
				<i class="fas fa-chevron-left prev"></i> 
				<i class="fas fa-chevron-right next"></i>
			</div>
		</div>
	</div>

	<!-- Footer Start -->
<<<<<<< HEAD
	<%@ include file="footer.jsp"%>
=======
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-DataDesign-1/E1i4.git
	<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						<h6>서비스 소개 | 개인정보 처리 방침 | 이용약관 | 고객센터 | 채용정보</h6>
						<br> <span style="word-break: break-all">E1I4 주식회사 |
							대표이사 독고운</span><br> <span>고객센터 1588-8282 (평일 09:00~18:00 /
							점심시간 12:50~14:10 / 주말 및 공휴일 휴무)</span><br> <span>사업자등록번호
							220-88-38020 | 호스팅서비스제공자 : 스마트인재개발원</span><br> <span>광주광역시
							동구 예술길 31-15 4층 D반 | 전자우편주소 : godoli@smhrd.com</span><br> &copy; <a
							class="border-bottom" href="#">REVVIA</a>, All Right Reserved.

						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By <a class="border-bottom" href="https://htmlcodex.com">DGO</a><br>
						<br> Distributed By <a class="border-bottom"
							href="https://themewagon.com">E1I4</a>
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



	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- slick slider -->
	<script type="text/javascript"
		src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main-dokgo.js"></script>
</body>

</html>
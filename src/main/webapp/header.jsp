<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <link href="css/bootstrap-dokgo.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style-dokgo.css" rel="stylesheet">

    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
</head>

<body>
	<!-- Navbar Start -->
	<nav
		class="navbar navbar-expand-lg bg-black navbar-light sticky-top p-0">
		<a href="index.html"
			class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h2 class="m-0 text-primary">REVVIA</h2>
		</a>
		<button type="button" class="navbar-toggler me-4"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<!-- search-btn -->
				<form class="search-form">
					<input type="search" value="" placeholder="검색어를 입력하세요..."
						class="search-input">
					<button type="submit" class="search-button">
						<svg class="submit-button">
                            <use
								xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#search"
								style="color:#fff"></use>
                        </svg>
					</button>
				</form>
				<svg xmlns="http://www.w3.org/2000/svg" width="0" height="0"
					display="none">
                    <symbol id="search" viewBox="0 0 32 32">
                        <path
						d="M 19.5 3 C 14.26514 3 10 7.2651394 10 12.5 C 10 14.749977 10.810825 16.807458 12.125 18.4375 L 3.28125 27.28125 L 4.71875 28.71875 L 13.5625 19.875 C 15.192542 21.189175 17.250023 22 19.5 22 C 24.73486 22 29 17.73486 29 12.5 C 29 7.2651394 24.73486 3 19.5 3 z M 19.5 5 C 23.65398 5 27 8.3460198 27 12.5 C 27 16.65398 23.65398 20 19.5 20 C 15.34602 20 12 16.65398 12 12.5 C 12 8.3460198 15.34602 5 19.5 5 z" />
                    </symbol>
                </svg>
				<button class="nav-item nav-link" id="openBtn">AI 추천</button>
				<!-- ai추천 -->
				<div class="modal hidden">
					<div class="modal__overlay"></div>
					<div class="modal__content">
						<button id="closeBtn">❌</button>
						<h2 class="modal__title">독고운✨님이 찜한 영화에 기반한 추천 결과입니다!</h2>
						<div class="ai-slick-wrapper">
							<div class="ai-slick-item">
								<img
									src="https://movie-phinf.pstatic.net/20140507_216/1399432285654kL0n6_JPEG/movie_image.jpg?type=m886_590_2"
									alt="">
							</div>
							<div class="ai-slick-item">
								<img
									src="https://movie-phinf.pstatic.net/20190617_238/15607345554570jcTV_JPEG/movie_image.jpg?type=m886_590_2"
									alt="">
							</div>
							<div class="ai-slick-item">
								<img
									src="https://movie-phinf.pstatic.net/20170822_82/1503367158991tDEe4_JPEG/movie_image.jpg?type=m886_590_2"
									alt="">
							</div>
							<div class="ai-slick-item">
								<img
									src="https://movie-phinf.pstatic.net/20111223_287/1324614340546accPd_JPEG/movie_image.jpg?type=m886_590_2"
									alt="">
							</div>
							<div class="ai-slick-item">
								<img
									src="https://movie-phinf.pstatic.net/20181212_13/1544600979109cuOtx_JPEG/movie_image.jpg?type=m886_590_2"
									alt="">
							</div>
							<div class="ai-slick-item">
								<img
									src="https://movie-phinf.pstatic.net/20210915_104/1631681279096sdjNA_JPEG/movie_image.jpg?type=m886_590_2"
									alt="">
							</div>
							<div class="ai-slick-item">
								<img
									src="https://movie-phinf.pstatic.net/20130909_236/1378721647618BUmVX_JPEG/movie_image.jpg?type=m886_590_2"
									alt="">
							</div>
							<div class="ai-slick-item">
								<img
									src="https://movie-phinf.pstatic.net/20220719_124/1658199507038N0QB6_JPEG/movie_image.jpg?type=m886_590_2"
									alt="">
							</div>
						</div>
						<div class="ai-navigator">
							<i class="fas fa-chevron-left ai-prev"></i> <i
								class="fas fa-chevron-right ai-next"></i>
						</div>
					</div>
				</div>
				<div class="nav-item dropdown">
					<a href=""
						class="btn btn-primary py-4 d-none d-lg-block nav-link-dropdown-toggle"
						data-bs-toggle="dropdown"
						style="font-size: 18px; padding-right: 30px; margin-right: 10px">독고운<!--<i class="fa fa-arrow-right ms-3"></i>--></a>
					<div class="dropdown-menu fade-down m-0" id="dropdown-mypage"
						style="text-align: center; min-width: 80px; right: 10px; padding: 3px; position: absolute;">
						<a href="" class="dropdown-item">보관함</a> <a href=""
							class="dropdown-item">설정</a> <a href="" class="dropdown-item">로그아웃</a>
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
	<script src="js/main.js"></script>
</body>
</html>
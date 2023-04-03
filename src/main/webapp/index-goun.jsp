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

</head>

<body>

	<!-- 찜한 영화 가져오기 -->
	<%

	%>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->


	<!-- Navbar Start -->
	<%@ include file="header.jsp"%>
	<!-- Navbar End -->


	<!-- Carousel Start -->
	<div class="container-fluid p-0 mb-5">
		<div class="owl-carousel header-carousel position-relative">
			<div class="owl-carousel-item position-relative">
				<img class="img-fluid" src="img/4-2.png" alt="">
				<div
					class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center">
					<div class="container">
						<div class="row justify-content-start">
							<div class="col-sm-10 col-lg-8">
								<h5
									class="text-primary text-uppercase mb-3 animated slideInDown"
									style="margin-left: 10px;">인터스텔라</h5>
								<h1 class="display-3 text-white animated slideInDown"
									style="padding-bottom: 10px;">인터스텔라</h1>
								<p class="fs-5 text-white mb-4 pb-2" style="margin-left: 10px">사랑하는
									가족들을 뒤로 한 채 인류라는 더 큰 가족을 위해, 그들은 이제 희망을 찾아 우주로 간다. 그리고 우린 답을 찾을
									것이다. 늘 그랬듯이…</p>
								<!-- <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a> -->
								<!-- <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="owl-carousel-item position-relative">
				<img class="img-fluid" src="img/6-1.png" alt="">
				<div
					class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center">
					<div class="container">
						<div class="row justify-content-start">
							<div class="col-sm-10 col-lg-8">
								<h5
									class="text-primary text-uppercase mb-3 animated slideInDown"
									style="margin-left: 10px">맨 인 블랙</h5>
								<h1 class="display-3 text-white animated slideInDown"
									style="padding-bottom: 10px">맨 인 블랙</h1>
								<h3 class="fs-5 text-white mb-4 pb-2" style="margin-left: 10px">외계인
									잡으러 가자~~~~👽</h3>
								<!-- <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a> -->
								<!-- <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="owl-carousel-item position-relative">
				<img class="img-fluid"
					src="https://www.themoviedb.org/t/p/original/yGNnjoIGOdQy3douq60tULY8teK.jpg"
					alt="">
				<div
					class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center">
					<div class="container">
						<div class="row justify-content-start">
							<div class="col-sm-10 col-lg-8">
								<h5
									class="text-primary text-uppercase mb-3 animated slideInDown"
									style="margin-left: 10px">웨스트 월드</h5>
								<h1 class="display-3 text-white animated slideInDown"
									style="padding-bottom: 10px; text-shadow: 0px 4px 3px rgba(0, 0, 0, 0.4), 0px 8px 13px rgba(0, 0, 0, 0.1), 0px 18px 23px rgba(0, 0, 0, 0.1);">웨스트
									월드</h1>
								<h3 class="fs-5 text-white mb-4 pb-2" style="margin-left: 10px">제껏
									꿈에서도 볼 수 없었던 미래 세계를 배경으로 우주에서 펼쳐지는 월-E의 환상적인 모험! 애완용 바퀴벌레,
									용맹스럽지만 어딘가 나사가 빠진 듯한 사회 부적응 로봇 군단 등 일련의 유쾌한 캐릭터들이 여기에 동참한다.</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Carousel End -->



	<!-- Service Start -->
	<div class="container-xxl py-5" style="width: 100%">
		<h4 class="show-movie-item-text"
			style="margin-bottom: 25px; font-weight: bold;">Popular</h4>
		<div class="container">
			<div class="slick-service-item row g-4 col-lg-3 col-sm-6"
				style="width: 1350px">
				<div class="service-item text-center pt-3">
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
				</div>
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
				<i class="fas fa-chevron-left prev"></i> <i
					class="fas fa-chevron-right next"></i>
			</div>
		</div>
	</div>

	<!-- Footer Start -->
	<%@ include file="footer.jsp"%>
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
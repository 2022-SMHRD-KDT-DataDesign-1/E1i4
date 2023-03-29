<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.YoutubeDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.YoutubeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet"/>
<link rel="stylesheet" href="style.css"/>
<script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
<script src="main.js" defer></script>
</head>
<body>
	<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="경로/CSS파일명.css">
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo">
            <a href=""><i class="fab fa-youtube"></i></a>
            <span class="title">YOUTUBE</span>
        </div>
        <div class="icons">
            <i class="fas fa-search"></i>
            <i class="fas fa-ellipsis-v"></i>
        </div>
    </header>

<%
YoutubeDAO dao = new YoutubeDAO();
List<YoutubeVO> list = dao.showYoutube();
System.out.print(list.size());
%>

    <!-- Video Player -->
    <!-- <DIV class="video__item" loop muted style="TEXT-ALIGN: center"> </DIV> -->
    <div class="player">
        <object type="text/html" width="100%" height="500" data=<%=list.get(0).getYoutube_link() %> allowFullScreen></object>
    </div>
    <div class="infoandUpNext">
            <!-- Video Info -->
    <section class="info">
        <div class="metadata">
        	<!-- 해시태그 -->
            <ul class="hashtags">
                <li>#DreamCoding</li>
                <li>#DreamCoders</li>
                <li>#Ellie</li>
            </ul>
            <div class="titleAndButton">
                <span class="title">
                	<%=list.get(0).getYoutube_title() %>
                    <!-- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque semper luctus nibh, a venenatis urna volutpat eu. Sed sed mauris mollis, cursus massa eu, vestibulum nulla. Vivamus augue arcu, finibus quis velit id, pharetra feugiat neque. Nam faucibus erat nec cursus tristique. Suspendisse a viverra enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque ut quam sit amet arcu auctor molestie. Morbi ullamcorper hendrerit odio, pharetra imperdiet nulla gravida eu. -->
                </span>
                <button class="moreBtn">
                    <i class="fas fa-caret-down"></i>
                </button>
            </div>
            <span class="views">1M views 1 month ago</span>
        </div>
        <ul class="actions">
            <li>
                <button>
                    <i class="active fas fa-thumbs-up"></i><span>1K</span>
                </button>
            </li>
            <li>
                <button>
                    <i class="fas fa-thumbs-down"></i><span>0</span>
                </button>
            </li>
            <li>
                <button>
                    <i class="fas fa-share"></i><span>Share</span>
                </button>
            </li>
            <li>
                <button>
                    <i class="fas fa-plus"></i><span>Save</span>
                </button>
            </li>
            <li>
                <button>
                    <i class="fab fa-font-awesome-flag"></i><span>Report</span>
                </button>
            </li>
        </ul>
        <div class="channel">
            <div class="metadata">
                <img src="img/free-icon-alien-6542739.png" alt=""/>
                <div class="info">
                    <span class="name"><%=list.get(0).getYoutuber() %></span>
                    <span class="subscribers">1M subscribers</span>
                </div>
            </div>
            <button class="subscribe">subscribe</button>
        </div>
    </section>
    <section class="upNext">
        <span class="title">Up next</span>
        <ul>
            <li class="item">
                <div class="img"><img src=<% %> alt=""></div>
                
                <div class="info">
                    <span class="title clamp">
                        <%=list.get(1).getYoutube_title() %>
                        창모(Changmo)의 킬링벌스를 라이브로! | Selfmade orange, BAND, I always, Interlude, 아이야, 널 지워야해, 비워 등
                    </span>
                    <span class="name"><%=list.get(1).getYoutuber() %>Dingo</span>
                    <span class="views">88K views</span>
                </div>
                <button class="moreBtn"><i class="fas fa-ellipsis-v"></i></button>
            </li>
            <li class="item">
                <img src="./img/test-thumnail1.jpeg" alt="">
                <div class="info">
                    <span class="title">
                    	<% %>
                        창모(Changmo)의 킬링벌스를 라이브로! | Selfmade orange, BAND, I always, Interlude, 아이야, 널 지워야해, 비워 등
                    </span>
                    <span class="name">Dingo</span>
                    <span class="views">88K views</span>
                </div>
                <button class="moreBtn"><i class="fas fa-ellipsis-v"></i></button>
            </li>
            <li class="item">
                <img src="./img/test-thumnail1.jpeg" alt="">
                <div class="info">
                    <span class="title">
                        <% %>창모(Changmo)의 킬링벌스를 라이브로! | Selfmade orange, BAND, I always, Interlude, 아이야, 널 지워야해, 비워 등
                    </span>
                    <span class="name"><% %>Dingo</span>
                    <span class="views"><% %>88K views</span>
                </div>
                <button class="moreBtn"><i class="fas fa-ellipsis-v"></i></button>
            </li>
        </ul>
    </section>
    </div>

</body>
</html>
</body>
</html>
package com.smhrd.model;

import java.math.BigDecimal;

public class testimonialVO {

	private String member_id;
	private String nickname;
	private String r_num;
	private String member_comment;
	private String like_check;
	private String member_rate;
	private String movie_id;
	private String movie_title;
	private String movie_date;
	private String director;
	private String actors;
	private String poster_link;
	private BigDecimal movie_rate;
	private String movie_time;
	private String synopsis;
	private String trailer;
	private String movie_age;
	private String movie_genre;
	private String youtube_id;
	private String youtube_type;
	private String youtuber;
	private String youtube_title;
	private String youtube_link;
	private String img_link;
	private String youtubemp4_link;
	private String youtuberimg_link;
	
	private String searchKeyword;
		


	public testimonialVO(String member_id, String nickname, String r_num, String member_comment, String like_check,
			String member_rate, String movie_id, String movie_title, String movie_date, String director, String actors,
			String poster_link, BigDecimal movie_rate, String movie_time, String synopsis, String trailer, String movie_age,
			String movie_genre, String youtube_id, String youtube_type, String youtuber, String youtube_title,
			String youtube_link, String img_link, String youtubemp4_link, String youtuberimg_link) {
		super();
		this.member_id = member_id;
		this.nickname = nickname;
		this.r_num = r_num;
		this.member_comment = member_comment;
		this.like_check = like_check;
		this.member_rate = member_rate;
		this.movie_id = movie_id;
		this.movie_title = movie_title;
		this.movie_date = movie_date;
		this.director = director;
		this.actors = actors;
		this.poster_link = poster_link;
		this.movie_rate = movie_rate;
		this.movie_time = movie_time;
		this.synopsis = synopsis;
		this.trailer = trailer;
		this.movie_age = movie_age;
		this.movie_genre = movie_genre;
		this.youtube_id = youtube_id;
		this.youtube_type = youtube_type;
		this.youtuber = youtuber;
		this.youtube_title = youtube_title;
		this.youtube_link = youtube_link;
		this.img_link = img_link;
		this.youtubemp4_link = youtubemp4_link;
		this.youtuberimg_link = youtuberimg_link;
	}

	// 상세페이지 - 영화 정보
	public testimonialVO(String movie_id, String movie_title, String movie_date, String director, String actors, String poster_link, BigDecimal movie_rate,
			String movie_time, String synopsis, String trailer, String movie_age, String movie_genre) {
		super();
		this.movie_id = movie_id;
		this.movie_title = movie_title;
		this.movie_date = movie_date;
		this.actors = director;
		this.actors = actors;
		this.poster_link = poster_link;
		this.movie_rate = movie_rate;
		this.movie_time = movie_time;
		this.synopsis = synopsis;
		this.trailer = trailer;
		this.movie_age = movie_age;
		this.movie_genre = movie_genre;
	}

	// 상세페이지 - 유튜브 정보
	
	public testimonialVO(String youtube_id,String movie_id, String youtube_type, String youtuber, String youtube_title,
			String youtube_link, String img_link, String youtubemp4_link, String youtuberimg_link) {
		super();
		this.youtube_id = youtube_id;
		this.movie_id = movie_id;
		this.youtube_type = youtube_type;
		this.youtuber = youtuber;
		this.youtube_title = youtube_title;
		this.youtube_link = youtube_link;
		this.img_link = img_link;
		this.youtubemp4_link = youtubemp4_link;
		this.youtuberimg_link = youtuberimg_link;
	}
	

	
	
	public testimonialVO(String like_check) {
		
		this.like_check = like_check;
		
	}

	
	// 찜
	public testimonialVO(String member_id, String movie_id) {
		super();
		this.member_id = member_id;
		this.movie_id = movie_id;
	}

	//getter
	public String getMember_id() {
		return member_id;
	}


	public String getNickname() {
		return nickname;
	}

	public String getR_num() {
		return r_num;
	}

	public String getMember_comment() {
		return member_comment;
	}

	public String getLike_check() {
		return like_check;
	}

	public String getMember_rate() {
		return member_rate;
	}

	public String getMovie_id() {
		return movie_id;
	}

	public String getMovie_title() {
		return movie_title;
	}

	public String getMovie_date() {
		return movie_date;
	}

	public String getDirector() {
		return director;
	}

	public String getActors() {
		return actors;
	}

	public String getPoster_link() {
		return poster_link;
	}

	public BigDecimal getMovie_rate() {
		return movie_rate;
	}

	public String getMovie_time() {
		return movie_time;
	}

	public String getSynopsis() {
		return synopsis;
	}

	public String getTrailer() {
		return trailer;
	}

	public String getMovie_age() {
		return movie_age;
	}

	public String getMovie_genre() {
		return movie_genre;
	}

	public String getYoutube_id() {
		return youtube_id;
	}

	public String getYoutube_type() {
		return youtube_type;
	}

	public String getYoutuber() {
		return youtuber;
	}

	public String getYoutube_title() {
		return youtube_title;
	}

	public String getYoutube_link() {
		return youtube_link;
	}

	public String getImg_link() {
		return img_link;
	}

	public String getYoutubemp4_link() {
		return youtubemp4_link;
	}

	public String getYoutuberimg_link() {
		return youtuberimg_link;
	}
	
	
	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
		
	
	
	
	
	
}

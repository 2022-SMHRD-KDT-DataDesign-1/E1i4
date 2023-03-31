package com.smhrd.model;

public class MovieVO {
	private String movie_id;
	private String movie_title;
	private String genre;
	private String movie_date;
	private String director;
	private String actors;
	private String poster_link;
	private String movie_rate;
	private String synopsis;
	private String trailer;
	private String movie_age;
	
	
	public MovieVO(String movie_id, String movie_title, String genre, String movie_date, String director, String actors,
			String poster_link, String movie_rate, String synopsis, String trailer, String movie_age) {
		this.movie_id = movie_id;
		this.movie_title = movie_title;
		this.genre = genre;
		this.movie_date = movie_date;
		this.director = director;
		this.actors = actors;
		this.poster_link = poster_link;
		this.movie_rate = movie_rate;
		this.synopsis = synopsis;
		this.trailer = trailer;
		this.movie_age = movie_age;
	}
	
	// 상세페이지 - 영화 정보
	public MovieVO(String movie_id, String movie_title, String genre, String movie_date, String actors,
			String movie_rate, String synopsis, String trailer, String movie_age) {
		super();
		this.movie_id = movie_id;
		this.movie_title = movie_title;
		this.genre = genre;
		this.movie_date = movie_date;
		this.actors = actors;
		this.movie_rate = movie_rate;
		this.synopsis = synopsis;
		this.trailer = trailer;
		this.movie_age = movie_age;
	}
	
	
	public String getMovie_id() {
		return movie_id;
	}

	public String getMovie_title() {
		return movie_title;
	}
	public String getGenre() {
		return genre;
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
	public String getMovie_rate() {
		return movie_rate;
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
	
	
}

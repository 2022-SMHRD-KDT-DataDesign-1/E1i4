package com.smhrd.model;

import java.math.BigDecimal;

public class MovieVO {
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

	
	public MovieVO(String movie_id, String movie_title, String movie_date, String director, String actors,
			String poster_link, BigDecimal movie_rate, String movie_time, String synopsis, String trailer, String movie_age,
			String movie_genre) {
		super();
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

	
}

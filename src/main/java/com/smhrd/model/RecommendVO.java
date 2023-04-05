package com.smhrd.model;

public class RecommendVO {
	private String movie_id;
	private String movie_title;
	
	public RecommendVO(String movie_id, String movie_title) {
		super();
		this.movie_id = movie_id;
		this.movie_title = movie_title;
	}
	
	public String getMovie_id() {
		return movie_id;
	}
	public String getMovie_title() {
		return movie_title;
	}
	
	
	
}

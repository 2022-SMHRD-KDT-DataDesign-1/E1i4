package com.smhrd.model;

public class RecommendVO {
	private String movie_id;
	private String movie_title;
	private String member_id;
	

	public RecommendVO(String movie_id, String movie_title, String member_id) {
		super();
		this.movie_id = movie_id;
		this.movie_title = movie_title;
		this.member_id = member_id;
	}
	
	public String getMovie_id() {
		return movie_id;
	}
	public String getMovie_title() {
		return movie_title;
	}
	
	public String getMember_id() {
		return member_id;
	}

	
	
	
}

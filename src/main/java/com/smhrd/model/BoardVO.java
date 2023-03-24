package com.smhrd.model;

public class BoardVO {
	private int r_num;
	private String movie_id;
	private String member_id;
	private String like_check;
	private String member_rate;
	
	
	public BoardVO(int r_num, String movie_id, String member_id, String like_check, String member_rate) {
		super();
		this.r_num = r_num;
		this.movie_id = movie_id;
		this.member_id = member_id;
		this.like_check = like_check;
		this.member_rate = member_rate;
	}
	
	public int getR_num() {
		return r_num;
	}
	public String getMovie_id() {
		return movie_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public String getLike_check() {
		return like_check;
	}
	public String getMember_rate() {
		return member_rate;
	}
	
	
}

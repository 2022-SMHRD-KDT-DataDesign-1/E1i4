package com.smhrd.model;

public class MemberVO {
	private String member_id;
	private String member_pw;
	private String nickname;
	private String gender;
	
	public MemberVO(String member_id, String member_pw, String nickname, String gender) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.nickname = nickname;
		this.gender = gender;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public String getNickname() {
		return nickname;
	}
	public String getGender() {
		return gender;
	}
	
}
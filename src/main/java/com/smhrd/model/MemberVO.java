package com.smhrd.model;

public class MemberVO {
	private String member_id;
	private String member_pw;
	private String nickname;
	private String member_pwck;

	public MemberVO(String member_id, String member_pw, String nickname, String member_pwck) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.nickname = nickname;
		this.member_pwck = member_pwck;
	}
	
	public MemberVO(String member_id, String member_pw) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		
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

	public String getMember_pwck() {
		return member_pwck;
	}

}
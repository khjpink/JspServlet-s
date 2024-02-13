package com.smhrd.domain;

public class MavenMember {
	
	//필드
	private String id;
	private String pw;
	
	//게터, 세터
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	//생성자
	public MavenMember(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	
	
}

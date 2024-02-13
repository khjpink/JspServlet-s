package com.smhrd.domain;

public class Member {
	
	//필드
	private String email;
	private String pw;
	private String tel;
	private String address;
	
	//게터 세터
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getpw() {
		return pw;
	}
	public void setpw(String pw) {
		this.pw = pw;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	//생성자
	public Member(String email, String pw) {
		super();
		this.email = email;
		this.pw = pw;
	}
	public Member(String email, String tel, String address) {
		super();
		this.email = email;
		this.tel = tel;
		this.address = address;
	}
	public Member(String email, String pw, String tel, String address) {
		super();
		this.email = email;
		this.pw = pw;
		this.tel = tel;
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "Member [email=" + email + ", pw=" + pw + ", tel=" + tel + ", address=" + address + "]";
	}
	
	
	
}

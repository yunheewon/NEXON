package com.nexon.dto;

import java.sql.Timestamp;

public class NexonUser {
	
	//필드 정의
	private String userId; 
	private String userPw;
	private String nickName; 
	private String email;
	private Timestamp indate;
	private String use;
	private String pwdFind;
	
	//get(), set()
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	public String getPwdFind() {
		return pwdFind;
	}
	public void setPwdFind(String pwdFind) {
		this.pwdFind = pwdFind;
	}
	
}

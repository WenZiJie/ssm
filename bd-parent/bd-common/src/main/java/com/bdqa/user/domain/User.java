package com.bdqa.user.domain;

import java.io.Serializable;
import java.sql.Timestamp;


public class User implements Serializable{
    private Integer id;//用户id
    private String userName;//用户名
    private String passWord;//密码
    private String phone;//手机号
    private String email;//邮箱
    private String lastLoginIp;//上一次登陆ip
    private Timestamp lastLoginTime;//上一次登陆时间
    private Integer state;//用户注册状态
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLastLoginIp() {
		return lastLoginIp;
	}
	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}
	public Timestamp getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public User(Integer id, String userName, String passWord, String phone, String email, String lastLoginIp,
			Timestamp lastLoginTime, Integer state) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.phone = phone;
		this.email = email;
		this.lastLoginIp = lastLoginIp;
		this.lastLoginTime = lastLoginTime;
		this.state = state;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", passWord=" + passWord + ", phone=" + phone + ", email="
				+ email + ", lastLoginIp=" + lastLoginIp + ", lastLoginTime=" + lastLoginTime + ", state=" + state
				+ "]";
	}
    
}

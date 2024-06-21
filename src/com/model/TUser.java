package com.model;

/**
 * TUser entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TUser implements java.io.Serializable {

	// Fields 会员信息表

	private Integer id; //ID
	private String userName; //会员名
	private String userPw; //会员密码
	private String realName; //会员姓名
	private String email; //会员邮箱
	private Integer userType; //用户类型
	private Integer isDel; //用户是否存在，即删除标记

	// Constructors

	/** default constructor */
	public TUser() {
	}

	/** full constructor */
	public TUser(String userName, String userPw, String realName,
			String email, Integer userType, Integer isDel) {
		this.userName = userName;
		this.userPw = userPw;
		this.realName = realName;
		this.email = email;
		this.userType = userType;
		this.isDel = isDel;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getUserType() {
		return this.userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	public Integer getIsDel() {
		return this.isDel;
	}

	public void setIsDel(Integer isDel) {
		this.isDel = isDel;
	}

}
package com.model;

import java.util.Date;

/**
 * TTopic entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TTopic implements java.io.Serializable {

	// Fields 帖子标题信息表

	private Integer pid; //新帖编号
	private Integer fid; //版块编号
	private String author; //作者姓名
	private Integer authorid; //作者id
	private String subject; //标题
	private Integer view; //阅读数
	private Integer replies; //评论数
	private Date addtime; //添加时间

	//最后回复
	private String fname;
	private TThreads lastsub;
	private String style;
	// Constructors
	
	/** default constructor */
	public TTopic() {
	}

	/** full constructor */
	public TTopic(Integer fid, String author, Integer authorid, String subject,
			Integer view, Integer replies, Date addtime) {
		this.fid = fid;
		this.author = author;
		this.authorid = authorid;
		this.subject = subject;
		this.view = view;
		this.replies = replies;
		this.addtime = addtime;
	}

	// Property accessors

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getFid() {
		return this.fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getAuthorid() {
		return this.authorid;
	}

	public void setAuthorid(Integer authorid) {
		this.authorid = authorid;
	}

	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Integer getView() {
		return this.view;
	}

	public void setView(Integer view) {
		this.view = view;
	}

	public Integer getReplies() {
		return this.replies;
	}

	public void setReplies(Integer replies) {
		this.replies = replies;
	}

	public Date getAddtime() {
		return this.addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public TThreads getLastsub() {
		return lastsub;
	}

	public void setLastsub(TThreads lastsub) {
		this.lastsub = lastsub;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}
}
package com.model;

import java.util.Date;

/**
 * TThreads entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TThreads implements java.io.Serializable {

	// Fields 帖子-评论信息表

	private Integer tid; //帖子编号
	private Integer pid; //新帖编号
	private Integer fid; //版块编号
	private Integer ftype; //类型
	private String author; //作者
	private Integer authorid; //作者id
	private String subject; //标题
	private String content; //内容
	private Date addtime; //添加时间
	private Integer tnum; //数量

	// Constructors

	/** default constructor */
	public TThreads() {
	}

	/** full constructor */
	public TThreads(Integer pid, Integer fid, Integer ftype, String author,
			Integer authorid, String subject, String content, Date addtime,
			Integer tnum) {
		this.pid = pid;
		this.fid = fid;
		this.ftype = ftype;
		this.author = author;
		this.authorid = authorid;
		this.subject = subject;
		this.content = content;
		this.addtime = addtime;
		this.tnum = tnum;
	}

	// Property accessors

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

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

	public Integer getFtype() {
		return this.ftype;
	}

	public void setFtype(Integer ftype) {
		this.ftype = ftype;
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

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getAddtime() {
		return this.addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Integer getTnum() {
		return this.tnum;
	}

	public void setTnum(Integer tnum) {
		this.tnum = tnum;
	}

}
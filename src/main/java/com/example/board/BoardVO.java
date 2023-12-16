package com.example.board;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class BoardVO {
	private int seq;
	private String title;
	private String poster;

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	private String category;

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	private String actor;
	private String writer;
	private String content;
	private Date regdate;
	private int cnt;

	public Date getYear() {
		return Year;
	}

	public void setYear(Date year) {this.Year = year;
	}
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date Year;
	private double star;



	public double getStar() {
		return star;
	}

	public void setStar(double star) {
		this.star = star;
	}

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCategory() { return category; }

}

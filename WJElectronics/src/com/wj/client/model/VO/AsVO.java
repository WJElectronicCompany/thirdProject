package com.wj.client.model.VO;

import java.util.Date;

public class AsVO {
	private int asNo;
	private String title;
	private String writer;
	private String product;
	private String content;
	private Date date;
	public int getAsNo() {
		return asNo;
	}
	public void setAsNo(int asNo) {
		this.asNo = asNo;
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
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}

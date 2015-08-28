package com.zhongli.happycity.persistence.model;

/**
 * 标记用的信息
 * 
 * @author zhonglili
 *
 */
public class MarkMessage {
	private long id;
	private String text;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "MarkMessage [id=" + id + ", text=" + text + "]";
	}

}

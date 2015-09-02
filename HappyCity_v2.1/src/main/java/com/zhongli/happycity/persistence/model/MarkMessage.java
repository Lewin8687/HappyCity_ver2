package com.zhongli.happycity.persistence.model;

import java.util.ArrayList;

/**
 * 标记用的信息
 * 
 * @author zhonglili
 *
 */
public class MarkMessage {
	private long msg_id;
	private String text;
	private String lang;
	private int media_num;
	private ArrayList<MediaObject> medias;

	public long getMsg_id() {
		return msg_id;
	}

	public void setMsg_id(long msg_id) {
		this.msg_id = msg_id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public int getMedia_num() {
		return media_num;
	}

	public void setMedia_num(int media_num) {
		this.media_num = media_num;
	}

	public ArrayList<MediaObject> getMedias() {
		return medias;
	}

	public void setMedias(ArrayList<MediaObject> medias) {
		this.medias = medias;
	}

	@Override
	public String toString() {
		return "MarkMessage [msg_id=" + msg_id + ", text=" + text + ", lang=" + lang + ", media_num=" + media_num
				+ ", medias=" + medias + "]";
	}

}

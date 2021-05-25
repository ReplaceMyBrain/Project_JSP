package com.jspproject.bbs.dto;

public class ItemInfoDto {
	int I_NUM;
	String I_TITLE;
	String I_CONTENT;
	String I_IMAGE;
	int I_HITS;
	String I_CATEGORY;
	
	public ItemInfoDto(int i_NUM, String i_TITLE, String i_CONTENT, String i_IMAGE, int i_HITS, String i_CATEGORY) {
		super();
		I_NUM = i_NUM;
		I_TITLE = i_TITLE;
		I_CONTENT = i_CONTENT;
		I_IMAGE = i_IMAGE;
		I_HITS = i_HITS;
		I_CATEGORY = i_CATEGORY;
	}

	public int getI_NUM() {
		return I_NUM;
	}

	public void setI_NUM(int i_NUM) {
		I_NUM = i_NUM;
	}

	public String getI_TITLE() {
		return I_TITLE;
	}

	public void setI_TITLE(String i_TITLE) {
		I_TITLE = i_TITLE;
	}

	public String getI_CONTENT() {
		return I_CONTENT;
	}

	public void setI_CONTENT(String i_CONTENT) {
		I_CONTENT = i_CONTENT;
	}

	public String getI_IMAGE() {
		return I_IMAGE;
	}

	public void setI_IMAGE(String i_IMAGE) {
		I_IMAGE = i_IMAGE;
	}

	public int getI_HITS() {
		return I_HITS;
	}

	public void setI_HITS(int i_HITS) {
		I_HITS = i_HITS;
	}

	public String getI_CATEGORY() {
		return I_CATEGORY;
	}

	public void setI_CATEGORY(String i_CATEGORY) {
		I_CATEGORY = i_CATEGORY;
	}
	
	
	
	
	
	

}//-----------

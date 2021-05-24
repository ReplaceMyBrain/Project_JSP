package com.jsplec.IDto;

import java.util.ArrayList;

public class TipDto {
	int tNo;
	String tTitle;
	String tContent;
	String tImg;
	int tHits;
	
	public TipDto(int tNo, String tTitle, String tContent, String tImg, int tHits) {
		super();
		this.tNo = tNo;
		this.tTitle = tTitle;
		this.tContent = tContent;
		this.tImg = tImg;
		this.tHits = tHits;
	}

	public TipDto(String tTitle2, String tContent2, String tImage, int tHits2) {
		// TODO Auto-generated constructor stub
	}


	public int gettNo() {
		return tNo;
	}

	public void settNo(int tNo) {
		this.tNo = tNo;
	}

	public String gettTitle() {
		return tTitle;
	}

	public void settTitle(String tTitle) {
		this.tTitle = tTitle;
	}

	public String gettContent() {
		return tContent;
	}

	public void settContent(String tContent) {
		this.tContent = tContent;
	}

	public String gettImg() {
		return tImg;
	}

	public void settImg(String tImg) {
		this.tImg = tImg;
	}

	public int gettHits() {
		return tHits;
	}

	public void settHits(int tHits) {
		this.tHits = tHits;
	}

	public void add(ArrayList<TipDto> tipDto) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}//----------------------

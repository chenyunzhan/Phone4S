package com.phone4s.www.model;

public class CommunityCart {
	private String totalNumber;
	private String community;
	private String totalPrice;
	private String goodsName;
	private String totalUser;
	
	
	public CommunityCart(String totalNumber, String community, String totalPrice, String goodsName, String totalUser) {
		super();
		this.totalNumber = totalNumber;
		this.community = community;
		this.totalPrice = totalPrice;
		this.goodsName = goodsName;
		this.totalUser = totalUser;
	}


	public String getTotalNumber() {
		return totalNumber;
	}


	public void setTotalNumber(String totalNumber) {
		this.totalNumber = totalNumber;
	}


	public String getCommunity() {
		return community;
	}


	public void setCommunity(String community) {
		this.community = community;
	}


	public String getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}


	public String getGoodsName() {
		return goodsName;
	}


	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}


	public String getTotalUser() {
		return totalUser;
	}


	public void setTotalUser(String totalUser) {
		this.totalUser = totalUser;
	}
	
	
	
}

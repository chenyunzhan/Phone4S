package com.phone4s.www.model;

public class ShopService {
	private Integer id;
	private Integer bussinessId;
	private String content;
	private String serviceImage;
	private String money;
	private String tradingVolume;
	private String createDate;
	private String updateDate;
	
	
	
	public ShopService(Integer id, Integer bussinessId, String content,
			String serviceImage, String money, String tradingVolume,
			String createDate, String updateDate) {
		super();
		this.id = id;
		this.bussinessId = bussinessId;
		this.content = content;
		this.serviceImage = serviceImage;
		this.money = money;
		this.tradingVolume = tradingVolume;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getBussinessId() {
		return bussinessId;
	}
	public void setBussinessId(Integer bussinessId) {
		this.bussinessId = bussinessId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getServiceImage() {
		return serviceImage;
	}
	public void setServiceImage(String serviceImage) {
		this.serviceImage = serviceImage;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getTradingVolume() {
		return tradingVolume;
	}
	public void setTradingVolume(String tradingVolume) {
		this.tradingVolume = tradingVolume;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	
	
	
}

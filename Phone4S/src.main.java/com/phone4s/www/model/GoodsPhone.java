package com.phone4s.www.model;

import java.sql.Date;

public class GoodsPhone {
	private Integer goodsPhoneId;
	private String goodsPhoneName;
	private String goodsPhoneModel;
	private String goodsPhoneSummary;
	private String goodsPhonePhoto;
	private Integer onlineUserId;
	private Date onlineDateTime;
	private Integer offlineUserId;
	private Date offlineDateTime;
	private Integer addUserId;
	private Date addDateTime;
	private Integer deleteUserId;
	private Date deleteDateTime;
	private Integer supplierUserId;
	
	
	
	public GoodsPhone(Integer goodsPhoneId, String goodsPhoneName,
			String goodsPhoneModel, String goodsPhoneSummary,
			String goodsPhonePhoto, Integer onlineUserId, Date onlineDateTime,
			Integer offlineUserId, Date offlineDateTime, Integer addUserId,
			Date addDateTime, Integer deleteUserId, Date deleteDateTime,
			Integer supplierUserId) {
		super();
		this.goodsPhoneId = goodsPhoneId;
		this.goodsPhoneName = goodsPhoneName;
		this.goodsPhoneModel = goodsPhoneModel;
		this.goodsPhoneSummary = goodsPhoneSummary;
		this.goodsPhonePhoto = goodsPhonePhoto;
		this.onlineUserId = onlineUserId;
		this.onlineDateTime = onlineDateTime;
		this.offlineUserId = offlineUserId;
		this.offlineDateTime = offlineDateTime;
		this.addUserId = addUserId;
		this.addDateTime = addDateTime;
		this.deleteUserId = deleteUserId;
		this.deleteDateTime = deleteDateTime;
		this.supplierUserId = supplierUserId;
	}
	
	
	
	public Integer getGoodsPhoneId() {
		return goodsPhoneId;
	}
	public void setGoodsPhoneId(Integer goodsPhoneId) {
		this.goodsPhoneId = goodsPhoneId;
	}
	public String getGoodsPhoneName() {
		return goodsPhoneName;
	}
	public void setGoodsPhoneName(String goodsPhoneName) {
		this.goodsPhoneName = goodsPhoneName;
	}
	public String getGoodsPhoneModel() {
		return goodsPhoneModel;
	}
	public void setGoodsPhoneModel(String goodsPhoneModel) {
		this.goodsPhoneModel = goodsPhoneModel;
	}
	public String getGoodsPhoneSummary() {
		return goodsPhoneSummary;
	}
	public void setGoodsPhoneSummary(String goodsPhoneSummary) {
		this.goodsPhoneSummary = goodsPhoneSummary;
	}
	public String getGoodsPhonePhoto() {
		return goodsPhonePhoto;
	}
	public void setGoodsPhonePhoto(String goodsPhonePhoto) {
		this.goodsPhonePhoto = goodsPhonePhoto;
	}
	public Integer getOnlineUserId() {
		return onlineUserId;
	}
	public void setOnlineUserId(Integer onlineUserId) {
		this.onlineUserId = onlineUserId;
	}
	public Date getOnlineDateTime() {
		return onlineDateTime;
	}
	public void setOnlineDateTime(Date onlineDateTime) {
		this.onlineDateTime = onlineDateTime;
	}
	public Integer getOfflineUserId() {
		return offlineUserId;
	}
	public void setOfflineUserId(Integer offlineUserId) {
		this.offlineUserId = offlineUserId;
	}
	public Date getOfflineDateTime() {
		return offlineDateTime;
	}
	public void setOfflineDateTime(Date offlineDateTime) {
		this.offlineDateTime = offlineDateTime;
	}
	public Integer getAddUserId() {
		return addUserId;
	}
	public void setAddUserId(Integer addUserId) {
		this.addUserId = addUserId;
	}
	public Date getAddDateTime() {
		return addDateTime;
	}
	public void setAddDateTime(Date addDateTime) {
		this.addDateTime = addDateTime;
	}
	public Integer getDeleteUserId() {
		return deleteUserId;
	}
	public void setDeleteUserId(Integer deleteUserId) {
		this.deleteUserId = deleteUserId;
	}
	public Date getDeleteDateTime() {
		return deleteDateTime;
	}
	public void setDeleteDateTime(Date deleteDateTime) {
		this.deleteDateTime = deleteDateTime;
	}
	public Integer getSupplierUserId() {
		return supplierUserId;
	}
	public void setSupplierUserId(Integer supplierUserId) {
		this.supplierUserId = supplierUserId;
	}

}

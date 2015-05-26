package com.phone4s.www.model;

public class RepairBussiness {
	private Integer id;
	private String name;
	private String bussinessDescription;
	private String logo;
	private String spreadImage;
	private String credit;
	private String createDate;
	private String updateDate;
	private String longitude;
	private String latitude;
	
	public RepairBussiness(Integer id, String name, String bussinessDescription,
			String logo, String spreadImage, String credit, String createDate,
			String updateDate, String longitude, String latitude) {
		super();
		this.id = id;
		this.name = name;
		this.bussinessDescription = bussinessDescription;
		this.logo = logo;
		this.spreadImage = spreadImage;
		this.credit = credit;
		this.createDate = createDate;
		this.updateDate = updateDate;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	
	




	public String getLongitude() {
		return longitude;
	}





	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}







	public String getLatitude() {
		return latitude;
	}




	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}




	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getBussinessDescription() {
		return bussinessDescription;
	}

	public void setBussinessDescription(String bussinessDescription) {
		this.bussinessDescription = bussinessDescription;
	}

	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getSpreadImage() {
		return spreadImage;
	}
	public void setSpreadImage(String spreadImage) {
		this.spreadImage = spreadImage;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
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

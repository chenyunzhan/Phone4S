package com.phone4s.www.model;


public class Cart {
	private Integer cartId;
	private User user;
	private Goods goods;
	private String number;
	private String createTime;
	public Cart(Integer cartId, User user, Goods goods, String number, String createTime) {
		super();
		this.cartId = cartId;
		this.user = user;
		this.goods = goods;
		this.number = number;
		this.createTime = createTime;
	}
	
	
	
	
	public Integer getCartId() {
		return cartId;
	}
	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	

}

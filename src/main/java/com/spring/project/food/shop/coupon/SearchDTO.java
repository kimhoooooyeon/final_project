package com.spring.project.food.shop.coupon;

public class SearchDTO {
	public Integer shop_num;
	public String coupon_name;
	public Integer getShop_num() {
		return shop_num;
	}
	public void setShop_num(Integer shop_num) {
		this.shop_num = shop_num;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	@Override
	public String toString() {
		return "SearchDTO [shop_num=" + shop_num + ", coupon_name=" + coupon_name + "]";
	}
	
	
	
}

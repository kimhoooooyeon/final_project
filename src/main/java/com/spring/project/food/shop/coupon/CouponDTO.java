package com.spring.project.food.shop.coupon;

public class CouponDTO {
	private Integer member_num;
	private Integer shop_num;
	private String coupon_num;
	private String coupon_name;
	private String discountrate;
	private String expiration_date;
	public Integer getMember_num() {
		return member_num;
	}
	public void setMember_num(Integer member_num) {
		this.member_num = member_num;
	}
	public Integer getShop_num() {
		return shop_num;
	}
	public void setShop_num(Integer shop_num) {
		this.shop_num = shop_num;
	}
	public String getCoupon_num() {
		return coupon_num;
	}
	public void setCoupon_num(String coupon_num) {
		this.coupon_num = coupon_num;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public String getDiscountrate() {
		return discountrate;
	}
	public void setDiscountrate(String discountrate) {
		this.discountrate = discountrate;
	}
	public String getExpiration_date() {
		return expiration_date;
	}
	public void setExpiration_date(String expiration_date) {
		this.expiration_date = expiration_date;
	}
	@Override
	public String toString() {
		return "CouponDTO [member_num=" + member_num + ", shop_num=" + shop_num + ", coupon_num=" + coupon_num
				+ ", coupon_name=" + coupon_name + ", discountrate=" + discountrate + ", expiration_date="
				+ expiration_date + "]";
	}
	
	
	
}

package com.spring.project.food.shop;

import java.util.Objects;

public class ShopLoginDTO {
	
	private String shop_id;
	private String shop_pw;
	private String shop_pwCheck;
	
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public String getShop_pw() {
		return shop_pw;
	}
	public void setShop_pw(String shop_pw) {
		this.shop_pw = shop_pw;
	}
	public String getShop_pwCheck() {
		return shop_pwCheck;
	}
	public void setShop_pwCheck(String shop_pwCheck) {
		this.shop_pwCheck = shop_pwCheck;
	}
	@Override
	public String toString() {
		return "ShopLoginDto [shop_id=" + shop_id + ", shop_pw=" + shop_pw + ", shop_pwCheck=" + shop_pwCheck + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(shop_id, shop_pw, shop_pwCheck);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ShopLoginDTO other = (ShopLoginDTO) obj;
		return Objects.equals(shop_id, other.shop_id) && Objects.equals(shop_pw, other.shop_pw)
				&& Objects.equals(shop_pwCheck, other.shop_pwCheck);
	}
	
	
}

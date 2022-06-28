package com.spring.project.food.shop;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class ShopDTO extends ShopLoginDTO {
	
	private Integer shop_num;
	private String owner_register_number;
	private String shop_id;
	private String owner_name;
	private String owner_phone;
	private String owner_email;
	private String shop_name;
	private String shop_tel;
	private String shop_zipcode;
	private String shop_address;
	private String shop_address_detail;
	private String category_num;
	private String shop_logo;
	private MultipartFile shopLogoImg;

	public Integer getShop_num() {
		return shop_num;
	}
	public void setShop_num(Integer shop_num) {
		this.shop_num = shop_num;
	}
	
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public void setShop_num(String shop_num) {
		
		this.shop_num = Integer.parseInt(shop_num);
	}
	
	public String getOwner_register_number() {
		return owner_register_number;
	}
	public void setOwner_register_number(String owner_register_number) {
		this.owner_register_number = owner_register_number;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getOwner_phone() {
		return owner_phone;
	}
	public void setOwner_phone(String owner_phone) {
		this.owner_phone = owner_phone;
	}
	public String getOwner_email() {
		return owner_email;
	}
	public void setOwner_email(String owner_email) {
		this.owner_email = owner_email;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_tel() {
		return shop_tel;
	}
	public void setShop_tel(String shop_tel) {
		this.shop_tel = shop_tel;
	}
	public String getShop_zipcode() {
		return shop_zipcode;
	}
	public void setShop_zipcode(String shop_zipcode) {
		this.shop_zipcode = shop_zipcode;
	}
	public String getShop_address() {
		return shop_address;
	}
	public void setShop_address(String shop_address) {
		this.shop_address = shop_address;
	}
	public String getShop_address_detail() {
		return shop_address_detail;
	}
	public void setShop_address_detail(String shop_address_detail) {
		this.shop_address_detail = shop_address_detail;
	}
	public String getCategory_num() {
		return category_num;
	}
	public void setCategory_num(String category_num) {
		this.category_num = category_num;
	}
	public String getShop_logo() {
		return shop_logo;
	}
	public void setShop_logo(String shop_logo) {
		this.shop_logo = shop_logo;
	}
	public MultipartFile getShopLogoImg() {
		return shopLogoImg;
	}
	public void setShopLogoImg(MultipartFile shopLogoImg) {
		this.shopLogoImg = shopLogoImg;
	}
	@Override
	public String toString() {
		return "ShopDTO [shop_num=" + shop_num + ", owner_register_number=" + owner_register_number + ", owner_name="
				+ owner_name + ", owner_phone=" + owner_phone + ", owner_email=" + owner_email + ", shop_name="
				+ shop_name + ", shop_tel=" + shop_tel + ", shop_zipcode=" + shop_zipcode + ", shop_address="
				+ shop_address + ", shop_address_detail=" + shop_address_detail + ", category_num=" + category_num
				+ ", shop_logo=" + shop_logo + ", shopLogoImg=" + shopLogoImg + "]";
	}
	
}

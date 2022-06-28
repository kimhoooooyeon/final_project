package com.spring.project.food.shop.menu;

import java.util.Objects;

import org.springframework.web.multipart.MultipartFile;

public class MenuDTO {
	private String shop_id;
	private String menu_coder;
	private Integer shop_num;
	private String menu_name;
	private String menu_price;
	private String category_num;
	private String sale_rate;
	private String saling_check;
	private String recommendation;
	private String menu_explanation;
	private String origin_code;
	private MultipartFile menuFileName;
	private String menu_filename;

	

//	 비동기 통신시 JSON파일에서 String형으로 넘어오는 값을 사용하기위해 자동으로 형변환 해주는 getter/setter 
	
	public void setShop_num(String shop_num) {
		Integer num = Integer.parseInt(shop_num);
		this.shop_num = num;
	}
	
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public String getMenu_coder() {
		return menu_coder;
	}
	public void setMenu_coder(String menu_coder) {
		this.menu_coder = menu_coder;
	}

	public Integer getShop_num() {
		return shop_num;
	}
	public void setShop_num(Integer shop_num) {
		this.shop_num = shop_num;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	
	public String getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(String menu_price) {
		this.menu_price = menu_price;
	}
	
	public String getCategory_num() {
		return category_num;
	}
	public void setCategory_num(String category_num) {
		this.category_num = category_num;
	}
	public String getSale_rate() {
		return sale_rate;
	}
	public void setSale_rate(String sale_rate) {
		this.sale_rate = sale_rate;
	}
	public String getSaling_check() {
		return saling_check;
	}
	public void setSaling_check(String saling_check) {
		this.saling_check = saling_check;
	}
	public String getRecommendation() {
		return recommendation;
	}
	public void setRecommendation(String recommendation) {
		this.recommendation = recommendation;
	}
	public String getMenu_explanation() {
		return menu_explanation;
	}
	public void setMenu_explanation(String menu_explanation) {
		this.menu_explanation = menu_explanation;
	}
	public String getMenu_filename() {
		return menu_filename;
	}
	public void setMenu_filename(String menu_filename) {
		this.menu_filename = menu_filename;
	}
	public String getOrigin_code() {
		return origin_code;
	}
	public void setOrigin_code(String origin_code) {
		this.origin_code = origin_code;
	}

	public MultipartFile getMenuFileName() {
		return menuFileName;
	}

	public void setMenuFileName(MultipartFile menuFileName) {
		this.menuFileName = menuFileName;
	}

	@Override
	public String toString() {
		return "MenuDTO [shop_id=" + shop_id + ", menu_coder=" + menu_coder + ", shop_num=" + shop_num + ", menu_name="
				+ menu_name + ", menu_price=" + menu_price + ", category_num=" + category_num + ", sale_rate="
				+ sale_rate + ", saling_check=" + saling_check + ", recommendation=" + recommendation
				+ ", menu_explanation=" + menu_explanation + ", menu_filename=" + menu_filename + ", origin_code="
				+ origin_code + ", menuFileName=" + menuFileName + "]";
	}
}

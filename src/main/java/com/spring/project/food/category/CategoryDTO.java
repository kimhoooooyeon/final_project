package com.spring.project.food.category;

public class CategoryDTO {
	
	private int shop_num;
	private String category_num;
	private String category_name;
	
	
	
	public int getShop_num() {
		return shop_num;
	}
	public void setShop_num(int shop_num) {
		this.shop_num = shop_num;
	}
	public String getCategory_num() {
		return category_num;
	}
	public void setCategory_num(String category_num) {
		this.category_num = category_num;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	@Override
	public String toString() {
		return "CategoryDTO [shop_num=" + shop_num + ", category_num=" + category_num + ", category_name="
				+ category_name + "]";
	}
	
	
}

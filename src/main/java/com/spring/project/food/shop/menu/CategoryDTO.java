package com.spring.project.food.shop.menu;

public class CategoryDTO {
	public String category_num;
	public Integer shop_num;
	public String category_name;
	
	
	// 비동기 통신시 JSON파일에서 String형으로 넘어오는 값을 사용하기위해 자동으로 형변환 해주는 getter/setter 
	public String getShop_num() {
		String shop_num = this.shop_num.toString();
		return shop_num;
	}
	public void setShop_num(String shop_num) {
		Integer num = Integer.parseInt(shop_num);
		this.shop_num = num;
	}
	
	public void setShop_num(Integer shop_num) {
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
		return "CategoryDto [category_num=" + category_num + ", shop_num=" + shop_num + ", category_name="
				+ category_name + "]";
	}
	
	
	
}

package com.spring.project.food.shop.menu;

public class SearchDTO {

	private Integer shop_num;
	private String kinds;
	private String searchData;
	private String category_num;
	private String sale_rate;
	private String recommendation;
	private String saling_check;
	
	
	// 비동기 통신시 JSON파일에서 String형으로 넘어오는 값을 사용하기위해 자동으로 형변환 해주는 getter/setter 
//	public String getShop_num() {
//		String shop_num = this.shop_num.toString();
//		return shop_num;
//	}
	public void setShop_num(String shop_num) {
		Integer num = Integer.parseInt(shop_num);
		this.shop_num = num;
	}
	
	


	public Integer getShop_num() {
		return shop_num;
	}




	public void setShop_num(Integer shop_num) {
		this.shop_num = shop_num;
	}
	public String getKinds() {
		return kinds;
	}


	public void setKinds(String kinds) {
		this.kinds = kinds;
	}


	public String getSearchData() {
		return searchData;
	}


	public void setSearchData(String searchData) {
		this.searchData = searchData;
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


	public String getRecommendation() {
		return recommendation;
	}


	public void setRecommendation(String recommendation) {
		this.recommendation = recommendation;
	}


	public String getSaling_check() {
		return saling_check;
	}


	public void setSaling_check(String saling_check) {
		this.saling_check = saling_check;
	}
	@Override
	public String toString() {
		return "SearchDto [shop_num=" + shop_num + ", kinds=" + kinds + ", searchData=" + searchData + ", category_num="
				+ category_num + ", sale_rate=" + sale_rate + ", recommendation=" + recommendation + ", saling_check="
				+ saling_check + "]";
	}


	
}

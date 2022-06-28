package com.spring.project.food.shop.order;

import java.sql.Date;

import org.apache.commons.lang.time.DateFormatUtils;

public class OrderSearchDTO {

	private Integer shop_num;
	private String kinds;
	private String searchData;
//	private Date order_start_date;
//	private Date order_end_date;
	private String order_start_date;
	private String order_end_date;
	private String menu_name;
	private String category_num;
	private String progression;
	private String order;
	
	
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
	public String getOrder_start_date() {
		return order_start_date;
	}
	public void setOrder_start_date(String order_start_date) {
		this.order_start_date = order_start_date;
	}
	public String getOrder_end_date() {
		return order_end_date;
	}
	public void setOrder_end_date(String order_end_date) {
		this.order_end_date = order_end_date;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getCategory_num() {
		return category_num;
	}
	public void setCategory_num(String category_num) {
		this.category_num = category_num;
	}
	public String getProgression() {
		return progression;
	}
	public void setProgression(String progression) {
		this.progression = progression;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "OrderSearchDTO [shop_num=" + shop_num + ", kinds=" + kinds + ", searchData=" + searchData
				+ ", order_start_date=" + order_start_date + ", order_end_date=" + order_end_date + ", menu_name="
				+ menu_name + ", category_num=" + category_num + ", progression=" + progression + ", order=" + order
				+ "]";
	}
	
	
}

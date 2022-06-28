package com.spring.project.food.shop.income;

import java.sql.Date;

public class IncomeDTO {
	private Integer shop_num;
	private Date day;
	private Integer orders;
	private String delivery_cost ;
	private Integer price;
	public Integer getShop_num() {
		return shop_num;
	}
	public void setShop_num(Integer shop_num) {
		this.shop_num = shop_num;
	}
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public Integer getOrders() {
		return orders;
	}
	public void setOrders(Integer orders) {
		this.orders = orders;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getDelivery_cost() {
		return delivery_cost;
	}
	public void setDelivery_cost(String delivery_cost) {
		this.delivery_cost = delivery_cost;
	}
	@Override
	public String toString() {
		return "IncomeDTO [shop_num=" + shop_num + ", day=" + day + ", orders=" + orders + ", delivery_cost="
				+ delivery_cost + ", price=" + price + "]";
	}
	
	
}

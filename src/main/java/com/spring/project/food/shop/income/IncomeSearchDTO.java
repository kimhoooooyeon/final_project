package com.spring.project.food.shop.income;

import java.sql.Date;

public class IncomeSearchDTO {
	private Integer shop_num;
	private Integer period; 
	private String day;
	private String daily;
	private String mothly;
	public Integer getShop_num() {
		return shop_num;
	}
	public void setShop_num(Integer shop_num) {
		this.shop_num = shop_num;
	}
	public Integer getPeriod() {
		return period;
	}
	public void setPeriod(Integer period) {
		this.period = period;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getDaily() {
		return daily;
	}
	public void setDaily(String daily) {
		this.daily = daily;
	}
	public String getMothly() {
		return mothly;
	}
	public void setMothly(String mothly) {
		this.mothly = mothly;
	}
	@Override
	public String toString() {
		return "IncomeSearchDTO [shop_num=" + shop_num + ", period=" + period + ", day=" + day + ", daily=" + daily
				+ ", mothly=" + mothly + "]";
	}

}

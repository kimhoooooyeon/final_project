package com.spring.project.food.order;

public class OrderDetailDTO {
	private int order_num;
	private String order_menu;
	private String menu_count;
	
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String getOrder_menu() {
		return order_menu;
	}
	public void setOrder_menu(String order_menu) {
		this.order_menu = order_menu;
	}
	public String getMenu_count() {
		return menu_count;
	}
	public void setMenu_count(String menu_count) {
		this.menu_count = menu_count;
	}
	@Override
	public String toString() {
		return "OrderDetailDTO [order_num=" + order_num + ", order_menu=" + order_menu + ", menu_count=" + menu_count
				+ "]";
	}
	
	
	

}

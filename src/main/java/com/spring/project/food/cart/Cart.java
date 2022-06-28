package com.spring.project.food.cart;

import java.util.Objects;
public class Cart {
	private String shop_id;
	private String menu_name;
	private Integer menu_price;
	private Integer count=0;
	private Integer total_price;
	
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public Integer getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(Integer menu_price) {
		this.menu_price = menu_price;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count += count;
	}
	public Integer getTotal_price() {
		return total_price;
	}
	public void setTotal_price(Integer total_price) {
		this.total_price = total_price;
	}
	
	@Override
	public String toString() {
		return "Cart [shop_id=" + shop_id + ", menu_name=" + menu_name + ", menu_price=" + menu_price + ", count="
				+ count + ", total_price=" + total_price + "]";
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cart other = (Cart) obj;
		return Objects.equals(menu_name, other.menu_name) && Objects.equals(shop_id, other.shop_id);
	}
	
	
	
}
package com.spring.project.food.shop.order;

public class OrderDTO {
	
	//더해야할것 메뉴명/주문자/수량
	private Integer order_num;
	private Integer member_num;
	private Integer shop_num;
	private Integer total_price;
	private String menu_name;
	private String name;
	private Integer count;
	private String delivery_cost;
	private String day;
	private String progression;
	private String payment_option;
	private String request;
	private String order_zipcode;
	private String order_address;
	private String order_address_detail;
	private String imp_uid;
	
	public Integer getOrder_num() {
		return order_num;
	}
	public void setOrder_num(Integer order_num) {
		this.order_num = order_num;
	}
	public Integer getMember_num() {
		return member_num;
	}
	public void setMember_num(Integer member_num) {
		this.member_num = member_num;
	}
	public Integer getShop_num() {
		return shop_num;
	}
	public void setShop_num(Integer shop_num) {
		this.shop_num = shop_num;
	}
	public Integer getTotal_price() {
		return total_price;
	}
	public void setTotal_price(Integer total_price) {
		this.total_price = total_price;
	}
	public String getDelivery_cost() {
		return delivery_cost;
	}
	public void setDelivery_cost(String delivery_cost) {
		this.delivery_cost = delivery_cost;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getProgression() {
		return progression;
	}
	public void setProgression(String progression) {
		this.progression = progression;
	}
	public String getPayment_option() {
		return payment_option;
	}
	public void setPayment_option(String payment_option) {
		this.payment_option = payment_option;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getOrder_zipcode() {
		return order_zipcode;
	}
	public void setOrder_zipcode(String order_zipcode) {
		this.order_zipcode = order_zipcode;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public String getOrder_address_detail() {
		return order_address_detail;
	}
	public void setOrder_address_detail(String order_address_detail) {
		this.order_address_detail = order_address_detail;
	}
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "OrderDTO [order_num=" + order_num + ", member_num=" + member_num + ", shop_num=" + shop_num
				+ ", total_price=" + total_price + ", menu_name=" + menu_name + ", name=" + name + ", count=" + count
				+ ", delivery_cost=" + delivery_cost + ", day=" + day + ", progression=" + progression
				+ ", payment_option=" + payment_option + ", request=" + request + ", order_zipcode=" + order_zipcode
				+ ", order_address=" + order_address + ", order_address_detail=" + order_address_detail + ", imp_uid="
				+ imp_uid + "]";
	}
	
	
}

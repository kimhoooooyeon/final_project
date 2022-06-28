package com.spring.project.food.order;

public class OrderDTO{
	private int member_num;
	private Integer shop_num;
	private int order_num;
	private int total_price;
	private int delivery_cost;
	private String day;
	private String progression;
	private String request;
	private String order_zipcode;
	private String order_addres;
	private String order_addres_detail;
	private String payment_otion;
	private String order_menu;
	private String menu_count;
	private int review_Check;
	private String shop_name;
	private String shop_id;
	private String menu_name;

	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public Integer getShop_num() {
		return shop_num;
	}
	public void setShop_num(Integer shop_num) {
		this.shop_num = shop_num;
	}
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public int getDelivery_cost() {
		return delivery_cost;
	}
	public void setDelivery_cost(int delivery_cost) {
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
	public String getOrder_addres() {
		return order_addres;
	}
	public void setOrder_addres(String order_addres) {
		this.order_addres = order_addres;
	}
	public String getOrder_addres_detail() {
		return order_addres_detail;
	}
	public void setOrder_addres_detail(String order_addres_detail) {
		this.order_addres_detail = order_addres_detail;
	}
	public String getPayment_otion() {
		return payment_otion;
	}
	public void setPayment_otion(String payment_otion) {
		this.payment_otion = payment_otion;
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
	public int getReview_Check() {
		return review_Check;
	}
	public void setReview_Check(int review_Check) {
		this.review_Check = review_Check;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
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
	@Override
	public String toString() {
		return "OrderDTO [member_num=" + member_num + ", shop_num=" + shop_num + ", order_num=" + order_num
				+ ", total_price=" + total_price + ", delivery_cost=" + delivery_cost + ", day=" + day
				+ ", progression=" + progression + ", request=" + request + ", order_zipcode=" + order_zipcode
				+ ", order_addres=" + order_addres + ", order_addres_detail=" + order_addres_detail + ", payment_otion="
				+ payment_otion + ", order_menu=" + order_menu + ", menu_count=" + menu_count + ", review_Check="
				+ review_Check + ", shop_name=" + shop_name + ", shop_id=" + shop_id + ", menu_name=" + menu_name + "]";
	}

	


	
	
	
	
	
}


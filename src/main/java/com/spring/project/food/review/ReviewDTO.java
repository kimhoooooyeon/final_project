package com.spring.project.food.review;

public class ReviewDTO {
	private int member_num;
	private int shop_num;
	private int order_num;
	private String review_content;
	private Integer evalute;
	private String upload_filename;
	private String registration_day;
	private int cnt;
	private String member_id;
	private String order_menu;
	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public int getShop_num() {
		return shop_num;
	}
	public void setShop_num(int shop_num) {
		this.shop_num = shop_num;
	}
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Integer getEvalute() {
		return evalute;
	}
	public void setEvalute(Integer evalute) {
		this.evalute = evalute;
	}
	public String getUpload_filename() {
		return upload_filename;
	}
	public void setUpload_filename(String upload_filename) {
		this.upload_filename = upload_filename;
	}
	public String getRegistration_day() {
		return registration_day;
	}
	public void setRegistration_day(String registration_day) {
		this.registration_day = registration_day;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getOrder_menu() {
		return order_menu;
	}
	public void setOrder_menu(String order_menu) {
		this.order_menu = order_menu;
	}
	@Override
	public String toString() {
		return "ReviewDTO [member_num=" + member_num + ", shop_num=" + shop_num + ", order_num=" + order_num
				+ ", review_content=" + review_content + ", evalute=" + evalute + ", upload_filename=" + upload_filename
				+ ", registration_day=" + registration_day + ", cnt=" + cnt + ", member_id=" + member_id
				+ ", order_menu=" + order_menu + "]";
	}

	
	

}

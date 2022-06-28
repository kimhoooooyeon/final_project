package com.spring.project.food.member;


/*
create table p_member(
member_id varchar2(20) primary key,
pw varchar2(150),
name varchar2(20),
zipcode  varchar2(10),
address varchar2(200),
phone varchar2(30),
email varchar2(40),
birth varchar2(20)
);
 */
public class MemberDTO {
	private Integer member_num;
	private String member_id;
	private String pw;
	private String name;
	private String zipcode;
	private String address;
	private String address2;
	private String phone;
	private String email;
	public Integer getMember_num() {
		return member_num;
	}
	public void setMember_num(Integer member_num) {
		this.member_num = member_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "MemberDTO [member_num=" + member_num + ", member_id=" + member_id + ", pw=" + pw + ", name=" + name
				+ ", zipcode=" + zipcode + ", address=" + address + ", address2=" + address2 + ", phone=" + phone
				+ ", email=" + email + "]";
	}
	
	
	
	
	

}

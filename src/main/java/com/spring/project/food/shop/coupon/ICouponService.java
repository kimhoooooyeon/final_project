package com.spring.project.food.shop.coupon;

import java.util.ArrayList;
import java.util.Map;

public interface ICouponService {
	
	// 쿠폰 서치
	ArrayList<CouponDTO> couponSearch(SearchDTO search);
//	public ArrayList<MenuDto> menuSearch(String title);
	// 모든 메뉴 불러오기
	public ArrayList<CouponDTO> couponList();
	// 쿠폰 등록
	public String couponRegister(CouponDTO coupon);
	// 쿠폰 수정
	public String couponUpdate(CouponDTO coupon);
	// 쿠폰 삭제
	public String couponDelete(String member_id);
	
	//쿠폰번호 생성
	public String couponNumCreate();
	
}

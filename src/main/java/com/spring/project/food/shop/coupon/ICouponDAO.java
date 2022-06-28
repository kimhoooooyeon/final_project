package com.spring.project.food.shop.coupon;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.spring.project.food.shop.menu.CategoryDTO;

@Repository
public interface ICouponDAO {
	// 쿠폰 검색
	ArrayList<CouponDTO> couponSearch(SearchDTO search);
	// 쿠폰 전부 불러오기
	ArrayList<CouponDTO> couponList(Integer shop_num);
	// 쿠폰 등록
	int couponRegister(CouponDTO coupon);
	// 쿠폰 수정
	int couponUpdate(CouponDTO coupon);
	// 쿠폰 삭제
	int couponDelete(String menu_coder);
	// 카테고리 불러오기
	ArrayList<CouponDTO> categoryLoad(Integer shop_num);
}

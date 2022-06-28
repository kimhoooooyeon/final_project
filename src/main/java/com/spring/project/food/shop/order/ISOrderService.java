package com.spring.project.food.shop.order;

import java.util.ArrayList;

import com.spring.project.food.shop.menu.CategoryDTO;

public interface ISOrderService {
	
	// 주문검색
	ArrayList<OrderDTO> orderSearch(OrderSearchDTO search);
//	public ArrayList<MenuDto> menuSearch(String title);
	// 모든 메뉴 불러오기
	public ArrayList<OrderDTO> orderList();
	// 카테고리 목록불러오기
	ArrayList<CategoryDTO> categoryLoad();
	String orderUpdate(OrderDTO order);
	
}

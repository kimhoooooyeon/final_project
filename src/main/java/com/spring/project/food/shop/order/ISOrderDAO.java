package com.spring.project.food.shop.order;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.spring.project.food.shop.menu.CategoryDTO;

@Repository
public interface ISOrderDAO {
	// 주문검색
	ArrayList<OrderDTO> orderSearch(OrderSearchDTO search);
	// 주문불러오기
	ArrayList<OrderDTO> orderList(Integer shop_num);
	// 메뉴등록
	int menuInsert(OrderDTO menu);
	// 메뉴수정
	int menuUpdate(OrderDTO menu);
	// 메뉴삭제s
	int menuDelete(String menu_coder);
	// 카테고리 불러오기
	ArrayList<CategoryDTO> categoryLoad(Integer shop_num);
}

package com.spring.project.food.shop.menu;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public interface IMenuDAO {
	// 메뉴검색
	ArrayList<MenuDTO> menuSearch(SearchDTO search);
	// 메뉴 전부불러오기
	ArrayList<MenuDTO> menuList(Integer shop_num);
	// 메뉴등록
	int menuInsert(MenuDTO menu);
	// 메뉴수정
	int menuUpdate(MenuDTO menu);
	// 메뉴삭제s
	int menuDelete(String menu_coder);
	// 카테고리 등록
	int categoryInsert(CategoryDTO category);
	// 카테고리 수정
	int categoryUpdate(CategoryDTO category);
	// 카테고리 삭제
	int categoryDelete(Integer category_num);
	// 카테고리 불러오기
	ArrayList<CategoryDTO> categoryLoad(Integer shop_num);
}

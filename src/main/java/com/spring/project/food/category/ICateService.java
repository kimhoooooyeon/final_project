package com.spring.project.food.category;

import java.util.ArrayList;

import com.spring.project.food.shop.ShopDTO;
import com.spring.project.food.shop.menu.MenuDTO;

public interface ICateService {
	
	ArrayList<ShopDTO> list(String category_num);

	ArrayList<MenuDTO> selectShop(String shop_id);
	
	ArrayList<MenuDTO> selectMenu(String menu_name,String shop_id);

	ArrayList<CategoryDTO> selectCate(String shop_id);


}

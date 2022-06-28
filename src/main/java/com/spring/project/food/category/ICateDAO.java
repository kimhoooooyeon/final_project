package com.spring.project.food.category;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.spring.project.food.shop.ShopDTO;
import com.spring.project.food.shop.menu.MenuDTO;

@Repository
public interface ICateDAO {
	
	ArrayList<ShopDTO> list(String category_num);
	
	ArrayList<MenuDTO> mList(String shop_id);

	ArrayList<MenuDTO> oList(@Param("mn") String menu_name,@Param("si") String shop_id);

	ArrayList<ShopDTO> sList(String category_num);

	ArrayList<CategoryDTO> menuCate(String shop_id);


}

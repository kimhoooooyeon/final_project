package com.spring.project.food.shop;

import org.springframework.stereotype.Repository;

@Repository
public interface IShopDAO {

	int insert(ShopDTO shop);
	ShopDTO selectOne(String id);
	String selectPw(String id);
	int selectId(String shop_id);
	int selectOrn(String owner_register_number);

}

package com.spring.project.food.cart;

public class FoodPriceCalc {
	
	public static int foodPriceCalc(Cart cart) {
		int foodPrice = cart.getMenu_price()* cart.getCount();
		
		return foodPrice;
	}

}
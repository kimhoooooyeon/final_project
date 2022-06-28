package com.spring.project.food.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class CartList {
	private String shop_id;
	int cartTotal;
	
	List<Cart> cart;

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public int getCartTotal() {
		return cartTotal;
	}

	public void setCartTotal(int cartTotal) {
		this.cartTotal = cartTotal;
	}

	public List<Cart> getCart() {
		return cart;
	}

	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}

	@Override
	public String toString() {
		return "CartList [shop_id=" + shop_id + ", cartTotal=" + cartTotal + ", cart=" + cart + "]";
	}

	public CartList(String shop_id, int cartTotal, List<Cart> cart) {
		super();
		this.shop_id = shop_id;
		this.cartTotal = cartTotal;
		this.cart = cart;
	}
	
	

}
	

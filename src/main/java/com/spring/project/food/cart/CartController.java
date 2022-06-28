package com.spring.project.food.cart;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CartController {
	public FoodPriceCalc priceCal;
	// 주문표에 추가눌럿을시
	@ResponseBody
	@PostMapping("/cartadd")
	public ArrayList<Cart> addCart(@RequestBody Cart cart, HttpSession session) {
		System.out.println("받은값 : " + cart);
		
		// 카드가 비었을경우
		if (session.getAttribute("cartList") == null) {
			System.out.println("카트가 비어있습니다.");

			ArrayList<Cart> cartList = new ArrayList<Cart>();
			int total=priceCal.foodPriceCalc(cart);
			cart.setTotal_price(total);
			cartList.add(cart);
			// 총금액 계산
			System.out.println("카트 리스트 = "+cartList);
			session.setAttribute("cartList", cartList);
			
			Integer totalPrice=0;
			return cartList;
			
		}
		// 카트가 안비었을경우 
		// 1. 메뉴가 같다 = 수량을 증가
		// 2. 메뉴가 다르다 추가
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");
		System.out.println("카트 수정");
		for (Cart c : cartList) {
			System.out.println("카트 수정 포문" + c);
			System.out.println("cart:" +cart);
			if (c.equals(cart)){
				c.setCount(cart.getCount());
				int oldTotal = c.getTotal_price();
				int total=priceCal.foodPriceCalc(cart);
				c.setTotal_price(oldTotal+total);
				session.setAttribute("cartList", cartList);
				return cartList;
			}
			cart.setTotal_price(cart.getMenu_price() * cart.getCount());
	
			System.out.println("카트에 메뉴가 다를경우");
			System.out.println("토탈 : " + cart.getTotal_price());
	
		}
		System.out.println("추가할 카트" + cart);
		cartList.add(cart);
		session.setAttribute("cartList", cartList);
        System.out.println("cartList = " + cartList);

		Integer total=0;
		return cartList;
	}
	// 카트보여주기
	@ResponseBody
	@GetMapping("/cartList")
	public CartList cartList(HttpSession session) {
		System.out.println("cartlist 요청");
		CartList cartList = (CartList) session.getAttribute("cartList");
		if (cartList != null) {
			System.out.println(cartList);
			return cartList;
		}
		return null;
	}
	


 
}

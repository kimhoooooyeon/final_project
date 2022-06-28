package com.spring.project.food.shop.order;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.project.food.shop.menu.CategoryDTO;
import com.spring.project.food.shop.menu.MenuDTO;

@Controller
@RequestMapping("/shop/order")
public class SOrderController {
	
	@Autowired private SOrderService orderSvc;
	String emptymsg="값을 입력해주세요.";
	
	// 주문검색 사이트
	@RequestMapping("/home")
	public String home(Model model) {
		ArrayList<CategoryDTO> categorylist = orderSvc.categoryLoad();
		model.addAttribute("categorylist", categorylist);
		return "shop/order/shop_order";
	}
	
	// 주문검색
	@PostMapping("/search")
	public String orderSearch(Model model, OrderSearchDTO search) {
		String msg;
		// 테스트 로직
		System.out.println("orderSearch컨트롤러 실행");
		System.out.println("search : " + search);
		
		// 값을 입력했는지 확인
		if (search == null ) {
			msg = emptymsg;
		}
		
		// 값을 입력했을경우 로직 실행
		ArrayList<OrderDTO> orderlist = new ArrayList<OrderDTO>();
		orderlist = orderSvc.orderSearch(search);
		ArrayList<CategoryDTO> categorylist = orderSvc.categoryLoad();
		model.addAttribute("categorylist", categorylist);
		model.addAttribute("orderlist", orderlist);
		System.out.println("컨트롤로가 받은 결과 : "+orderlist);
		
		return "shop/order/shop_order";
	}
	// 메뉴수정
	@PostMapping(value="/update", produces="application/json; charset=utf-8")
	@ResponseBody
	public String orderUpdate(@RequestBody OrderDTO order, Model model) {
		System.out.println("orderUpdatePost실행");
		System.out.println(order);
		
		String msg="";
		
		if (order == null) {
			msg ="필수입력정보를 다 입력해주세요.";
			return msg;
		}
		
		msg = orderSvc.orderUpdate(order);
		
		return msg;
	}
	//메뉴명 반환해줌
	public String searchMenu() {
		String menu="";
		return menu;
	}
	//메뉴 카테고리값 반환해줌
	public String searchCategory() {
		String category="";
		return category;
	}
}

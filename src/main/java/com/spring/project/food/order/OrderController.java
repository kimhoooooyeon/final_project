package com.spring.project.food.order;

import java.util.ArrayList;
import java.util.Locale;

import javax.annotation.processing.SupportedSourceVersion;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.project.food.cart.Cart;
import com.spring.project.food.cart.CartList;
import com.spring.project.food.review.ReviewDTO;

@Controller
public class OrderController {
	
	@Autowired OrderService orderService;
	
	@RequestMapping(value = "orderApplication")
	public String orderAppliction(OrderDTO order,Cart CartList, HttpSession session,String shop_id,String shop_num,
			Model model, String total_price, String count) {
		System.out.println("CartList : " +CartList);
		
		System.out.println(count);
		order.setMenu_count(count);
		String totalC[] = count.split(",");
		String totalCount = "";
		for(int i = 0; i < totalC.length; i++) {
			totalCount += (totalC[i]);
		}
		
		
		String total[] = total_price.split(",");
		int totalP = 0;
		for(int i = 0; i < total.length; i++) {
			totalP += Integer.parseInt(total[i]);
		}
		order.setTotal_price(totalP);
		
		//member_num 객체 인트변환 
		Integer member_num =Integer.parseInt(session.getAttribute("member_num").toString());
		order.setMember_num(member_num);
		
		model.addAttribute("order", order);
		model.addAttribute("CartList", CartList);
		model.addAttribute("shop_id", shop_id);
		System.out.println(order);
		
		return "/order/orderCheck";
	}
	
	@RequestMapping("orderlist")
	public String orderlist(HttpSession session,OrderDTO order, Model model,Cart CartList,OrderDetailDTO orderdetail ) {
		System.out.println("결제");
		System.out.println(order);
		
		  String or_menu[] = order.getMenu_name().split(",");
		  String or_count[] = order.getMenu_count().split(",");
		  System.out.println(or_menu.length);
		  String order_menu = order.getMenu_name();
		  
		  order.setOrder_menu(order_menu);
		  
		  int totoal = order.getTotal_price() + order.getDelivery_cost();
		  
		  String count = order.getMenu_count();
		  System.out.println(count);
		
		  String msg = orderService.orderSend(order);
		  int orderN = orderService.selectOrernum();
		  if(msg == "주문완료") {
			
			for(int i = 0 ; i < or_menu.length; i ++) {
				  System.out.println("메뉴이름 : " + or_menu[i] + "갯수 : " + or_count[i]);
				  orderdetail.setOrder_num(orderN);
				  orderdetail.setMenu_count(or_count[i]);
				  orderdetail.setOrder_menu(or_menu[i]);
				  orderService.orderdetailSend(orderdetail);
			  }
			 
			
			
			System.out.println("오더디테일까지 등록완");
			  
		  }
		  ArrayList<OrderDetailDTO> detail = orderService.orderReturn(orderN);
		  System.out.println(totoal);
		  model.addAttribute("detail", detail);
		  model.addAttribute("totoal", totoal);
		  System.out.println(msg);
		  session.removeAttribute("cartList");
		 
		return "/order/orderlist";
	}


}

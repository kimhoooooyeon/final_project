package com.spring.project.food.shop.order;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.project.food.shop.menu.CategoryDTO;

@Service
public class SOrderService implements ISOrderService {

	@Autowired(required = false) private ISOrderDAO orderDao; 
	@Autowired HttpSession session;
	
	@Override
	public ArrayList<OrderDTO> orderSearch(OrderSearchDTO search) {
		System.out.println("orderSearch서비스실행");
		
//		Integer shop_num = (Integer) session.getAttribute("shop_num");
		Integer shop_num = 1;
		search.setShop_num(shop_num);
		System.out.println("서치함수에서 보내줄 상점넘버값은 : "  + shop_num);
		ArrayList<OrderDTO> orderlist = orderDao.orderSearch(search);
		System.out.println("db결과 : "+orderlist);
		
		return orderlist;
	}


	@Override
	public String orderUpdate(OrderDTO order) {
		System.out.println("orderUpdate서비스실행");
		String msg;
		int result = orderDao.menuUpdate(order);
		
		if (result == 1) {
			msg="주문수정이 완료되었습니다.";
		}
		else {
			msg="수정실패, 관리자에게 문의해주세요";
		} 
		
		return msg;
	}

	@Override
	public ArrayList<CategoryDTO> categoryLoad() {
		System.out.println("categoryLoad()함수 수행");
//		Integer shop_num=(Integer) session.getAttribute("shop_num");
		// 테스트코드
		Integer shop_num = 1;
		ArrayList<CategoryDTO> list = orderDao.categoryLoad(shop_num);
		//결과물 확인하기위한 스텁코드
		System.out.println("입력됬던 shop_num : " + shop_num);
		System.out.println("list의 길이는 :" + list.size());
		for (int i = 0; i <= list.size(); i++) {
			System.out.println("반환값은 : " + list);
			
		}
		return list;
	}


	@Override
	public ArrayList<OrderDTO> orderList() {
		// TODO Auto-generated method stub
		return null;
	}

}

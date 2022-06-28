package com.spring.project.food.order;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService implements IOrderService {

	@Autowired OrderDAO orderDao;
	
	@Override
	public ArrayList<OrderDTO> hiList(String member_id) {
		ArrayList<OrderDTO> hiList = orderDao.hiList(member_id);
		
		for(OrderDTO h: hiList) {
			System.out.println(h);
		}
		return hiList;
	}
	@Override
	public String orderSend(OrderDTO order) {
		orderDao.insertOrder(order);
		return "주문완료";
		
	}
	@Override
	public int selectOrernum() {
		int orderN = orderDao.selectordernum();
		return orderN;
		
	}
//	@Override
//	public void orderdetailSend(int orderN, String count, String order_menu) {
//		orderDao.insertOrerdetail(orderN,count,order_menu);
//		
//	}
	@Override
	public void orderdetailSend(OrderDetailDTO orderdetail) {
		orderDao.insertOrerdetail(orderdetail);
		
	}
	@Override
	public ArrayList<OrderDetailDTO> orderReturn(int orderN) {
		ArrayList<OrderDetailDTO> orderReturn = orderDao.orderReturn(orderN);
		return orderReturn;
	}


}

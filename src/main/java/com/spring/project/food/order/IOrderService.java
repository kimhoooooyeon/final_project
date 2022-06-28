package com.spring.project.food.order;

import java.util.ArrayList;

public interface IOrderService {
	
	ArrayList<OrderDTO> hiList(String member_id);

	String orderSend(OrderDTO order);

	int selectOrernum();

//	void orderdetailSend(int orderN, String count, String order_menu);

	void orderdetailSend(OrderDetailDTO orderdetail);

	ArrayList<OrderDetailDTO> orderReturn(int orderN);


}

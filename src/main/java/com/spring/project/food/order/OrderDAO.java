package com.spring.project.food.order;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDAO {

	ArrayList<OrderDTO> hiList(String member_id);

	void insertOrder(OrderDTO order);

	int selectordernum();

//	void insertOrerdetail(@Param("orn")int orderN,@Param("cnt")String count,@Param("om")String order_menu);

	void insertOrerdetail(OrderDetailDTO orderdetail);

	ArrayList<OrderDetailDTO> orderReturn(int orderN);

	//void insertOrderdetail(OrderDTO order);

}

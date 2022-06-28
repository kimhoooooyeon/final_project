package com.spring.project.food.review;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.spring.project.food.shop.ShopDTO;

@Repository
public interface IReviewDAO {

	ArrayList<ReviewDTO> reList();
	
	ArrayList<ReviewDTO> valueList();

	ArrayList<ReviewDTO> selList(String shop_id);
	
//	int reviewRegist(int member_num, int shop_num, int order_num, String review_content);

	int reviewRegist(ReviewDTO reviewDto);

	int reviewCheckUp(ReviewDTO reviewDto);
}

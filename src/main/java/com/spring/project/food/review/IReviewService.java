package com.spring.project.food.review;

import java.util.ArrayList;

import com.spring.project.food.shop.ShopDTO;

public interface IReviewService {

	ArrayList<ReviewDTO> reList();
	
	ArrayList<ReviewDTO> valueList();
	
	ArrayList<ReviewDTO> sReview(String shop_id);

//	int reviewRegister(int member_num, int shop_num, int order_num, String review_content);

	int reviewRegister(ReviewDTO reviewDto);

	int reviewCheckUp(ReviewDTO reviewDto);



}

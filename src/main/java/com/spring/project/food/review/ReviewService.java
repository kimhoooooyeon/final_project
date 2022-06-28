package com.spring.project.food.review;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.project.food.shop.ShopDTO;

@Service
public class ReviewService implements IReviewService {

	@Autowired(required = false) IReviewDAO reDao;

	@Override
	public ArrayList<ReviewDTO> reList() {
		ArrayList<ReviewDTO> reList = reDao.reList();
		return reList;
	}
	
	@Override
	public ArrayList<ReviewDTO> valueList(){
		ArrayList<ReviewDTO> valueList = reDao.valueList();
		return valueList;
	}
	
	
	@Override
	public ArrayList<ReviewDTO> sReview(String shop_id) {
		ArrayList<ReviewDTO> sReview = reDao.selList(shop_id);
		return sReview;
	}

//	@Override
//	public int reviewRegister(int member_num, int shop_num, int order_num, String review_content) {
//		int count = reDao.reviewRegist(member_num,shop_num,order_num,review_content );
//		return count;
//	}

	@Override
	public int reviewRegister(ReviewDTO reviewDto) {
		int count = reDao.reviewRegist(reviewDto);
		return count;
	}
	@Override
	public int reviewCheckUp(ReviewDTO reviewDto) {
		int reviewCheck = reDao.reviewCheckUp(reviewDto);
		return reviewCheck;
	}
	
	

}

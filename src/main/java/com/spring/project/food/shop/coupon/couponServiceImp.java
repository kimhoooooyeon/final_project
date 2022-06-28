package com.spring.project.food.shop.coupon;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.project.food.shop.menu.CategoryDTO;

@Service
public class couponServiceImp implements ICouponService {
	
	@Autowired HttpSession session;
	@Autowired(required = false) ICouponDAO couponDao;
	
	@Override
	public String couponNumCreate(){

		// 실행 시 8자리 쿠폰 생성
		int couponSize = 20;
		final char[] possibleCharacters = {'1','2','3','4','5','6','7','8','9','0',
										   'A','B','C','D','E','F','G','H','I','J',
										   'K','L','M','N','O','P','Q','R','S','T',
										   'U','V','W','X','Y','Z'};
		
		final int possibleCharacterCount = possibleCharacters.length;
		String[] arr = new String[couponSize];
		Random random = new Random();
		int currentIndex = 0;
		int i = 0;
		while (currentIndex < couponSize) {
			StringBuffer buf = new StringBuffer(16);
			for (i = 8; i > 0; i--) {
				buf.append(possibleCharacters[random.nextInt(possibleCharacterCount)]);
			}
			String coupon_num = buf.toString();
			System.out.println("쿠폰 번호 출력 : "+coupon_num);
			arr[currentIndex] = coupon_num;
			currentIndex++;
		}
		
		return "";
	}
	//쿠폰 찾기
	@Override
	public ArrayList<CouponDTO> couponSearch(SearchDTO search) {
//		Integer shop_num = (String) session.getAttribute("shop_num");
		Integer shop_num = 1;
		search.setShop_num(shop_num);
		ArrayList<CouponDTO> couponlist = couponDao.couponSearch(search);
		return couponlist;
	}
	// 쿠폰 등록
	@Override
	public String couponRegister(CouponDTO coupon) {
		// 1번 조건
		if (coupon.getCoupon_name() == null || coupon.getCoupon_name().isBlank()) {
			return "쿠폰명을 입력해주세요.";
		}
		// 2번조건 
		if (coupon.getCoupon_num() == null) {
			return "쿠폰 번호를 입력해주세요.";
		}
//		Integer shop_num = (Integer)session.getAttribute("shop_num");
		Integer shop_num = 1;
		coupon.setShop_num(shop_num);
		int result = couponDao.couponRegister(coupon);
		
		if (result == 1) {
			return "쿠폰이 성공적으로 등록되었습니다.";
		}
		else {
			return "관리자에게 문의해주세요";
		}
	}

	@Override
	public String couponUpdate(CouponDTO coupon) {
		System.out.println("menuUpdate서비스실행");
		String msg;
		// 1번조건
		if (coupon.getCoupon_name() == null) {
			msg ="쿠폰명은 반드시 입력하셔야합니다.";
			return msg;
		}
		// 2번조건
		if (coupon.getCoupon_num() == null) {
			msg="쿠폰 번호는 반드시 입력하셔야합니다.";
		}
		// 삽입전 상점정보를 가져와야함
//		String shop_id = (String) session.getAttribute("shop_id");
		// 형변환된값 변환해주기 
//		Integer price = Integer.parseInt(menu.getMenu_price());
//		Integer sale_rate = Integer.parseInt(menu.getSale_rate());
//		menu.setMenu_price(price);
		int result = couponDao.couponUpdate(coupon);
		
		if (result == 1) {
			msg="쿠폰 수정이 완료되었습니다.";
		}
		else {
			msg="수정실패, 관리자에게 문의해주세요";
		} 
		return msg;
	}

	@Override
	public String couponDelete(String member_id) {
		//입력값검증 
		//1번 조건 : 값이 제대로 넘어왔는지 확인
		if(member_id == null) {
			return "값이 선택되지 않았습니다.";
		}
		//통과하면 DB에 결과
		int result = couponDao.couponDelete(member_id);
		
		if (result == 1) {
			return "쿠폰이 삭제되었습니다.";
		}
		else {
			return "알수없는 오류가 발생하였습니다. 관리자에게 문의하세요.";
		}
	}
	public ArrayList<CouponDTO> categoryLoad() {
		System.out.println("categoryLoad()함수 수행");
//		Integer shop_num = (Integer)session.getAttribute("shop_num");
		Integer shop_num = 1;
		ArrayList<CouponDTO> list = couponDao.categoryLoad(shop_num);
		System.out.println("디비실행했나?");
		System.out.println("디비에서받은 결과 : "+ list);
		//결과물 확인하기위한 스텁코드
		
		System.out.println("입력됬던 shop_num : " + shop_num);
		System.out.println("list의 길이는 :" + list.size());
		for (int i = 0; i <= list.size(); i++) {
			System.out.println("반환값은 : " + list);
			
		}
		return list;
	}
	public ArrayList<CouponDTO> couponList() {

//		Integer shop_num = (Integer)session.getAttribute("shop_num");
		Integer shop_num = 1;
		ArrayList<CouponDTO> list = couponDao.couponList(shop_num);
		return list;
	}

}

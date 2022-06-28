package com.spring.project.food.shop.coupon;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop/coupon")
public class CouponController {
	
	@Autowired couponServiceImp couponSvc;
	// 쿠폰 페이지 홈 
	@RequestMapping("/home")
	public String home(Model model) {
		return "shop/coupon/shop_coupon";
	}
	// 쿠폰 등록 
	@RequestMapping("/register")
	public String register() {
		return "shop/coupon/shop_coupon_register";
	}
	// 쿠폰 등록 
	@PostMapping("/register")
	public String register(CouponDTO coupon ,Model model) {
		return "shop/coupon/shop_coupon_register";
	}
	// 쿠폰 번호 생성
	@RequestMapping("/issuance")
	public String issuance() {
//		// 실행 시 8자리 쿠폰 생성
//		int couponSize = 20;
//		final char[] possibleCharacters = {'1','2','3','4','5','6','7','8','9','0',
//										   'A','B','C','D','E','F','G','H','I','J',
//										   'K','L','M','N','O','P','Q','R','S','T',
//										   'U','V','W','X','Y','Z'};
//		
//		final int possibleCharacterCount = possibleCharacters.length;
//		String[] arr = new String[couponSize];
//		Random random = new Random();
//		int currentIndex = 0;
//		int i = 0;
//		while (currentIndex < couponSize) {
//			StringBuffer buf = new StringBuffer(16);
//			for (i = 8; i > 0; i--) {
//				buf.append(possibleCharacters[random.nextInt(possibleCharacterCount)]);
//			}
//			String coupon_num = buf.toString();
//			System.out.println("쿠폰 번호 출력 : "+coupon_num);
//			arr[currentIndex] = coupon_num;
//			currentIndex++;
//		}
		return "shop/coupon/shop_coupon_register";
	}
	// 쿠폰 수정
	@PostMapping("/update")
	public String update(Model model) {
		return "shop/coupon/shop_coupon_update";
	}
	// 쿠폰 삭제 
	@PostMapping("/delete")
	public String delete(Model model) {
		return "shop/coupon/shop_coupon_delete";
	}
	// 쿠폰 검색
	@PostMapping("/result")
	public String result(Model model,HttpSession session) {
		System.out.println("쿠폰리스트 리퀘스트목록확인");
		ArrayList<CouponDTO> list = couponSvc.categoryLoad();
		System.out.println("입력받은 값 : " + list);
		model.addAttribute("couponlist", list);
		System.out.println("모델에 담긴값" + model.getAttribute("couponlist"));
		return "shop/coupon/shop_coupon";
	}
	// 쿠폰 목록 보여주기
	@RequestMapping("/result")
	public String couponList(Model model) {
		return "shop/coupon/coupon_result";
	}
}

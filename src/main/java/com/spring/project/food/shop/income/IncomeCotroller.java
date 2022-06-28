package com.spring.project.food.shop.income;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/shop/income")
public class IncomeCotroller {

	@Autowired IncomeService incomeSvc;
	
	// 매출페이지 홈
	@RequestMapping("/home")
	public String home(Model model) {
		return "shop/income/shop_income";
	}
	
	// 매출 조건별 검색하기 페이지 
	@RequestMapping("/search")
	public String search(Model model) {
		return "shop/income/shop_income";
	}
	
	// 매출 조건별 검색하기 실행
	@PostMapping("/search")
	public String search(Model model, IncomeSearchDTO search) {
		System.out.println("컨트롤러의 search함수 실행");
		System.out.println("넘겨받은 검색값 : " +search);
		if (search == null) {
			return "값을 입력해주세요";
		}
		ArrayList<IncomeDTO> incomelist = incomeSvc.search(search);
		//
		System.out.println("db에서 받은 값 : "+incomelist);
		model.addAttribute("incomelist", incomelist);
		model.addAttribute("test", "test");
//		model.addObject("incomelist", incomelist);
		return "shop/income/shop_income";
	}
	
	// 매출 일별보기
	@RequestMapping("/daily")
	public String viewDaily(Model model) {
		return "shop/income/shop_income_daily";
	}
	// 매출 주별보기
	@RequestMapping("/weekly")
	public String viewWeekly(Model model) {
		return "shop/income/shop_income";
	}
	// 매출 달별보기
	@RequestMapping("/monthly")
	public String viewMonthly(Model model) {
		return "shop/income/shop_income_monthly";
	}
}

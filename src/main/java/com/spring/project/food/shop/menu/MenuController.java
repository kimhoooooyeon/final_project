package com.spring.project.food.shop.menu;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/shop/menu")
public class MenuController {

	@Autowired(required = false) MenuService menuSvc;
	String emptymsg="값을 입력해주세요.";
	
	// 상품등록 페이지보여주기
	@RequestMapping("/home")
	public String home(Model model) {
		ArrayList<CategoryDTO> categorylist = menuSvc.categoryLoad();
		model.addAttribute("categorylist", categorylist);
		return "shop/menu/shop_menu";
	}
	
	// 상품등록 페이지보여주기
	@RequestMapping("/register")
	public String menuRegister(Model model) {
		ArrayList<CategoryDTO> categorylist = menuSvc.categoryLoad();
		model.addAttribute("categorylist", categorylist);
		return "shop/menu/shop_register";
	}
	
	// 상품등록 실행
	@PostMapping("/register")
	public String menuRegister(Model model, MenuDTO menu) {
		// 메뉴에 등록할 값을 입력했는지 확인
		String msg;
		if (menu == null) {
			msg=emptymsg;
			return msg; 
		}
		//메뉴를 입력했을 경우 입력동작 수행
		msg = menuSvc.menuRegister(menu);
		model.addAttribute("msg", msg);
		
		return "shop/menu/shop_menu";
	}
		
	// 상품 목록보여주기
	@RequestMapping("/list")
	public String menuList(Model model) {
		System.out.println("menuList함수실행");
		ArrayList<CategoryDTO> categorylist = menuSvc.categoryLoad();
		ArrayList<MenuDTO> menulist = menuSvc.menuList();
		model.addAttribute("categorylist", categorylist);
		model.addAttribute("menulist", menulist);
		return "shop/menu/shop_menu";
	}
//	@ResponseBody
//	@PostMapping(value="menuSearch",produces = "application/json; charset-utf-8")
	@PostMapping("/list")
//	public String menuSearch(Map<String, ArrayList<String>> search, Model model) {
	public String menuSearch(SearchDTO search, Model model) {
		String msg;
		// 테스트 로직
		System.out.println("menuSearch컨트롤러 실행");
		System.out.println("search : " + search);
		
		// 값을 입력했는지 확인
		if (search == null ) {
			msg = emptymsg;
		}
		
		// 값을 입력했을경우 로직 실행
		ArrayList<MenuDTO> menulist = new ArrayList<MenuDTO>();
		menulist = menuSvc.menuSearch(search);
		ArrayList<CategoryDTO> categorylist = menuSvc.categoryLoad();
		model.addAttribute("categorylist", categorylist);
		model.addAttribute("menulist", menulist);
		System.out.println("컨트롤로가 받은 결과 : "+menulist);
		
		return "shop/menu/shop_menu";
	}
	
	// 메뉴수정
	@PostMapping(value="/update", produces="application/json; charset=utf-8")
	@ResponseBody
	public String menuUpdate(@RequestBody MenuDTO menulist, Model model) {
		System.out.println("menuupdatePost실행");
		System.out.println(menulist);
		
		String msg="";
		
		if (menulist == null) {
			msg ="필수입력정보를 다 입력해주세요.";
			return msg;
		}
		
		msg = menuSvc.menuUpdate(menulist);
		
		return msg;
	}
	// 메뉴삭제
	@PostMapping(value="/delete", produces="application/json; charset=utf-8")
	@ResponseBody
	public String menuDelete(@RequestBody Map<String, String> data) {
		System.out.println("delete 서비스함수실행");
		System.out.println("넘겨받은값 :" + data);
		String menu_coder = data.get("menu_coder");
		System.out.println("menu_coder : " +menu_coder);
		if(menu_coder == null) return "값을 선택하세요.";
		String msg =menuSvc.menuDelete(menu_coder);
		return "msg";
	}

}

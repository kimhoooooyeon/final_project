package com.spring.project.food;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.project.food.member.MemberService;
import com.spring.project.food.shop.ShopDTO;
import com.spring.project.food.shop.menu.MenuDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired MemberService memberService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	// /home
	@RequestMapping(value = "home")
	public void home() {
	}
	
	// /
	@RequestMapping(value = "/")
	public String index(Model model) {
		return "home";
	}
	
	@RequestMapping(value = "login")
	public String login() {
		return "member/member_login";
	}
	
	@RequestMapping(value = "member")
	public String member() {
		return "member/member_register";
	}
	
	
	@RequestMapping(value = "shop_home")
	public String shop_home() {
		return "shop/shop_home";
	}
	
	@RequestMapping(value = "index2")
	public String index2() {
		return "index2";
	}
	
	
	@RequestMapping(value = "index4")
	public String index4() {
		return "index4";
	}
	
	@RequestMapping(value = "profile")
	public String profile() {
		return "profile";
	}
	


	
	
	
	
	
	
	

	
}

package com.spring.project.food.shop;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.filefilter.FalseFileFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/shop")
public class ShopController {
	private String emptyMsg="값을 입력하셔야합니다.";
	@Autowired(required = false) private ShopService shopSvc;
	@Autowired(required = false) private MessageServie messageSvc;
	
	//상점부분 메인사이트
	@RequestMapping("/home")
	public String home() {
		return "shop/shop_home";
	}
	// 상점부분 헤더
	@RequestMapping("/top")
	public String top() {
		return "shop/shop_top";
	}
	// 상점페이지 사이드바
	@RequestMapping("/sidebar")
	public String sidebar() {
		return "shop/common/shop_sidebar";
	}

	// 상점부분 footer
	@RequestMapping("/footer")
	public String footer() {
		return "shop/shop_footer";
	}
	
	// 상점로그인
	@RequestMapping("/login")
	public String login() {
		return "shop/shop_login";
	}
	//로그인
	@PostMapping("/login")
	public String login(Model model, ShopLoginDTO loginDto) {
		System.out.println("로그인포스트 함수실행");
		// 값을 입력했는지 확인
		if (loginDto == null) {
			String msg = "값을입력하세요.";
			model.addAttribute("msg", msg);
			return "shop/shop_login";
		}
		
		// 입력했으면 로그인 체크
		String msg = shopSvc.loginCheck(loginDto);
		if(msg == "로그인 성공") {
		model.addAttribute("msg", msg);
		return "shop/shop_home";
		}
		
		model.addAttribute("msg", msg);
		return "shop/shop_login";
	}
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "shop/shop_home";
	}
	
	// 상점 회원가입
	@RequestMapping("/register")
	public String register(Model model) {
		System.out.println("get register 호출");
		return "shop/shop_register";
	}
	
	//회원가입
	@PostMapping("/register")
	public String register(Model model, ShopDTO shop) {
		System.out.println("post register 호출");
		// 값을 입력했는지확인
		if (shop == null) {
			String msg ="값을 입력하셔야합니다.";
			model.addAttribute("msg", msg);
			
			return "shop/shop_register";
		}
		System.out.println("전달받은 값: "+shop.toString());
		
		String msg=shopSvc.register(shop);
		model.addAttribute("msg", msg);
		if (msg.equals("회원가입이 완료되었습니다.")) {
			return "forward:/login";
		}
		// 추후 리다이렉트로 로그인화면으로 넘기기
		return "/shop_register";
	}
	// id중복확인
	@ResponseBody
	@PostMapping(value="/check/id", produces="application/json; charset=utf-8")
	public String isExistId (@RequestBody Map<String, String> data ) {
		System.out.println("아이디 중복확인 실행");
		System.out.println("입력받은 값 : " + data);
		String shop_id=data.get("shop_id");
		String msg = shopSvc.isExistId(shop_id);
		return msg;
	}
	// 사업자 번호 중복확인
	@PostMapping("/check/number")
	public String isExistNumber() {
		return ""; 
	}
	// 비밀번호 보내주기
	public String sendPw(){
		String msg="";
		return "";
	}
	// 문자로 인증메세지보내기
	@ResponseBody
	@PostMapping(value="/sendsms",produces="application/json; charset=utf-8" )
	public String sendSms(@RequestBody Map<String, String> data) {
		System.out.println("컨트롤러의 문자 전송 함수 호출");
		String toNumber = data.get("owner_phone");
		System.out.println("입력받은 값은 : " + toNumber);
		int result = messageSvc.sendMessage(toNumber);
		
		String msg="";
		if (result == 0) {
			msg = "메세지가 성공적으로 발송되었습니다. 인증번호를 확인하세요.";
		}
		else {
			msg = "메세지 전송이 실패하였습니다. 휴대폰번호를 확인하세요";
		}
		
		
		
		return msg;
	}
	
	// 입력받은 인증번호확인
	@ResponseBody
	@PostMapping(value="/smsconfirm",produces="application/json; charset=utf-8" )
	public String sendConfirm(@RequestBody Map<String, String> data) {
		System.out.println("컨트롤러의 문자 전송 함수 호출");
		System.out.println("입력받은 값은 : " + data);
		String veri_code=data.get("veri_code");
		if (veri_code == null) {
			return "인증번호를 입력해주세요.";
		}
		String msg = messageSvc.snsConfirm(veri_code);
		return msg;
	}

	// id중복확인
	@ResponseBody
	@PostMapping(value="/check/orn", produces="application/json; charset=utf-8")
	public String isExistOrn (@RequestBody Map<String, String> data ) {
		System.out.println("아이디 중복확인 실행");
		System.out.println("입력받은 값 : " + data);
		String owner_register_number=data.get("owner_register_number");
		String msg = shopSvc.isExistOrn(owner_register_number);
		return msg;
	}
	
	// 상점 id찾기
	@RequestMapping("/idsearch")
	public String idSearch() {
		return "shop/shop_idsearch";
	}
	
	// 상점 pw찾기
	@RequestMapping("/pwsearch")
	public String pwSearch() {
		return "shop/shop_pwsearch";
	}
	
}

package com.spring.project.food.member;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.spring.project.food.order.IOrderService;
import com.spring.project.food.order.OrderDAO;
import com.spring.project.food.order.OrderDTO;
import com.spring.project.food.order.OrderService;
import com.spring.project.food.shop.ShopDTO;
import com.spring.project.food.shop.menu.MenuDTO;

@Controller
public class MemberController {
	@Autowired MemberService memberService;
	@Autowired OrderService orderService;
	@Autowired(required = false) JavaMailSender mailSender;
	
	@PostMapping(value = "isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistId(@RequestBody(required = false) String member_id) {
		String msg = memberService.isExistId(member_id);
		return msg;
	}
	
	@RequestMapping(value = "memberProc")
	public String memberProc(MemberDTO member, Model model, RedirectAttributes ra) {
		String msg = memberService.memberProc(member);
		
		if(msg.equals("가입완료")) {
			ra.addFlashAttribute("msg", msg);
			return "home";
		}else {
			model.addAttribute("msg", msg);
			return "forward:member";
		}
	}
	
	@RequestMapping(value = "loginProc")
	public String loginPorc(LoginDTO member, Model model) {
		String msg = memberService.loginProc(member);
		if(msg.equals("로그인 성공")) {
			return "redirect:/home";
		}
			model.addAttribute("msg", msg);
			return "forward:/login";
		}
	
	@RequestMapping(value = "logout")
	public String logout(Model model, HttpSession session) {
		session.invalidate();
		
		return "forward:/home";
	}
	
    /* NaverLoginBO */
    private NaverLoginBO naverLoginBO;
    private String apiResult = null;
    
    @Autowired
    private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
        this.naverLoginBO = naverLoginBO;
    }
 
    //로그인 첫 화면 요청 메소드
    @RequestMapping(value = "login", method = { RequestMethod.GET, RequestMethod.POST })
    public String login(Model model, HttpSession session) {
        
        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
        System.out.println("네이버:" + naverAuthUrl);
        
        //네이버 
        model.addAttribute("url", naverAuthUrl);
 
        /* 생성한 인증 URL을 View로 전달 */
        return "member/member_login";
    }
 
    //네이버 로그인 성공시 callback호출 메소드
    @RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
            throws IOException {
        System.out.println("여기는 callback");
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //로그인 사용자 정보를 읽어온다.
        apiResult = naverLoginBO.getUserProfile(oauthToken);
        model.addAttribute("result", apiResult);
 
        /* 네이버 로그인 성공 페이지 View 호출 */
        return "naverSuccess";
    }

	
	@RequestMapping(value = "/orderHistory")
	public String orderHistory(Model model, HttpSession session) {
		String member_id = (String) session.getAttribute("id");
		ArrayList<OrderDTO> hiList = orderService.hiList(member_id);
		
		for(OrderDTO r : hiList) {
			String chday = r.getDay().substring(0, 10); 
			r.setDay(chday);
		}
		
		model.addAttribute("hiList", hiList);
		return "member/orderHistory";
	}
	
	@RequestMapping(value = "member_info")
	public String memberinfo() {
		return "member/member_info";
	}
	

	@RequestMapping(value = "/findid")
	public String findid() {
		return "/member/findid";
	}
	

	
	@RequestMapping(value = "findpw")
	public String findpw() {
		return "member/findpw";
	}
	
	
	@GetMapping(value = "/findpw")//경로에 있는 변수 //가져와서 문자열로 저장
	public ModelAndView findPwGet(ModelAndView mv) {
		mv.setViewName("/member/findpw");
		return mv;
	}
	@ResponseBody
	@GetMapping(value = "/findpw/{id}")//경로에 있는 변수 //가져와서 문자열로 저장
	public String findPwGet(@PathVariable("member_id") String member_id) {
		System.out.println(member_id);
		MemberDTO member = memberService.getMember(member_id);
		if(member == null)
			return "FAIL";

		 try {
		        MimeMessage message = mailSender.createMimeMessage();
		        MimeMessageHelper messageHelper 
		            = new MimeMessageHelper(message, true, "UTF-8");
		        //임시 비밀번호 발급
		        String newPw = newPw();
		        //새 비밀번호를 디비에 저장
		        member.setPw(newPw);
		        memberService.updateMember(member);

		        messageHelper.setFrom("abc@naver.com");  // 보내는사람 생략하거나 하면 정상작동을 안함
		        messageHelper.setTo(member.getEmail());     // 받는사람 이메일
		        messageHelper.setSubject("새 비밀번호를 발급합니다."); // 메일제목은 생략이 가능하다
		        messageHelper.setText("","발급된 새 비밀번호는 <b>" + newPw + "</b>입니다.");  // 메일 내용

		        mailSender.send(message);
		        return "SUCCESS";
		        //System.out.println(message);
		    } catch(Exception e){
		        System.out.println(e);
		    }
			return "FAIL";
	}
	//8자리의 숫자 or 영어 대소문자로 된 비밀번호
	private String newPw() {
		// 랜덤숫자 : 0~9 => 문자열 : 0~9
		// 랜덤숫자 : 10~35 => 문자열 a~z
		// 랜덤숫자 : 36~61 => 문자열 : A~Z 
		//12 => c
		String pw="";
		int max = 61, min = 0;
		for(int i=0; i<8; i++) {
			int r = (int)(Math.random()*(max-min+1)) + min;
			//int r = (int)(Math.random()*62);
			if(r<=9) {
				pw += r;
			}else if( r<=35) {
				pw += (char)('a'+(r-10));
			}else {
				pw += (char)('A'+(r-36));
			}
		}
		return pw;
	}
	@GetMapping(value = "/findid")//경로에 있는 변수 //가져와서 문자열로 저장
	public ModelAndView findIdGet(ModelAndView mv) {
		mv.setViewName("/member/findid");
		return mv;
	}
	@ResponseBody
	@PostMapping(value = "/findid")
	public String findIdPost(String email) {
		System.out.println(email);
		ArrayList<MemberDTO> userList = memberService.getMemberByEmail(email);
		if(userList == null || userList.size() == 0)
			return "FAIL";
		 try {
			 	ArrayList<String> idList = new ArrayList<String>();
			 	for(MemberDTO member : userList) {
			 		idList.add(member.getMember_id());
			 	}
		        MimeMessage message = mailSender.createMimeMessage();
		        MimeMessageHelper messageHelper 
		            = new MimeMessageHelper(message, true, "UTF-8");

		        messageHelper.setFrom("abc@naver.com");  // 보내는사람 생략하거나 하면 정상작동을 안함
		        messageHelper.setTo(email);     // 받는사람 이메일
		        messageHelper.setSubject("가입된 아이디를 안내드립니다."); // 메일제목은 생략이 가능하다
		        messageHelper.setText("","가입된 아이디는 <b>" + idList.toString().replaceAll("[\\[\\]]","") + "</b>입니다.");  // 메일 내용 |  대괄호 제외하고 보내기

		        System.out.println(idList + "" + message);
		        mailSender.send(message);
		        return "SUCCESS";
		    } catch(Exception e){
		        System.out.println(e);
		    }
			return "FAIL";
	}
	
	

}

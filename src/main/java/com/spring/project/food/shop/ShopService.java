package com.spring.project.food.shop;

import java.io.File;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class ShopService {
	@Autowired(required = false) private IShopDAO shopDao;
	@Autowired public HttpSession session;
	@Autowired private JavaMailSender mailSender;

	// 비동기 통신을 위함 함수들
	
	// 이메일 전송
	public String sendAuth(String email) {
		// 1. 이메일 입력햇는지 확인
		// 2. 이메일 입력햇으면 인증번호전송
		String result = "";
		if (email.isEmpty() || email == null) {
			result = "이메일을 입력해주세요";
		}
		else {
			Random r = new Random();
			String sendNumber = String.format("%06d", r.nextInt(1000000));
			System.out.println("인증번호 : "+sendNumber);
			
			sendMail(email,"인증번호",sendNumber);
			
			result = "인증번호 전송";
			session.setAttribute("sendNumber", sendNumber);
		}
		return result;
	}
	public void sendMail(String to, String subject, String content) {
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper;
		try {
			messageHelper = new MimeMessageHelper(message, true, "utf-8");
			// 이메일의 제목
			messageHelper.setSubject(subject);	//이메일 제목
			messageHelper.setText(content);	// 이메일 본문
			messageHelper.setTo(to);	// 수신자
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		mailSender.send(message);
	}
	// 이메일 인증함수
	public String sendConfirm(String authNum) {
		// 1. 인증번호 입력했는지확인
		// 2. 입력한 인증번호와 비교
		
		// 1. 인증번호 입력했는지확인
		if (authNum.isEmpty() || authNum == null) {
			return "인증번호를 입력하세요";
		}
		// 2. 입력한 인증번호와 비교
		String result = "";
		String sendNumber = (String) session.getAttribute("sendNumber");
		if (authNum.equals(sendNumber)) {
			session.setAttribute("auth", "true");
			result = "인증성공";
		}
		else {
			session.setAttribute("auth", "false");
			result = "인증실패";
		}
		return result;

	}
	
	// 회원가입
	public String register(ShopDTO shop) {
		System.out.println("ShopSvc내의 register함수 실행");
		
		
		// 검증조건
		// 1. 필수정보 입력했는지
		// 필수 정보 : 아이디 비밀번호 사업자번호 사업주명 사업자휴대폰번호 가게이름 가게주소 업종카테고리
		// 2. 중복된 아이디가 있는지
		// 3. 두 비밀번호가 일치한지
		// 4. 인증정보를 다 성공했는지
		
		// 1번조건
		if(shop.getShop_id().isEmpty() || shop.getShop_id() == null) {
			return "ID를 입력해주세요";
		}
		if(shop.getShop_pw().isEmpty() || shop.getShop_pw() == null){
			return "PW를 입력해주세요";
		}
		if(shop.getOwner_register_number().isEmpty() || shop.getOwner_register_number() == null){
			return "사업자번호를 입력해주세요";
		}
		if(shop.getShop_name().isEmpty() || shop.getOwner_name() == null){
			return "상점이름를 입력해주세요";
		}
		if(shop.getOwner_phone().isEmpty() || shop.getOwner_phone() == null){
			return "휴대폰번호를 입력해주세요";
		}
		if(shop.getOwner_email().isEmpty() || shop.getOwner_email() == null){
			return "이메일을 입력해주세요";
		}
		if(shop.getShop_name().isEmpty() || shop.getShop_name() == null){
			return "상점이름를 입력해주세요";
		}
		if(shop.getShop_address().isEmpty() || shop.getShop_address() == null){
			return "상점주소를 입력해주세요";
		}
		if(shop.getCategory_num().isEmpty() || shop.getCategory_num() == null){
			return "상점카테고리를 입력해주세요";
		}
		
		//2번조건
		if (!shop.getShop_pw().equals(shop.getShop_pwCheck())) {
			return "비밀번호가 일치하지 않습니다.";
		}
		//3번조건 중복값체크
		ShopDTO checkShop = shopDao.selectOne(shop.getShop_id());
		if (checkShop != null) {
			return "중복된 아이디입니다.";
		}
		System.out.println("3번조건 통과");
		
		//4번조건 중복값체크버튼을 다 통과했는지
		String idCheck= (String) session.getAttribute("idCheck");
		String ornCheck= (String) session.getAttribute("ornCheck");
		String smsauth= (String) session.getAttribute("smsauth");
		String smssend= (String) session.getAttribute("smssend");
		
		System.out.println("idCheck : " + idCheck);
		System.out.println("ornCheck : " + ornCheck);
//		System.out.println("smsauth : " + smsauth);
//		System.out.println("smssend : " + smssend);
		
//		if ( !idCheck.equals("true") || !ornCheck.equals("true") || !smsauth.equals("true") || !smssend.equals("true") )
		
		
		if ( !idCheck.equals("true") || !ornCheck.equals("true") ) {
			return "인증을 받으셔야합니다.";
		}
		
		System.out.println("4번 조건 통과");
		// 4번조건
		
		// 모든조건 성공햇으면 비밀번호 암호화 후 db에 삽입
		
		// 비밀번호 암호화
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(shop.getShop_pw());
		shop.setShop_pw(securePw);
		
		//이미지파일 입력안햇을경우 디폴트값
		if (shop.getShopLogoImg() == null) {
			shop.setShop_logo("1.png");
		}
		
		
		
		// 파일업로드 관련 코드
		// 이부분이 이름출력하는것은 db삽입전에 하고
		// 성공하면 파일을 올리는게 맞다고 생각함
		// 파일관련해서 파일변경
		try {
			// 파일명 추출
			String shop_logo = shop.getShopLogoImg().getOriginalFilename();
			shop.setShop_logo(shop_logo);
			// 파일 경로 설정
			String uploadFolder = "C:\\final_project\\shop";
			System.out.println("파일이름 : " +shop_logo);
			
			File saveFile = new File(uploadFolder+"\\"+shop_logo);
			shop.getShopLogoImg().transferTo(saveFile);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("삽입전 값은 : "+shop);
		
		int result = shopDao.insert(shop);
		if (result == 1) {
			// 인증관련 세션 날리고
			session.invalidate();
			//추후에 필요한 세션적용
			session.setAttribute("shop_id", shop.getShop_id());
			session.setAttribute("shop_num", shop.getShop_num());
			return "회원가입이 완료되었습니다.";
		}
		// 조건 설정한후 세션에 id값 담은뒤에 성공메세지 출력
		else {
			return "관리자에게 문의하세요.";
			
		}
	}
	
	// 로그인
	public String loginCheck(ShopLoginDTO login) {
		// 검증조건
		// 1번조건 : 아이디 입력했는지
		// 2번조건 : 비밀번호 일치하는지
		
		//1번조건
		if (login.getShop_id().isEmpty() || login.getShop_id() == null) {
			return "아이디를 입력해주세요.";
		}
		else if (login.getShop_pw().isEmpty() || login.getShop_pw()== null){
			return "비밀번호를 입력해주세요";
		}
		else {
			
		}
	
		
		//2번 조건
		String pwCheck=shopDao.selectPw(login.getShop_id());
		if(pwCheck == null) {
			return "비밀번호가 틀렸습니다.";
		}
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		
		if (pwCheck != null && encoder.matches(login.getShop_pw(), pwCheck)) {
			session.setAttribute("id", login.getShop_id());
			// 나중에 여기에 이름도 넣을수있게
			return "로그인 성공";
		}
		else {
			return "아이디/비밀번호를 확인하세요";
		}
		
	}
	public String isExistId(String shop_id) {
		if (shop_id == null) {
			return "ID를 입력해주세요";
		}
		
		int result =shopDao.selectId(shop_id);
		
		if (result == 0) {
			// 추후 벨리데이션 사용하면 날릴코드
			session.setAttribute("idCheck", "true");
			return "아이디가 존재하지않습니다.";
		}
		else {
			// 추후 벨리데이션 사용하면 날릴코드
			session.setAttribute("idCheck", "false");
			return "아이디가 존재합니다.";
		}
		
	}
	public String isExistOrn(String owner_register_number) {
		if (owner_register_number == null) {
			return "ID를 입력해주세요";
		}
		
		int result =shopDao.selectOrn(owner_register_number);
		
		if (result == 0) {
			// 추후 벨리데이션 사용하면 날릴코드
			session.setAttribute("ornCheck", "true");
			return "사업자번호가 존재하지않습니다.";
		}
		else {
			// 추후 벨리데이션 사용하면 날릴코드
			session.setAttribute("ornCheck", "false");
			return "사업자번호가 존재합니다.";
		}
		
	}
	

}

package com.spring.project.food.shop;

import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
@Service
public class MessageServie {
//	@Value("${coolsms.devHee.apikey}")
	private String apiKey = "NCSDPWOT37DQOXNG";
	
//	@Value("${coolsms.devHee.apisecret}")
	private String apiSecret="YWW5OL5NQFK2MCSCMIDZ3FYPMUUUMMAE";
	
//	@Value("${coolsms.devHee.fromnumber}")
	private String fromNumber="010-9198-3628";

	@Autowired public HttpSession session;
	
	public Integer sendMessage(String toNumber) {
	
		Message coolsms = new Message(apiKey, apiSecret);
		

		Random r = new Random();
		String sendNumber = String.format("%06d", r.nextInt(1000000));
		System.out.println("인증번호 : "+sendNumber);
		session.setAttribute("sendNumber", sendNumber);
	
		HashMap<String, String> params = new HashMap<String, String>();
		// 보낼대상 전화번호
		params.put("to", toNumber);
		// 보내는사람 전화번호
		params.put("from", fromNumber);
		// 보내는 타입
		params.put("type", "SMS");
		// 메세지 내용
		params.put("text", "[FinalProject] 인증번호 "+sendNumber+" 를 입력하세요.");
		// 이름이랑 버젼설정
		params.put("app_version", "test app 1.2"); // application name and version
	
		Integer result;
		
		try {
			System.out.println("메세지 전송 실행 try문 진입함");
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
			result = Integer.valueOf(obj.get("error_count").toString());
			// 추후 벨리데이션 사용하면 날릴코드
			session.setAttribute("smssend", "true");
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
			// 추후 벨리데이션 사용하면 날릴코드
			session.setAttribute("smssend", "false");
			return 1;
		}

		return result;


	}
	
	// 전송받은 문자 인증함수
	public String snsConfirm(String authNum) {
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
			session.setAttribute("smsauth", "true");
			result = "인증성공";
		}
		else {
			session.setAttribute("smsauth", "false");
			result = "인증실패";
		}
		return result;

	}	
}

package com.spring.project.food.member;

import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class SmsService {
	
	public String PhoneNumberCheck(String to){
			
			String api_key = "NCSJZGXLSUXYE5VS";
			String api_secret = "GRSZE84MTBMINIBIUFR12L5PSPTJCT59";
			Message coolsms = new Message(api_key, api_secret);
			
		    
			Random rand  = new Random();
		    String numStr = "";
		    for(int i=0; i<4; i++) {
		       String ran = Integer.toString(rand.nextInt(10));
		       numStr+=ran;
		    }          
		
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", "01033378950");    // 수신전화번호 (ajax로 view 화면에서 받아온 값으로 넘김)
		    params.put("from", "01033378950");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
		    params.put("type", "sms"); 
		    params.put("text", "인증번호는 [" + numStr + "] 입니다.");
		    params.put("app_version", "test app 1.2"); // application name and version

			try {
				JSONObject obj = (JSONObject) coolsms.send(params);
				System.out.println(obj.toString());
			} catch (CoolsmsException e) {
				System.out.println(e.getMessage());
				System.out.println(e.getCode());
			}
		        
		    return numStr;
	
	}
	
}

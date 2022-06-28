package com.spring.project.food.member;

import java.util.ArrayList;

import com.spring.project.food.shop.ShopDTO;
import com.spring.project.food.shop.menu.MenuDTO;

public interface IMemberService {
	
	// 중복 확인
	public String isExistId(String member_id);
	
	//회원가입
	String memberProc(MemberDTO member);
	
	String loginProc(LoginDTO login);

	//아래부터 id , pw 찾기
	public ArrayList<MemberDTO> getMemberByEmail(String email);

	MemberDTO getMember(String member_id);

	MemberDTO updateMember(MemberDTO member);



	

}

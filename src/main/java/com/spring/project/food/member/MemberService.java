package com.spring.project.food.member;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.context.annotation.SessionScope;

import com.spring.project.food.shop.ShopDTO;
import com.spring.project.food.shop.menu.MenuDTO;

@Service
public class MemberService implements IMemberService{

	@Autowired(required = false) IMemberDAO memberDao;
	@Autowired HttpSession session;
	
	@Override
	public String isExistId(String member_id) {
		if(member_id == null)
			return "아이디를 입력후 다시 시도하세요";
		int count = memberDao.isExistId(member_id);
		System.out.println(count);
		if(count == 1) {
			return "중복 아이디입니다.";
		}else {
			return "사용 가능한 아이디입니다.";
		}
	}
	
		
	


	@Override
	public String memberProc(MemberDTO member) {
		if(member.getMember_id() == null || member.getMember_id().isEmpty())
			return "아이디를 입력하세요";
		if(member.getPw() == null || member.getPw().isEmpty())
			return "비밀번호를 입력하세요";
		if(memberDao.isExistId(member.getMember_id()) > 0)
			return "중복아이디 입니다.";
		if(member.getPhone() == null || member.getPhone().isEmpty())
			return "핸드폰 번호를 넣고 인증하세요.";
		if(member.getEmail() == null || member.getEmail().isEmpty())
			return "이메일을 입력하세요";
		memberDao.insertMember(member);
		return "가입완료";
			
	}


	@Override
	public String loginProc(LoginDTO login) {
		if(login.getMember_id().isEmpty() || login.getPw().isEmpty())
			return "아이디/비밀번호를 입력하세요";
		
		LoginDTO check = memberDao.loginProc(login);
		
		if(check == null)
			return "아이디를 확인하세요";
		
		if(check == null || login.getPw().equals(check.getPw())) {
			session.setAttribute("id", check.getMember_id());
			session.setAttribute("member_num", check.getMember_num());
			session.setAttribute("zipcode", check.getZipcode());
			session.setAttribute("address", check.getAddress());
			session.setAttribute("address2", check.getAddress2());
			System.out.println(session.getAttribute("member_num"));
			return "로그인 성공";
		}else
			return "로그인 실패";
	}
	
	@Override
	public MemberDTO getMember(String member_id) {
		//다오에게 아이디를 주면서 회원 정보를 가져오라고 시킴
		//가져온 회원 정보를 전달
		
		return memberDao.getMember(member_id);
	}
	@Override
	public MemberDTO updateMember(MemberDTO member) {
		//다오에게 아이디를 주면서 기존 회원 정보를 가져오라고 시킴
		if(member == null) {
			return null;
		}
		MemberDTO dbUser = memberDao.getMember(member.getMember_id());
		String member_id = member.getMember_id();
		String pw = member.getPw();
		//일치하는 회원 정보가 없으면 0을 반환
		if(dbUser == null) {
			return null;
		}
		//기존 회원 정보 중  이메일을 수정할 회원정보의 이메일로 변경
		dbUser.setEmail(member.getEmail());
		//수정할 회원 정보에 비밀번호가 있으면 기존 회원 정보의 비밀번호를 변경
		if(member.getPw()!= null && !member.getPw().equals("")) {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String securePw = encoder.encode(member.getPw());
			member.setPw(securePw);
		}
		
		//다오에게 수정할 회원정보를 주면서 변경하라고 시킴
		if(memberDao.updateMember(member_id, pw) == 0) {
			return null; 
		}return dbUser;
	}

	@Override
	public ArrayList<MemberDTO> getMemberByEmail(String email) {
		if(email == null)
			return null;
		return memberDao.getMemberByEmail(email);
	}






}

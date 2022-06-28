package com.spring.project.food.member;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IMemberDAO {
	void insertMember(MemberDTO member);

	int isExistId(String member_id);

	LoginDTO loginProc(LoginDTO login);
	
	//회원 id , pw 찾기 여기 아래부터
	int updateMember(@Param("member_id")String member_id,@Param("pw")String pw); // 비밀번호 찾기 후 수정작업을 하려면 필요 다시보고 수정작업.
	
	ArrayList<MemberDTO> getMemberByEmail(@Param("email")String email);

	MemberDTO getMember(String member_id);

	
}

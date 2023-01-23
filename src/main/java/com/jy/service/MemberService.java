package com.jy.service;

import com.jy.model.MemberVO;

public interface MemberService {
	
	// 회원가입
	public void memberJoin(MemberVO member);
	
	// 아이디 중복확인
	public int memberIdChk(String memberId);

}

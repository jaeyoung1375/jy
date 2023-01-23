package com.jy.mapper;

import com.jy.model.MemberVO;

public interface MemberMapper {
	
	// 회원가입
	public void memberJoin(MemberVO member);
	
	// 아이디 중복확인
	public int memberIdChk(String memberId);
	
	// 닉네임 중복확인
	public int memberNickNameChk(String memberNickName);

}

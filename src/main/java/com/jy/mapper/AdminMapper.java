package com.jy.mapper;

import java.util.List;

import com.jy.model.MemberVO;

public interface AdminMapper {
	
	/* 회원 목록 */
	public List<MemberVO> MemberList();
	
	/* 회원 상세 페이지 */
	public MemberVO selectOne(String memberId);

}

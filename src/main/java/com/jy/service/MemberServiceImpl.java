package com.jy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.mapper.MemberMapper;
import com.jy.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper memberMapper;

	
	// 회원가입
	public void memberJoin(MemberVO member) {
		
		memberMapper.memberJoin(member);	
	}


	@Override
	public int memberIdChk(String memberId) {
		
		return memberMapper.memberIdChk(memberId);
	}

}

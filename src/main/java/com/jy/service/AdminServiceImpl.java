package com.jy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.mapper.AdminMapper;
import com.jy.model.MemberVO;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;
	
	/* 회원 목록 */
	public List<MemberVO> MemberList(){
		
		List<MemberVO> list = adminMapper.MemberList();
		
		return list;
	}

}

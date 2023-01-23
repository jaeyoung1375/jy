package com.jy.controller;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jy.model.MemberVO;
import com.jy.service.MemberService;


import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	// 로그인 페이지 이동
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginGET() {
		
		return "member/login";
	}
	
	
	
	// 회원가입 페이지 이동
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String joinGET() {
		
		return "member/join";
	}
	
	// 회원가입 기능
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO member) {
		
		memberService.memberJoin(member);
		
		return "redirect:/";
	}
	
	// 아이디 중복검사
	@RequestMapping(value="/memberIdChk", method=RequestMethod.POST)
	@ResponseBody
	public String memberIdChk(String memberId) throws Exception{
		
		log.info("memberIdChk() 진입 " );
		int result = memberService.memberIdChk(memberId);
		System.out.println("result : "+result);
		
		if(result != 0) {
			return "fail";
		}else {
			return "success";
		}
	}
	
	
	
	

}

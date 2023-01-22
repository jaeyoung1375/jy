package com.jy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MemberController {
	
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
	
	

}

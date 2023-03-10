package com.jy.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j
public class HomeController {


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		
		log.info("메인 페이지");
		
		return "main";
	}
	
}

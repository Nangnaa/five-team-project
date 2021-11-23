package com.springboot.fiveteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping("/index")
	public String indexForm() {
		return "index";
	}
	
	@GetMapping("/signin")
	public String loginForm() {
		return "auth/signin";
	}
	
}

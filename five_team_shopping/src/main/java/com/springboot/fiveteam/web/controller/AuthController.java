package com.springboot.fiveteam.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthController {
	
	@GetMapping("/signin")
	public String loginForm() {
		return "auth/signin";
	}
	
	@GetMapping("/myaccount")
	public String myAccountForm() {
		return "auth/myaccount";
	}

}

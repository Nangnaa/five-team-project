package com.springboot.fiveteam.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping({"/", "/index"})
	public String indexForm() {
		return "index";
	}
	/*
	@GetMapping("/signin")
	public String loginForm() {
		return "auth/signin";
	}
	
	@GetMapping("/myaccount")
	public String accountForm() {
		return "myaccount/myaccount";
	}
	*/
	@GetMapping("/order")
	public String orderForm() {
		return "order/order";
	}
	
}

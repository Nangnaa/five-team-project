package com.springboot.fiveteam.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.springboot.fiveteam.domain.cart.CartRepository;
import com.springboot.fiveteam.domain.user.UserRepository;

@Controller
public class OrderController {
	@Autowired
	private CartRepository CartRepository;
	
	@Autowired
	private HttpSession session;
	
	@GetMapping("order/order")
	public String OrderIn() {
		return "order/order";
	}
}
